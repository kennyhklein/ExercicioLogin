  Dado("que estou na tela de cadastro do Usuario") do                           
    @var_new = CriarUsuarioPage.new
    @var_new.acessar_URL_cadastro
  end                                                                           
                                                                                
  Quando("preencho os campos com dados validos") do                             
    @var_new.preencher_campos_login
  end                                                                           
                                                                                
  Entao("cria usuario e verifico a criacao") do                                 
    @var_new.verifica_usuario
  end      
  
  Dado("que estou na tela de login do Usuario") do
    @var_new = CriarUsuarioPage.new
    @var_new.acessar_login
  end
  
  Quando("preencho os campos do usuario cadastrado") do
    @var_new.preencher_usuario_cadastrado
  end
  
  Entao("exibe mensagem de sucesso") do
    @var_new.verifica_mensagem_sucesso
  end
  
  Quando("preencho os campos com usuario não cadastrado") do
    @var_new.preencher_usuario_nao_cadastrado
  end

  Entao("exibe mensagem de erro") do
    @var_new.verifica_mensagem_erro
  end