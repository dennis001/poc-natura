
class Cadastro < Appium::Driver

     # ================================= SCREEN ======================================    
     def initialize
        @menu_button = "android.widget.ImageButton"
        @login_cadastro = "imageView4"
        @btn_me_cadastrar = "btQueroCadastrar"
        @nome = "edNomeCompleto"
        @nome01 = Faker::Simpsons.character 
		@nome02 = Faker::GameOfThrones.house
        @cpf = "edCPF"
        @cpf_num = Faker::CPF.numeric
        @email = "edEmail"
        @email_01 = Faker::Internet.email(@nome01)
        @senha = "edSenha"
        @senha_num = Faker::Number.number(8)
        @conf_senha = "edConfirmeSenha"
        @conf_senha_num = @senha_num
        @cep = "edCEP"
        @cep_num = Faker::Number.number(8)
        @nascimento = "edDtNascimento"
        @genero = "rdMale"
        @telefone = "edTelefone"
        @telefone_num = Faker::Number.number(11)
        @term_uso = "ckAcceptTerms"
		@concordar_btn = "keep"
        @btn_term_ok = "btOk"
        @btn_entrar = "btEntrar"
        @first_name = "txFirstName"
     end

     # ================================ METHODS ======================================

     def menu
        find_element(class: @menu_button).click   
     end

     def cadastrar
		id(@login_cadastro).click
        id(@btn_me_cadastrar).click
     end

     def dados_cliente 
        id(@nome).click
        id(@nome).send_key @nome01, @nome02
        hide_keyboard

        id(@cpf).click 
        id(@cpf).send_key @cpf_num
        hide_keyboard

        id(@email).click
        id(@email).send_key @email_01
        hide_keyboard

        id(@senha).click
        id(@senha).send_key @senha_num
        hide_keyboard

        id(@conf_senha).click
        id(@conf_senha).send_key @conf_senha_num
        hide_keyboard

        id(@cep).click
        id(@cep).send_key @cpf_num
        hide_keyboard

        id(@nascimento).click
        id(@nascimento).send_key "16031996"
        hide_keyboard

        id(@genero).click
        id(@telefone).click
        id(@telefone).send_key @telefone_num
        hide_keyboard

        id(@term_uso).click
     end
     
     def termo 
	  # id(@btn_term_ok).click
		id(@concordar_btn).click
        id(@btn_entrar).click
     end

     def verificar_cadastro 
	 find_element(class: @menu_button).click
        wait_for { driver.find_element(:id, "txFirstName").displayed? }
     end
    

end