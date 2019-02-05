#language: pt

@gerenciarFilmes
Funcionalidade: gerenciar os Filmes
    como usuario administrador do sistema da locadora
    eu quero poder cadastrar e listar filmes 
    para que poderem ser locados

Contexto:
    Dado que eu seja um administrador registrado 
    E esteja logado como administrador
    
Cenário: Listar filmes
    Dado que eu tenho varios filmes cadastrados
    Quando eu estou na pagina de gerenciar acervo
    Então eu devo ver uma lista de filmes

Cenário: Cadastrar novo filme
    Dado que eu esteja na pagina de gerenciar acervo
    E eu clico em 'Cadastrar Filme' deve abrir o formulário de cadastro
    E preencho Titulo Original com 'The Lord of Rings: The two towers'
    E preencho Tiutlo_portugues com 'O senhor dos anéis: As duas torres'
    E preencho Pais com 'Estados Unidos'
    E preencho Elenco com 'Elijah Wood, Ian McKellen'
    E preencho sinopse com 'o cara ta na metade do caminho pra queimar o anel'
    E preencho duracao com '3H 55m'
    E preencho genero com 'Ação'
    #E preencho midia com 'DVD'
    E preencho status com 'Lançamento'
    Quando eu clico em Criar Movie
    Então eu devo ver "Movie was successfully created"

Cenário: Pesquisar Filmes
    E "O senhor dos anéis: As duas torres"
    E que eu esteja na pagina de consulta de filmes
    E eu preencho "pesquisar" com "O senhor"
    Quando clico em "pesquisar"
    Então eu devo ver "O senhor dos aníes: A sociedade do anel"
    E "O senhor dos anéis: As duas torres"