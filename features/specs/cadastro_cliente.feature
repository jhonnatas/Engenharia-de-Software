#language: pt

@gerenciarCliente
Funcionalidade: gerenciar os clientes
    -como usuario administrador do sistema da locadora
    -eu quero poder cadastrar, listar, ativar e desativar clientes 
    -para que os clientes possam alugar os filmes
    -para tanto as ações devem ser exetudas na pagina de gerenciar clientes


Contexto:
    Dado que eu seja um administrador registrado 
    E esteja logado como administrador



Cenário: Listar clientes
    Dado que eu tenho varios clientes cadastrados
    Quando eu visito a pagina de gerenciamento dos clientes
    Então eu devo ver uma lista de Clientes

Cenário: Cadastrar novo cliente
    Dado que eu estou na pagina de administração dos clientes
    E clico no link de Cadastrar Cliente
    E eu preencho o Nome com 'Fulano da Silva'
    #E eu preencho email com 'fulano@gmail.com'
    E eu preencho endereço com 'Rua logo ali N 000'
    E eu preencho telefone_fixo com '(88)3333-3333'
    E eu preencho local_trabalho com 'Empresa'
    E eu preencho telefone_comercial com '(88)2101-5311'
    E eu preencho celular com '(88)99999-8888'
    E eu preencho sexo com 'Masculino'
    E eu preencho CPF com '123.456.789.01'
    #E eu preencho data_nascimento  com '01/01/81'
    Quando salvar
    Então eu devo ver Cliente Criado

Cenário: Desativar cliente
    Dado que eu esteja na pagina de gerenciar clientes
    E o Cliente "Zé ninquem" esteja ativado
    E eu clico em editar o Cliente "Zé ninquem"
    Quando eu clico em 'ativar' e depois em Editar Customer
    Então eu devo ver Cliente Atualizado

