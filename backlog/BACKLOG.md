# Backlog do Projeto - República Fácil

Este documento descreve as funcionalidades planejadas para o Gerenciador de Repúblicas, organizadas em Histórias de Usuário.

---

## 🟩 US-01: Cadastro de Novo Usuário
**Descrição:**  
Como um visitante,  
eu quero poder me cadastrar no sistema usando meu nome, email, telefone e uma senha,  
para que eu possa criar uma conta pessoal e segura na plataforma.

**Critérios de Aceite (AC):**
- [x] O formulário deve conter os campos: **Nome Completo**, **Email**, **Telefone** e **Senha**.  
- [x] Todos os campos são de preenchimento obrigatório.  
- [x] O campo **Email** deve validar se o formato é válido (ex: `usuario@dominio.com`).  
- [x] O sistema deve verificar se o **Email** fornecido já está cadastrado.  
      - Caso esteja, exibir: *“Este email já está em uso.”*  
- [x] O campo **Senha** deve ser mascarado (não exibir o texto digitado).  
- [x] A senha deve ter no mínimo **8 caracteres**.  

---

## 🟩 US-02: Login de Usuário
**Descrição:**  
Como um usuário cadastrado,  
eu quero poder fazer login com meu email e senha,  
para que o sistema me identifique e me dê acesso às funcionalidades da minha república.

**Critérios de Aceite (AC):**
- [x] O formulário deve conter os campos: **Email** e **Senha**.  
- [x] Ambos os campos são obrigatórios.  
- [x] Em caso de erro, exibir mensagem genérica: *“Email ou senha inválidos.”*  
- [x] A senha deve ser mascarada.  
- [x] Deve haver um link **“Esqueci minha senha”**.  
- [x] Ao logar com sucesso, o usuário deve ser redirecionado para o **painel principal**.

---

## 🟩 US-03: Criação de Nova República
**Descrição:**  
Como um usuário recém-cadastrado,  
eu quero poder criar uma nova República informando nome e endereço,  
para que eu me torne o Administrador e possa começar a gerenciar nosso espaço.

**Critérios de Aceite (AC):**
- [x] Formulário com campos **Nome da República** e **Endereço** (obrigatórios).  
- [x] Ao criar com sucesso:
  - [x] Salvar a nova república no banco.  
  - [x] Associar o usuário logado a essa república.  
  - [x] Atribuir papel de **Administrador**.  

---

## 🟩 US-04: Adição de Morador à República
**Descrição:**  
Como um Administrador,  
eu quero poder adicionar um Morador à minha República,  
para que ele oficialmente passe a fazer parte do grupo.

**Critérios de Aceite (AC):**
- [x] O Admin deve ter uma interface para cadastrar um morador pelo **nome completo**, **email** e **telefone**.  
- [x] O Admin deve receber mensagem de sucesso: *“Morador adicionado!”*.

---

## 🟩 US-05: Cadastro de Quartos
**Descrição:**  
Como um Administrador,  
eu quero poder cadastrar os quartos da república (ex: Quarto 1, Quarto 2),  
para que eu possa associar moradores e despesas específicas a eles.

**Critérios de Aceite (AC):**
- [x] Tela de **Gestão de Quartos** acessível apenas ao Admin.  
- [x] O Admin pode:
  - [x] Criar novo quarto (informar **Número/Identificador**).  
  - [x] Listar todos os quartos.  
  - [x] Editar o número de um quarto.  
  - [ ] Excluir quarto (apenas se **sem moradores**).  
- [x] O número do quarto deve ser **único** dentro da república.

---

## 🟩 US-06: Associação de Morador a um Quarto
**Descrição:**  
Como um Administrador,  
eu quero poder associar um morador a um quarto cadastrado,  
para que o sistema saiba quem é responsável por qual espaço e facilite o rateio de despesas.

**Critérios de Aceite (AC):**
- [x] Na tela **Gestão de Moradores**, o Admin deve ver a lista de moradores.  
- [x] Para cada morador, permitir associar um **quarto cadastrado**.  
- [x] Permitir **trocar o morador de quarto**.

---

## 🟩 US-07: Registro de Nova Despesa
**Descrição:**  
Como um administrador da república,  
eu quero registrar uma nova despesa (com descrição, valor, vencimento e categoria),  
para que o custo seja dividido entre os moradores.

**Critérios de Aceite (AC):**
- [x] Campos obrigatórios: **Descrição**, **Valor Total**, **Data de Vencimento**, **Categoria**.  
- [x] Despesa deve ser dividida igualmente entre os moradores.  
- [x] Ao salvar, o sistema deve:
  - [x] Calcular automaticamente a parte de cada morador.  
  - [x] Criar os registros individuais de pagamento (**US-08**).

---

## 🟩 US-08: Visualização de Contas Pessoais a Pagar
**Descrição:**  
Como administrador,  
eu quero ver um painel com todas as despesas em aberto atribuídas aos moradores,  
para acompanhar os **status**: *Pendente (laranja)*, *Atrasado (vermelho)* e *Pago (verde)*.

**Critérios de Aceite (AC):**
- [x] Cada item deve exibir: **Descrição**, **Valor (parte do morador)** e **Data de Vencimento**.  
- [x] Status:
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
- [x] Cada item “Pendente” ou “Atrasado” deve ter ação **Marcar como Pago**.    
- [x] Após confirmar, o status muda para **Pago**.  
- [x] Registrar **data do pagamento**.  
- [x] Atualizar a interface imediatamente.

---

## 🟩 US-10: Relatório e Histórico Financeiro
**Descrição:**  
Como um Administrador,  
eu quero acessar um histórico de despesas dos meses anteriores,  
para analisar a evolução dos gastos da república.

**Critérios de Aceite (AC):**
- [x] Deve existir uma página **Resumo**.  
- [x] Permitir filtrar despesas por:
  - [x] **Período de datas** (início e fim).  
  - [x] **Categoria**.  
- [x] Exibir lista filtrada com **valor total** de cada despesa.

---

## 🟩 US-11: Saída de um Morador da República
**Descrição:**  
Como um Administrador,  
eu quero poder registrar a saída de um morador,  
para que o sistema o marque como inativo e o exclua de futuros rateios.

**Critérios de Aceite (AC):**
- [x] Opção **Remover** morador na lista.  
- [x] Morador removido é desassociado do quarto (**US-06**).  
- [x] Moradores removidos não participam de **novos rateios** (**US-07**).  
- [ ] O **histórico financeiro** do morador é mantido.

---

## 🟩 US-12: Atualização de Perfil Pessoal
**Descrição:**  
Como Administrador,  
eu quero poder atualizar minhas informações pessoais (nome, telefone, senha),  
para manter meus dados corretos.

**Critérios de Aceite (AC):**
- [x] Página **Meu Perfil**.  
- [x] Permitir editar **Nome** e **Telefone**.  
- [x] Permitir alterar senha, informando:
  - **Senha Atual**
  - **Nova Senha**
  - **Confirmação da Nova Senha**  
- [x] Validar senha atual antes de salvar.  
- [x] Exibir mensagem de sucesso ao concluir.

---
