#language: pt

@devolucao
Funcionalidade: realizar devolução
    como administrador do sistema da locadora
    eu quero poder fazer devolução das locações

Cenário: realizar devolução
    Dado que eu sou administrador
    E que eu esteja na pagina locações
    E tenha clicado em devolver filme "O senhor dos anéis: As duas torres"
    E informo a data "30/11/18"
    Quando clico em "registrar devolução"
    Então eu devo ver "Devolução realizada com sucesso"


Cenário: realizar devolução com atraso
    Dado que eu sou administrador
    E que eu esteja na pagina locações
    E tenha clicado em devolver
    E o filme é "O senhor dos anéis: As duas torres"
    E informo a data "01/12/18"
    Quando clico em "registrar devolução"
    E o sistema gerar a multa por atraso "Multa" é igual  a "dias_atrasados" vezes "valor_locação"
    E eu devo receber a multa
    E eu devo receber a midia
    Então eu devo ver "devolução realizada com sucesso"
    E ver "Devolução realizada com sucesso"

Cenário: realizar devolução de filme reservado
    Dado que eu sou administrador
    E que eu esteja na pagina locações
    E tenha clicado em devolver
    E o filme é "O senhor dos anéis: As duas torres"
    E possua uma reserva para o filme pelo cliente "Fulano da Silva"
    Quando clico em "registrar devolução"
    E o sistema deve enviar um email para "fulano@gmail.com" informando a devolução
    E o prazo para retirada
    Então eu devo ver "Devolução realizada com sucesso"
