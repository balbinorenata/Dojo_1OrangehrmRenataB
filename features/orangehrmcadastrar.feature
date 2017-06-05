#language: pt
#utf-8

Funcionalidade: Cadastrar usuário
Eu como empregador 
Quero cadastrar e editar um usuario

@cadastro
Cenario: Cadastrar usuario
Dado que ele esteja logado no site
Quando inserir os dados do usuário
Então usuário será cadastrado

@editar
Cenario: Editar usuario
Dado que ele esteja logado no site
Quando inserir os novos dados do usuário
Então usuário tera os dados editados