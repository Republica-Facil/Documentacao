# Republica-Facil-docs

## República Fácil Docs

Repositório de documentação do sistema República Fácil, contendo especificações técnicas, modelagem de dados, histórias de usuário e protótipos para o ecossistema completo da plataforma de gerenciamento compartilhado de despesas em repúblicas estudantis.

---

## Conteúdo

Este repositório centraliza toda a documentação técnica e funcional do projeto República Fácil:

- **Histórias de Usuário** - Requisitos funcionais e casos de uso
- **Modelagem de Dados** - Estrutura completa do banco de dados PostgreSQL
- **Diagramas UML** - Casos de uso e fluxos do sistema
- **Protótipos de Interface** - Design e experiência do usuário

---

## Histórias de Usuário

O sistema atende ao perfil de **Administrador de República** com 12 histórias de usuário completas, organizadas em 4 grupos funcionais:

- **Autenticação e Conta** (US-01, US-02, US-12) - Cadastro, login e gestão de perfil
- **República e Estrutura** (US-03, US-05, US-06) - Criação de república, quartos e associações
- **Gestão de Moradores** (US-04, US-11) - Adição e remoção de moradores
- **Controle Financeiro** (US-07 a US-10) - Despesas, pagamentos, relatórios com status colorido (🟢 Pago, 🟠 Pendente, 🔴 Atrasado)

**Todas as 12 histórias de usuário estão implementadas ✅**

**[Ver backlog completo com critérios de aceite](./backlog/BACKLOG.md)**

---

## Modelagem de Banco de Dados

O sistema utiliza **PostgreSQL** com uma estrutura relacional completa incluindo:

- 6 tabelas principais (users, republicas, membros, quartos, despesas, pagamentos)
- Tipos ENUM personalizados para status e categorias de despesas
- Relacionamentos com constraints e chaves estrangeiras
- Suporte a soft delete para manter histórico financeiro

**[Ver DDL completo](./modelagem/DDL.sql)**

---

## Diagramas

### Diagrama de Casos de Uso
Ilustra os principais fluxos de interação do administrador com o sistema:

![Diagrama UML de Casos de Uso](./diagramas/UML.png)

---

## Protótipos de Interface

Protótipo navegável completo da aplicação, demonstrando:
- Fluxo de cadastro e autenticação
- Telas de gestão de moradores e quartos
- Interface de registro e acompanhamento de despesas
- Painéis de controle financeiro e relatórios

**[Visualizar Protótipo (PDF)](./prototipos/Protótipo-republica-facil.pdf)**

---

## Repositórios Relacionados

O ecossistema República Fácil é composto por:

| Repositório | Descrição | Tecnologias |
|------------|-----------|-------------|
| republica_facil_backend | API REST com lógica de negócio | FastAPI, PostgreSQL, SQLAlchemy |
| republica_facil_frontend | Interface web do usuário | React, TypeScript |
| **Documentacao** (este repositório) | Documentação central do projeto | Markdown, SQL, UML |

---

## Stack Tecnológica

### Backend
- **Python 3.11+**
- **FastAPI** - Framework web moderno e de alta performance
- **SQLAlchemy** - ORM para Python
- **PostgreSQL** - Banco de dados relacional com suporte a ENUMs

### Frontend
- **React** - Biblioteca JavaScript para interfaces
- **TypeScript** - Superset tipado do JavaScript

### Modelagem
- **SQL DDL** - Scripts de criação de estrutura
- **UML** - Diagramas de casos de uso

---

## Como Usar Esta Documentação

- **Novos Desenvolvedores**: Comece pelo [BACKLOG.md](./backlog/BACKLOG.md) para entender os requisitos funcionais
- **Database Engineers**: Consulte [DDL.sql](./modelagem/DDL.sql) para estrutura completa do banco
- **Designers/UX**: Veja o [protótipo](./prototipos/Protótipo-republica-facil.pdf) para referência visual
- **Product Owners**: Use as histórias de usuário para planejamento e validação

---

## Contribuindo

Contribuições são bem-vindas! Por favor:

1. Crie uma branch a partir de `main`
2. Siga os padrões de documentação estabelecidos
3. Atualize diagramas e especificações conforme necessário
4. Mantenha consistência com as histórias de usuário existentes
5. Abra um Pull Request com descrição clara das mudanças

---

## 📄 Licença

Este projeto está sob licença MIT. Veja o arquivo LICENSE para mais detalhes.

---