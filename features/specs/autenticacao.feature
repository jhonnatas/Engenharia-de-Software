#language: pt
@autenticarAdmin
Funcionalidade: Autenticacao
    Diante do acesso ao sistema
    Como um administrador do sistema
    Eu deveriar conseguir logar no sistema


Cenário: Log in 
    Dado que eu seja um admin registrado e eu visit a pagina principal do sistema
    Então eu estou logado

Cenário: Log out
    Dado que eu estou logado
    E eu clico em sair
    Então eu estou deslogado