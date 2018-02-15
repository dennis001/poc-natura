#language: pt
#utf-8

Funcionalidade: 
 Eu como cliente
 Quero me logar no aplicativo
 Para efetuar compras no mesmo

    
    Cenario: Primeiro acesso ao aplicativo (login com sucesso)
        Dado que estou na home do aplicativo
        Quando toco no botão de login /cadastro
        E coloco meus dados para logar
        Então sou redirecionado para a home page

    @wip
    Cenario: Login de insucesso
        Dado que estou na home do aplicativo
        Quando toco no botão de login /cadastro
        E digito alguns dos meus dados de forma errada
        Então devo validar a mensagem de insucesso ao login.
        