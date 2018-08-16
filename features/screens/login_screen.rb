class Login < Appium::Driver

 # ================================= SCREEN ======================================    
    def initialize
	    @menu_button = "android.widget.ImageButton"
        @email = "edEmail"
        @senha = "edPassword"
        @btn_entrar = "btEntrar"
		@login_cadastro = "imageView4"
    end
 # ================================ METHODS ======================================

 def email
	id(@login_cadastro).click
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
    find_element(class: @menu_button).click   
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