# Backlog do Projeto - República Fácil

Este documento descreve as funcionalidades planejadas para o Gerenciador de Repúblicas, organizadas em Histórias de Usuário.

---

## 🟩 US-01: Cadastro de Novo Usuário
**Descrição:**  
Como um visitante,  
eu quero poder me cadastrar no sistema usando meu nome, email, telefone e uma senha,  
para que eu possa criar uma conta pessoal e segura na plataforma.

**Critérios de Aceite (AC):**
- [ ] O formulário deve conter os campos: **Nome Completo**, **Email**, **Telefone** e **Senha**.  
- [ ] Todos os campos são de preenchimento obrigatório.  
- [ ] O campo **Email** deve validar se o formato é válido (ex: `usuario@dominio.com`).  
- [ ] O sistema deve verificar se o **Email** fornecido já está cadastrado.  
      - Caso esteja, exibir: *“Este email já está em uso.”*  
- [ ] O campo **Senha** deve ser mascarado (não exibir o texto digitado).  
- [ ] A senha deve ter no mínimo **8 caracteres**.  
- [ ] Após o cadastro, o usuário deve ser redirecionado para a **tela de login**.

---

## 🟩 US-02: Login de Usuário
**Descrição:**  
Como um usuário cadastrado,  
eu quero poder fazer login com meu email e senha,  
para que o sistema me identifique e me dê acesso às funcionalidades da minha república.

**Critérios de Aceite (AC):**
- [ ] O formulário deve conter os campos: **Email** e **Senha**.  
- [ ] Ambos os campos são obrigatórios.  
- [ ] Em caso de erro, exibir mensagem genérica: *“Email ou senha inválidos.”*  
- [ ] A senha deve ser mascarada.  
- [ ] Deve haver um link **“Esqueci minha senha”** (fluxo futuro).  
- [ ] Ao logar com sucesso, o usuário deve ser redirecionado para o **painel principal**.

---

## 🟩 US-03: Criação de Nova República
**Descrição:**  
Como um usuário recém-cadastrado,  
eu quero poder criar uma nova República informando nome e endereço,  
para que eu me torne o Administrador e possa começar a gerenciar nosso espaço.

**Critérios de Aceite (AC):**
- [ ] Formulário com campos **Nome da República** e **Endereço** (obrigatórios).  
- [ ] Ao criar com sucesso:
  - [ ] Salvar a nova república no banco.  
  - [ ] Associar o usuário logado a essa república.  
  - [ ] Atribuir papel de **Administrador**.  
- [ ] Após a criação, redirecionar para a tela **Cadastro de Quartos (US-05)**.

---

## 🟩 US-04: Adição de Morador à República
**Descrição:**  
Como um Administrador,  
eu quero poder adicionar um Morador à minha República,  
para que ele oficialmente passe a fazer parte do grupo.

**Critérios de Aceite (AC):**
- [ ] O Admin deve ter uma interface para cadastrar um morador pelo **nome completo**, **email** e **telefone**.  
- [ ] O Admin deve receber mensagem de sucesso: *“Morador adicionado!”*.

---

## 🟩 US-05: Cadastro de Quartos
**Descrição:**  
Como um Administrador,  
eu quero poder cadastrar os quartos da república (ex: Quarto 1, Quarto 2),  
para que eu possa associar moradores e despesas específicas a eles.

**Critérios de Aceite (AC):**
- [ ] Tela de **Gestão de Quartos** acessível apenas ao Admin.  
- [ ] O Admin pode:
  - [ ] Criar novo quarto (informar **Nome/Identificador**).  
  - [ ] Listar todos os quartos.  
  - [ ] Editar o nome de um quarto.  
  - [ ] Excluir quarto (apenas se **sem moradores**).  
- [ ] O nome do quarto deve ser **único** dentro da república.

---

## 🟩 US-06: Associação de Morador a um Quarto
**Descrição:**  
Como um Administrador,  
eu quero poder associar um morador a um quarto cadastrado,  
para que o sistema saiba quem é responsável por qual espaço e facilite o rateio de despesas.

