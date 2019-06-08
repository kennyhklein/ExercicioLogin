#language: pt

Funcionalidade: CriarUsuario

@criar_usuario
Cenario: Criar Usuario de acesso
Dado que estou na tela de cadastro do Usuario     
Quando preencho os campos com dados validos
Entao cria usuario e verifico a criacao

Cenario: Validar usuario cadastrado
Dado que estou na tela de login do Usuario     
Quando preencho os campos do usuario cadastrado
Entao exibe mensagem de sucesso

Cenario: Validar usuario não cadastrado
Dado que estou na tela de login do Usuario     
Quando preencho os campos com usuario não cadastrado
Entao exibe mensagem de erro