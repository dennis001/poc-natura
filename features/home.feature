#language: pt
#utf-8

Funcionalidade:
 Eu como usuario do aplicativo,
 Quero passar para o proximo step da home

Cenario: cliente natura
    Dado que starto o app
    Quando toco em proximo
    Então devo ver a proxima pagina

Cenario: tela inicial
    Dado que eu esteja no aplicativo
    Quando toco no boão pular
    Então devo validar a tela inicial do aplicativo


