class CriarUsuarioPage
    include Capybara::DSL


    def acessar_URL_cadastro
        visit 'http://thedemosite.co.uk/addauser.php'

    end


    def preencher_campos_login
       fill_in('username', :with => DADOS['usuario_valido'])
       fill_in('password', :with => DADOS['password_valido'])
       click_button('save')
    end

    

    def verifica_usuario
        page.has_content?('The username: '+DADOS['usuario_valido'])
        page.has_content?('The password: '+DADOS['password_valido'])
    end

    def acessar_login
       visit 'http://thedemosite.co.uk/login.php'
    end

    def preencher_usuario_cadastrado
        fill_in('username', :with => DADOS['usuario_valido'])
        fill_in('password', :with => DADOS['password_valido'])
        click_button('Test Login')

    end

    def verifica_mensagem_sucesso
        page.has_content?('**Successful Login**')
    end

    def preencher_usuario_nao_cadastrado
        fill_in('username', :with => DADOS['usuario_invalido'])
        fill_in('password', :with => DADOS['password_invalido'])
        click_button('Test Login')
    end


    def verifica_mensagem_erro
        page.has_content?('**Failed Login**')

    end


end