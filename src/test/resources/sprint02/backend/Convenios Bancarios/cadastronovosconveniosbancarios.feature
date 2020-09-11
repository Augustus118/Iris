#language:pt

		
Funcionalidade: Cadastro de novos convenios bancarios
eu como usuario administrador
quero fazer o cadastro de novos convenios

Contexto: Cadastro de novo Convenio Bancario
		Dado que eu acesse a uri <api>
		

Cenario: Realizar cadastro de Convenio Bancario - perfil Administrador
	E tenha as configurações de Header <config_header>
	E tenha perfil Administrador
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status>
	E exibirá a mensagem de sucesso <mensagem_sucesso_1> 
	
	
Esquema do Cenário: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Pagar
	E tenha as configurações de Header <config_header>
	E tenha perfil Analista Contas a Pagar
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 
	
	
Esquema do Cenário: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Receber
	E tenha as configurações de Header <config_header>
	E tenha perfil Analista Contas a Receber
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 
	
	
Esquema do Cenário: Realizar cadastro de Convenio Bancario - Perfil Aprovador
	E tenha as configurações de Header <config_header>
	E tenha perfil Aprovador
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 		
	

Esquema do Cenário: Realizar cadastro de Convenio Bancario - Perfil Gestor
	E tenha as configurações de Header <config_header>
	E tenha perfil Gestor
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 				
	

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento ID
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <ID>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_A1>


Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento Descricao
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <Descricao>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_B1>
		

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento FileSystems Integracao
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <FileSystem>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_C1>
		

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento Vigencia Inicial
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <Vigencia_Inicial>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_D1>
		

Cenario: Realizar cadastro de Convenio Bancario - Vigencia Inicial menor que a vigencia atual
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E o campo <Vigencia_Inicial> com uma data menor que a Data atual
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_E1>
		

Cenario: Realizar cadastro de Convenio Bancario - Vigencia Final menor que a Vigencia atual
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E o campo <Data_Final> com uma data menor que a Data atual
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_F1>
		



