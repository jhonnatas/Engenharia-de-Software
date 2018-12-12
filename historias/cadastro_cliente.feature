#language: pt

@gerenciarCliente
Funcionalidade: gerenciar os clientes
    -como usuario administrador do sistema da locadora
    -eu quero poder cadastrar, listar, ativar e desativar clientes 
    -para que os clientes possam alugar os filmes
    -para tanto as ações devem ser exetudas na pagina de gerenciar clientes

Contexto:
    Dado que existe o cliente "zé ninquem" cadastrado


Cenário: Listar clientes
    E que eu esteja na pagina de administração de cliente
    E preencho nome com "Zé ninquem"
    Quando listar clientes   
    Então eu devo ver "Zé ninquem" encontrado

Cenário: Cadastrar novo cliente
    Dado que preencho Nome com "Fulano da Silva"
    E eu preencho email com "fulano@gmail.com"
    E eu preencho endereço com "Rua logo ali N 000"
    E eu preencho telefone_fixo com "(88)3333-3333"
    E eu preencho local_trabalho com "Empresa"
    E eu preencho telefone_comercial com "(88)2101-5311"
    E eu preencho celular com "(88)99999-8888"
    E eu preencho sexo com "masculino"
    E eu preencho CPF com "123.456.789.01"
    E eu preencho data_nascimento  com "01/01/81"
    Quando salvar
    Então eu devo ver "cliente cadastrado com sucesso"

Cenário: Cadastrar novo dependente
    Dado que eu preencho Clinete_titular com "zé ninquem"
    E eu preencho Nome com "Zé ninquem Junior"
    E eu preencho email com "junior@gmail.com"
    E eu preencho sexo com "masculino"
    E eu preencho data_nascimento  com "01/01/99"
    Quando salvar
    E o sistema confirmar que o dependente é maior de idade
    Então eu devo ver "dependente cadastrado com sucesso"

Cenário: Desativar cliente
    E seleciono o Cliente "Zé ninquem"
    Quando eu clico em "Desativar"
    Então eu devo ver "Cliente desativado"

Cenário: Ativar cliente
    E o Cliente "Zé ninquem" esteja desativado
    E eu seleciono o Cliente "Zé ninquem"
    Quando eu clico em "ativar"
    Então eu devo ver "Cliente ativado"
