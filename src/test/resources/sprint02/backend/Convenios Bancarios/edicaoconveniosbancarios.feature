#language:pt


Funcionalidade: edicao de novos convenios bancarios
eu como usuario administrador
quero editar cadastro de novos convenios


Contexto: edicao de Convenio Bancario
		Dado que eu acesse a uri <api>

Cenario: edicao de Convenio Bancario - perfil Administrador
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um convenio <emp_cod> para edicao
		E preencher todos campos 
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_200>
		E exibirá a mensagem de erro <mensagem_sucesso>		
		
Cenario: edicao de Convenio Bancario - edicao com Perfil Analista de Contas a Pagar
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Pagar
		Quando eu solicitar um convenio <emp_cod> para edicao
		E preencher os todos os campos 
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P1>
		

Cenario: editar de convenios bancarios cadastrados - edicao com Perfil Analista de Contas a Receber
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Receber
		Quando eu solicitar um convenio <emp_cod> para edicao
		E preencher os campos 
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P2>		


Cenario: editar de convenios bancarios cadastrados - edicao com Perfil Gestor
		E tenha as configurações de Header <config_header>
		E tenha perfil Gestor
		Quando eu solicitar um convenio <emp_cod> para edicao
		E preencher os campos 
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P3>
		

Cenario: editar de convenios bancarios cadastrados - edicao com Perfil Aprovador
		E tenha as configurações de Header <config_header>
		E tenha perfil Aprovador
		Quando eu solicitar um convenio <emp_cod> para edicao
		E preencher os campos 
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P4>	
		
Cenario: editar cadastro de Convenio Bancario - Nao preenchimento ID
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
    Quando eu preencher o todos os campos
		E nao preencher o campo <ID>
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_401>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento carteira do convenio
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo carteira do convenio
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_erro_401>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento Banco
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Valor Banco
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_404>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento  Agencia
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo  Agencia
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_404>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Conta
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Conta
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_400>
		E meu cadastro nao estara logado na base de dados


		Cenario: editar cadastro de Convenio Bancario - Layout Banco
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Layout Banco
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_400>
		E meu cadastro nao estara logado na base de dados
		
Cenario: editar cadastro de Convenio Bancario - forma de pagamento
		E meu perfil seja Administrador
		E tenha as configurações de Header <config_header>
		Quando eu selecionar um convenio <convenio_id>
		E e deixar em branco o campo <forma_de_pagamento> 
		E resgatar o token <token>
		E solicitar edição através do método <metodo_put>
		Entao verei a mensagem de erro <mensagem_401>
		E meu cadastro nao estara logado na base de dados
		

Cenario: inativar empresa na lista Convenio Bancario -  Vigencia Inicial
		E meu perfil seja Administradorr
		E tenha as configurações de Header <config_header>
		Quando eu selecionar um convenio <convenio_id>
		E solicitar sua inativação através do método <metodo_put>
		E resgatar o token <token>
		Entao verei a data de Vigencia inicial preenchida <vigencia_data>
		E e a data de vigencia deve ser valida <msg_404>
		
Cenario: inativar Convenio Bancario - Vigencia Inicial maior que Vigencia final
		E meu perfil seja Administrador
		E tenha as configurações de Header <config_header>
		Quando eu selecionar um convenio <convenio_id>
		E verificar que a Vigencia inicial esta com valor maior que a vigencia final
		Entao verei a mensagem de erro <mensagem_404>>
		
		
Cenario: inativar Convenio Bancario - Inaticação por Vigencia Final
		E meu perfil seja Administrador
		E tenha as configurações de Header <config_header>
		Quando eu selecionar um convenio <convenio_id>
		E verificar que a data de Vigencia final esta expirada <vigencia_data>
	  Entao verei uma mensagem que a conta esta inativa <status_200>
