 ################################### ---- ###################################

Dado("que starto o app") do
    @home = Home.new
    @home.descricao
  end
  
  Quando("toco em proximo") do
    @home.proximo_btn
    @home.proximo_btn
    @home.proximo_btn
  end
  
  Então("devo ver a proxima pagina") do
    @home.final_page
    @home.proximo_btn
  end

  ################################### ---- ###################################

  Dado("que eu esteja no aplicativo") do
    @home = Home.new
    @home.descricao
  end
  
  Quando("toco no boão pular") do
    @home.pular_news
  end
  
  Então("devo validar a tela inicial do aplicativo") do
    @home.log_inicio
  end

  ################################### ---- ###################################

