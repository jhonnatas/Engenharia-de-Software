#language: pt

@locacao
Funcionalidade: gerenciar locações
    como usuario administrador do sistema da locadora
    eu quero poder registrar as locações realizadas pelos clientes

Contexto:
    Dado que existe o cliente "Zé ninquem" cadastrado
    Dado que existe o filme "O senhor dos anéis: As duas torres" cadastrado

Cenário: registrar locação em dinheiro
    E que eu esteja na pagina de administração de locações
    E o cliente tenha escolhido o filme "O senhor dos anéis: As duas torres"
    E a data é "29/11/18"
    E a midia é "DVD"
    E a devolução é "30/11/18"
    E a forma de pagamento é "dinheiro"
    E o valor pago é 5,00
    Quando clico em "registrar locação"
    Então eu devo ver "Locação realizada com sucesso"

Cenário: registrar locação em chegue
    E que eu esteja na pagina de administração de locações
    E o cliente tenha escolhido o filme "O senhor dos anéis: As duas torres"
    E a data é "29/11/18"
    E a midia é "DVD"
    E a devolução é "30/11/18"
    E a forma de pagamento é "chegue"
    E eu preencho "banco" com "BB"
    E eu preencho "agencia" com 1234-5
    E eu preencho "conta" com 6789-0
    E eu preencho "numero_chegue" com 123456
    E o valor pago é 5,00
    Quando clico em "registrar locação"
    Então eu devo ver "Locação realizada com sucesso"

Cenário: registrar locação com cartão
    E que eu esteja na pagina de administração de locações
    E o cliente tenha escolhido o filme "O senhor dos anéis: As duas torres"
    E a data é "29/11/18"
    E a midia é "DVD"
    E a devolução é "30/11/18"
    E a forma de pagamento é "cartão"
    E eu preencho "operadora" com "visa"
    E eu preencho "autorização" com 123455678
    E eu preencho "valor" com  5,00
    Quando clico em "registrar locação"
    Então eu devo ver "Locação realizada com sucesso"

Cenário: registrar locação com filme reservado
    E que eu esteja na pagina de administração de locações
    E o cliente tenha escolhido o filme "O senhor dos anéis: As duas torres"
    E exista uma reserva não atendida para o filme
    Quando clico em "registrar locação"
    Então eu devo ver "Não possivel realizar a locação, filme já reservado"
