#language: pt

@reserva
Funcionalidade: realizar reserva
    como cliente da locadora
    eu quero poder fazer reservas de filmes

Cenário: realizar reserva filme locado
    Dado que eu sou cliente cadastrado
    E que eu esteja na pagina de reservas
    E tenha escolhido o filme "O senhor dos anéis: As duas torres"
    Quando clico em "registrar reserva"
    E o sistema deve armazenar filme "O senhor dos anéis: As duas torres"
    E midia "dvd" 
    E hora "hora do sistema"
    Então eu devo ver "Reserva realizada com sucesso"

Cenário: realizar reserva disponivel
    Dado que eu sou cliente cadastrado
    E que eu esteja na pagina de reservas
    E tenha escolhido o filme "O senhor dos anéis: A sociedade do anel"
    Quando clico em "registrar reserva"
    E o sistema deve armazenar filme "O senhor dos anéis: A sociedade do anel"
    E midia "dvd" 
    E hora "hora do sistema"
    Então eu devo ver "Reserva realizada com sucesso, você tem 24H para realizar a retirada da midia"