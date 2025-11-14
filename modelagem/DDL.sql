-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;

-- DROP TYPE public."statusdespesa";

CREATE TYPE public."statusdespesa" AS ENUM (
	'VENCIDA',
	'PENDENTE',
	'PAGO');

-- DROP TYPE public."tipodespesa";

CREATE TYPE public."tipodespesa" AS ENUM (
	'LUZ',
	'AGUA',
	'INTERNET',
	'GAS',
	'CONDOMINIO',
	'LIMPEZA',
	'MANUTENCAO',
	'OUTROS');

-- DROP SEQUENCE public.despesas_id_seq;

CREATE SEQUENCE public.despesas_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.membros_id_seq;

CREATE SEQUENCE public.membros_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.pagamentos_id_seq;

CREATE SEQUENCE public.pagamentos_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.quartos_id_seq;

CREATE SEQUENCE public.quartos_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.republicas_id_seq;

CREATE SEQUENCE public.republicas_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.users_id_seq;

CREATE SEQUENCE public.users_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- public.alembic_version definition

-- Drop table

-- DROP TABLE public.alembic_version;

CREATE TABLE public.alembic_version (
	version_num varchar(32) NOT NULL,
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);


-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id serial4 NOT NULL,
	fullname varchar NOT NULL,
	email varchar NOT NULL,
	"password" varchar NOT NULL,
	telephone varchar NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT users_email_key UNIQUE (email),
	CONSTRAINT users_pkey PRIMARY KEY (id),
	CONSTRAINT users_telephone_key UNIQUE (telephone)
);


-- public.republicas definition

-- Drop table

-- DROP TABLE public.republicas;

CREATE TABLE public.republicas (
	id serial4 NOT NULL,
	nome varchar NOT NULL,
	cep varchar NOT NULL,
	rua varchar NOT NULL,
	numero varchar NOT NULL,
	bairro varchar NOT NULL,
	cidade varchar NOT NULL,
	estado varchar NOT NULL,
	user_id int4 NOT NULL,
	complemento varchar NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT republicas_pkey PRIMARY KEY (id),
	CONSTRAINT republicas_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.despesas definition

-- Drop table

-- DROP TABLE public.despesas;

CREATE TABLE public.despesas (
	id serial4 NOT NULL,
	descricao varchar NOT NULL,
	valor_total float8 NOT NULL,
	data_vencimento date NOT NULL,
	categoria public."tipodespesa" NOT NULL,
	republica_id int4 NOT NULL,
	status public."statusdespesa" NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT despesas_pkey PRIMARY KEY (id),
	CONSTRAINT despesas_republica_id_fkey FOREIGN KEY (republica_id) REFERENCES public.republicas(id)
);


-- public.quartos definition

-- Drop table

-- DROP TABLE public.quartos;

CREATE TABLE public.quartos (
	id serial4 NOT NULL,
	numero int4 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	republica_id int4 NOT NULL,
	CONSTRAINT quartos_numero_republica_id_key UNIQUE (numero, republica_id),
	CONSTRAINT quartos_pkey PRIMARY KEY (id),
	CONSTRAINT quartos_republica_id_fkey FOREIGN KEY (republica_id) REFERENCES public.republicas(id)
);


-- public.membros definition

-- Drop table

-- DROP TABLE public.membros;

CREATE TABLE public.membros (
	id serial4 NOT NULL,
	fullname varchar NOT NULL,
	email varchar NOT NULL,
	telephone varchar NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	republica_id int4 NOT NULL,
	quarto_id int4 NULL,
	ativo bool DEFAULT true NOT NULL,
	data_saida timestamp NULL,
	CONSTRAINT membros_pkey PRIMARY KEY (id),
	CONSTRAINT membros_quarto_id_fkey FOREIGN KEY (quarto_id) REFERENCES public.quartos(id),
	CONSTRAINT membros_republica_id_fkey FOREIGN KEY (republica_id) REFERENCES public.republicas(id)
);


-- public.pagamentos definition

-- Drop table

-- DROP TABLE public.pagamentos;

CREATE TABLE public.pagamentos (
	id serial4 NOT NULL,
	valor_pago float8 NOT NULL,
	data_pagamento timestamp DEFAULT now() NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	membro_id int4 NOT NULL,
	despesa_id int4 NOT NULL,
	CONSTRAINT pagamentos_pkey PRIMARY KEY (id),
	CONSTRAINT pagamentos_despesa_id_fkey FOREIGN KEY (despesa_id) REFERENCES public.despesas(id),
	CONSTRAINT pagamentos_membro_id_fkey FOREIGN KEY (membro_id) REFERENCES public.membros(id)
);