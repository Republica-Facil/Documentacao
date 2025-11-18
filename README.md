---

# Republica-Facil-docs

## República Fácil — Documentação Oficial

Repositório central de documentação do **ecossistema República Fácil**, contendo especificações técnicas, modelagem de dados, histórias de usuário, protótipos e diagramas que suportam o desenvolvimento da plataforma de gerenciamento compartilhado de despesas para repúblicas estudantis.

---

## Conteúdo do Repositório

Este repositório organiza **todo o material técnico e funcional** do projeto:

* **Histórias de Usuário** – Requisitos funcionais e casos de uso
* **Modelagem de Dados** – Estrutura completa do banco PostgreSQL
* **Diagramas UML** – Casos de uso e fluxos principais
* **Protótipos de Interface** – Telas e jornadas do usuário

---

## Histórias de Usuário

O sistema foi projetado para o perfil de **Administrador de República**, organizado em 12 histórias distribuídas em 4 módulos funcionais:

### Autenticação e Conta (US-01, US-02, US-12)

Cadastro, login e gerenciamento de perfil do administrador.

### República e Estrutura (US-03, US-05, US-06)

Criação da república, configuração de quartos e associações.

### Gestão de Moradores (US-04, US-11)

Adição, remoção e vínculo de moradores à república.

### Controle Financeiro (US-07 a US-10)

Registro de despesas, divisão automática, pagamentos e relatórios com status:
🟢 Pago • 🟠 Pendente • 🔴 Atrasado

**✔ Todas as 12 histórias de usuário estão documentadas e implementadas.**

**[Acessar backlog completo](./backlog/BACKLOG.md)**

---

## Modelagem de Banco de Dados

A aplicação utiliza **PostgreSQL**, estruturado com:

* 6 tabelas principais
* Tipos ENUM personalizados para status e categorias
* Integridade referencial com chaves estrangeiras
* Relacionamentos mapeados
* Soft delete para histórico financeiro

**[Ver DDL completo](./modelagem/DDL.sql)**

---

## Diagramas

### Casos de Uso

Representação dos principais fluxos do administrador:

<details>
  <summary><strong>Visualizar Diagrama UML de Casos de Uso</strong></summary>

  ![Diagrama UML de Casos de Uso](./diagramas/UML.png)

</details>

---

## Protótipos de Interface

Protótipo completo, demonstrando:

* Fluxo de autenticação
* Gestão de moradores e quartos
* Registro e acompanhamento de despesas
* Painéis financeiros e relatórios

**[Visualizar protótipo (PDF)](./prototipos/Protótipo-republica-facil.pdf)**

---

## 🔗 Repositórios do Ecossistema

| Repositório                         | Descrição                    | Tecnologias                     |
| ----------------------------------- | ---------------------------- | ------------------------------- |
| **republica_facil_backend**         | API REST e regras de negócio | FastAPI, PostgreSQL, SQLAlchemy |
| **republica_facil_frontend**        | Interface web completa       | React, TypeScript               |
| **Documentacao** (este repositório) | Documentação oficial         | Markdown, SQL, UML              |

---

## Stack Tecnológica

### Backend

* Python 3.11+
* FastAPI
* SQLAlchemy
* PostgreSQL

### Frontend

* React
* TypeScript

### Documentação e Modelagem

* Markdown
* SQL DDL
* UML

---

## Licença

Este projeto está licenciado sob **MIT**. Consulte o arquivo `LICENSE` para mais detalhes.

---
