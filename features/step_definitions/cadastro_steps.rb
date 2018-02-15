 ################################### ---- ###################################

Dado("que estou na home do aplicativo") do
    @home = Home.new
    @home.pular_news
    @home.log_inicio
  end

Quando("toco no botão de login /cadastro") do
    @cadastro = Cadastro.new
    @cadastro.menu
  end
  
  Quando("insiro meus dados") do
    @cadastro = Cadastro.new
    @cadastro.cadastrar
    @cadastro.dados_cliente
    @cadastro.termo
  end
  
  Então("valido meu cadastro") do
    @cadastro.verificar_cadastro
  end