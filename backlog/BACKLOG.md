# Backlog do Projeto - República Fácil

Este documento descreve as funcionalidades planejadas para o Gerenciador de Repúblicas, organizadas em Histórias de Usuário.

---

### Épico: Acesso e Segurança

#### HU-01: Cadastro de Novo Usuário
> **Como** um visitante, 
> **eu quero** poder me cadastrar no sistema usando meu nome, email, telefone e uma senha, 
> **para que** eu possa criar uma conta pessoal e segura na plataforma.
>
> **Critérios de Aceite:**
> - [ ] O sistema deve validar se o email já não está em uso.
> - [ ] A senha deve ter requisitos mínimos de segurança (ex: 8 caracteres).
> - [ ] Após o cadastro, o usuário deve ser redirecionado para a tela de login ou para a criação de uma república.

#### HU-02: Login de Usuário
> **Como** um usuário cadastrado, 
> **eu quero** poder fazer login com meu email e senha, 
> **para que** o sistema me identifique e me dê acesso às funcionalidades da minha república.

---

### Épico: Gerenciamento da República

#### HU-03: Criação de Nova República
> **Como** um usuário recém-cadastrado, 
> **eu quero** poder criar uma nova República informando nome e endereço, 
> **para que** eu me torne o Administrador e possa começar a gerenciar nosso espaço.

#### HU-04: Adição de Morador à República
> **Como** um Administrador, 
> **eu quero** poder adicionar um Morador (que já se cadastrou na plataforma) à minha República, 
> **para que** ele oficialmente passe a fazer parte do grupo e do rateio de despesas.

---

### Épico: Gerenciamento de Despesas

#### HU-05: Registro de Nova Despesa
> **Como** um morador da república, 
> **eu quero** registrar uma nova despesa comum com descrição, valor total, vencimento e categoria, 
> **para que** o custo seja dividido entre todos.

#### HU-06: Visualização de Contas a Pagar
> **Como** um morador, 
> **eu quero** ver um painel com todas as despesas em aberto da minha república e o status dos meus pagamentos (Pendente, Atrasado), 
> **para que** eu saiba o que preciso pagar.

#### HU-07: Realização de um Pagamento
> **Como** um morador, 
> **eu quero** poder marcar uma despesa como paga, 
> **para que** o sistema registre meu pagamento, atualizando o status e a data.

#### HU-08: Visão Geral Financeira do Admin
> **Como** um Administrador, 
> **eu quero** visualizar um resumo de todas as despesas do mês e o status de pagamento de cada morador, 
> **para que** eu possa gerenciar as finanças da casa.

---

### Épico: Manutenção e Perfil

#### HU-09: Saída de um Morador da República
> **Como** um Administrador, 
> **eu quero** poder registrar a saída de um morador, 
> **para que** o sistema o marque como inativo e ele não seja incluído em futuras despesas.

#### HU-10: Atualização de Perfil Pessoal
> **Como** um morador, 
> **eu quero** poder atualizar minhas informações pessoais (nome, telefone, etc.), 
> **para que** meus dados estejam sempre corretos.