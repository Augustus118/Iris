# language: pt

Funcionalidade: Primeiro Login
Eu como novo usuário do Portal Iris
Quero fazer login e cadastrar minhas configurações de usuário



Esquema do Cenário: Realizar Login pela primeira vez
	Dado que eu acesso o Portal Iris pela primeira vez
	Quando eu realizar o login
	E escolher minhas configurações de email
	E escolher minhas notificações
	E escolher meus avisos na tela
	Então me exibirá a tela de login
	E verei uma mensagem de sucesso("Seja bem vindo ao Portal Iris") 