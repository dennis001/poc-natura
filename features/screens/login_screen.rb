class Login < Appium::Driver

 # ================================= SCREEN ======================================    
    def initialize
        @email = "edEmail"
        @senha = "edPassword"
        @btn_entrar = "btEntrar"
    end
 # ================================ METHODS ======================================

 def email
    id(@email).click
    id(@email).send_key "janilsom.tompsom@test.com"
    hide_keyboard
 end

 def senha
    id(@senha).click
    id(@senha).send_key "1231111"
    hide_keyboard
 end

 def enter_btn
    id(@btn_entrar).click
 end

 def verificar_cadastro 
    wait_for { driver.find_element(:id, "txFirstName").displayed? }
 end

 def erro_senha
    id(@senha).click
    id(@senha).send_key "46164508"
    hide_keyboard
 end

 def msn_erro
    text("E-mail ou senha fornecido está incorreto")
 end

end