# Backlog do Projeto - República Fácil

Este documento descreve as funcionalidades planejadas para o Gerenciador de Repúblicas, organizadas em Histórias de Usuário.

---

### Épico: Acesso e Segurança

#### US-01: Cadastro de Novo Usuário
> **Como** um visitante,
> **eu quero** poder me cadastrar no sistema usando meu nome, email, telefone e uma senha,
> **para que** eu possa criar uma conta pessoal e segura na plataforma.

#### US-02: Login de Usuário
> **Como** um usuário cadastrado,
> **eu quero** poder fazer login com meu email e senha,
> **para que** o sistema me identifique e me dê acesso às funcionalidades da minha república.

---

### Épico: Gestão da República e Moradores

#### US-03: Criação de Nova República
> **Como** um usuário recém-cadastrado,
> **eu quero** poder criar uma nova República informando nome e endereço,
> **para que** eu me torne o Administrador e possa começar a gerenciar nosso espaço.

#### US-04: Adição de Morador à República
> **Como** um Administrador,
> **eu quero** poder adicionar um Morador (que já se cadastrou na plataforma) à minha República,
> **para que** ele oficialmente passe a fazer parte do grupo.

#### US-05 (Nova): Cadastro de Quartos
> **Como** um Administrador,
> **eu quero** poder cadastrar os quartos da república (ex: Suíte, Quarto 1, Quarto 2),
> **para que** eu possa associar moradores e despesas específicas (como aluguel) a eles.

#### US-06 (Nova): Associação de Morador a um Quarto
> **Como** um Administrador,
> **eu quero** poder associar um morador a um quarto cadastrado,
> **para que** o sistema saiba quem é responsável por qual espaço e facilite o rateio de despesas variáveis.

---

### Épico: Gerenciamento Financeiro e Despesas

#### US-07 (Antiga HU-05): Registro de Nova Despesa
> **Como** um morador da república,
> **eu quero** registrar uma nova despesa (com descrição, valor, vencimento e categoria),
> **para que** o custo seja dividido entre os moradores.
>
> **Critérios de Aceite (Refinados):**
> - [ ] O sistema deve permitir que o registro seja uma **despesa comum** (dividida por todos) ou uma **despesa específica** (ex: associada a um quarto ou apenas a alguns moradores).

#### US-08 (Antiga HU-06): Visualização de Contas Pessoais a Pagar
> **Como** um morador,
> **eu quero** ver um painel com todas as despesas em aberto que foram atribuídas *a mim* e o status dos meus pagamentos (Pendente, Atrasado),
> **para que** eu saiba exatamente o que preciso pagar.

#### US-09 (Antiga HU-07): Realização de um Pagamento
> **Como** um morador,
> **eu quero** poder marcar uma despesa (minha parte) como paga,
> **para que** o sistema registre meu pagamento e atualize o status para o Administrador.

#### US-10 (Antiga HU-08): Painel Financeiro do Administrador (Mês Atual)
> **Como** um Administrador,
> **eu quero** visualizar um resumo de todas as despesas do mês atual e o status de pagamento de cada morador para cada despesa,
> **para que** eu possa gerenciar as finanças da casa e cobrar quem está devendo.

#### US-11 (Nova): Relatório e Histórico Financeiro
> **Como** um Administrador,
> **eu quero** acessar um histórico de despesas dos meses anteriores,
> **para que** eu possa analisar a evolução dos gastos da república (ex: filtrar por categoria "Luz" ou "Mercado" ao longo do tempo).

---

### Épico: Manutenção e Perfil

#### US-12 (Antiga HU-09): Saída de um Morador da República
> **Como** um Administrador,
> **eu quero** poder registrar a saída de um morador,
> **para que** o sistema o marque como inativo, o desassocie de um quarto e ele não seja incluído em futuras despesas.

#### US-13 (Antiga HU-10): Atualização de Perfil Pessoal
> **Como** um morador,
> **eu quero** poder atualizar minhas informações pessoais (nome, telefone, etc.),
> **para que** meus dados estejam sempre corretos.
