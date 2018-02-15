 ################################### ---- ###################################

Quando("coloco meus dados para logar") do
    @login = Login.new
    @login.email
    @login.senha
  end
  
Então("sou redirecionado para a home page") do
    @login.enter_btn
    @login.verificar_cadastro
  end

  ################################### ---- ###################################

  Quando("digito alguns dos meus dados de forma errada") do
    @login = Login.new
    @login.email
    @login.erro_senha
  end
  
  Então("devo validar a mensagem de insucesso ao login.") do
    @login.enter_btn
    @login.msn_erro
  end