**Critérios de Aceite (AC):**
- [ ] Na tela **Gestão de Moradores**, o Admin deve ver a lista de moradores.  
- [ ] Para cada morador, permitir associar um **quarto cadastrado**.  
- [ ] Permitir **trocar o morador de quarto**.

---

## 🟩 US-07: Registro de Nova Despesa
**Descrição:**  
Como um administrador da república,  
eu quero registrar uma nova despesa (com descrição, valor, vencimento e categoria),  
para que o custo seja dividido entre os moradores.

**Critérios de Aceite (AC):**
- [ ] Campos obrigatórios: **Descrição**, **Valor Total**, **Data de Vencimento**, **Categoria**.  
- [ ] Deve haver opção de **tipo de rateio** (ex: Comum → dividir igualmente).  
- [ ] Ao salvar, o sistema deve:
  - [ ] Calcular a parte de cada morador.  
  - [ ] Criar os registros individuais de pagamento (**US-08**).

---

## 🟩 US-08: Visualização de Contas Pessoais a Pagar
**Descrição:**  
Como administrador,  
eu quero ver um painel com todas as despesas em aberto atribuídas aos moradores,  
para acompanhar os **status**: *Pendente (laranja)*, *Atrasado (vermelho)* e *Pago (verde)*.

**Critérios de Aceite (AC):**
- [ ] Cada item deve exibir: **Descrição**, **Valor (parte do morador)** e **Data de Vencimento**.  
- [ ] Status:
  - 🟠 Pendente → vencimento futuro  
  - 🔴 Atrasado → vencimento passado, não pago  
  - 🟢 Pago → já quitado  
- [ ] Lista ordenada por **Data de Vencimento (ascendente)**.  
- [ ] Despesas pagas devem ir para o **final da lista** ou em uma aba de **Histórico**.

---

## 🟩 US-09: Realização de um Pagamento
**Descrição:**  
Como Administrador,  
eu quero poder marcar uma despesa de um morador como paga,  
para que o sistema registre o pagamento e atualize o status.

**Critérios de Aceite (AC):**
- [ ] Cada item “Pendente” ou “Atrasado” deve ter ação **Marcar como Pago**.  
- [ ] O sistema deve pedir confirmação: *“Você confirma o pagamento desta conta?”*  
- [ ] Após confirmar, o status muda para **Pago**.  
- [ ] Registrar **data do pagamento**.  
- [ ] Atualizar a interface imediatamente.

---

## 🟩 US-10: Relatório e Histórico Financeiro
**Descrição:**  
Como um Administrador,  
eu quero acessar um histórico de despesas dos meses anteriores,  
para analisar a evolução dos gastos da república.

**Critérios de Aceite (AC):**
- [ ] Deve existir uma página **Relatórios** ou **Histórico**.  
- [ ] Permitir filtrar despesas por:
  - [ ] **Período de datas** (início e fim).  
  - [ ] **Categoria**.  
- [ ] Exibir lista filtrada com **valor total** de cada despesa.

---

## 🟩 US-11: Saída de um Morador da República
**Descrição:**  
Como um Administrador,  
eu quero poder registrar a saída de um morador,  
para que o sistema o marque como inativo e o exclua de futuros rateios.

**Critérios de Aceite (AC):**
- [ ] Opção **Remover** morador na lista.  
- [ ] Morador removido é desassociado do quarto (**US-06**).  
- [ ] Moradores removidos não participam de **novos rateios** (**US-07**).  
- [ ] O **histórico financeiro** do morador é mantido.

---

## 🟩 US-12: Atualização de Perfil Pessoal
**Descrição:**  
Como Administrador,  
eu quero poder atualizar minhas informações pessoais (nome, telefone, senha),  
para manter meus dados corretos.

**Critérios de Aceite (AC):**
- [ ] Página **Meu Perfil**.  
- [ ] Permitir editar **Nome** e **Telefone**.  
- [ ] Permitir alterar senha, informando:
  - **Senha Atual**
  - **Nova Senha**
  - **Confirmação da Nova Senha**  
- [ ] Validar senha atual antes de salvar.  
- [ ] Exibir mensagem de sucesso ao concluir.

---
Nova Senha

Confirmação da Nova Senha

 Validar senha atual antes de salvar.

 Exibir mensagem de sucesso ao concluir.
