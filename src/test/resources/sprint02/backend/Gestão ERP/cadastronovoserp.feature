#language:pt


Funcionalidade: Gestao de cadastro de novos erps
eu como usuario administrador
quero fazer o cadastro de novos erps


Contexto: Cadastro de novos erps no Portal Iris
		Dado que eu acesse a uri <api>
		

Esquema do Cenário: Realizar cadastro de erp
	E tenha as configurações de Header <config_header>
	E tenha perfil Administrador
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status>
	E exibirá a mensagem de sucesso <mensagem_sucesso_1> 
	
	
Esquema do Cenário: Realizar cadastro de erp - Perfil Analista Contas a Pagar
	E tenha as configurações de Header <config_header>
	E tenha perfil Analista Contas a Pagar
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 
	
	
Esquema do Cenário: Realizar cadastro de erp - Perfil Analista Contas a Receber
	E tenha as configurações de Header <config_header>
	E tenha perfil Analista Contas a Receber
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 
	
	
Esquema do Cenário: Realizar cadastro de erp - Perfil Aprovador
	E tenha as configurações de Header <config_header>
	E tenha perfil Aprovador
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 		
	

Esquema do Cenário: Realizar cadastro de erp - Perfil Gestor
	E tenha as configurações de Header <config_header>
	E tenha perfil Gestor
	Quando eu enviar todos os campos de cadastro com as informações preenchidas
	E realizar solicitação através do método <metodo_get>
	E resgatar o token <token>
	Então retornará o status <codigo_status_401>
	E exibirá a mensagem de sucesso <mensagem_sucesso_4> 				
	

Cenario: Realizar cadastro de erp - Nao preenchimento ID
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <ID>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_A1>


Cenario: Realizar cadastro de erp - Nao preenchimento Descricao
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <Descricao>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_B1>
		

Cenario: Realizar cadastro de erp - Nao preenchimento FileSystems Integracao
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <FileSystem>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_C1>
		

Cenario: Realizar cadastro de erp - Nao preenchimento Data Inicio
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E nao preencher o campo <Data_Inicio>
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_D1>
		

Cenario: Realizar cadastro de erp - Data Inicio menor que a Data atual
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E o campo <Data_Inicio> com uma data menor que a Data atual
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_E1>
		

Cenario: Realizar cadastro de erp - Data Final menor que a Data atual
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E o campo <Data_Final> com uma data menor que a Data atual
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_F1>
		

Cenario: Realizar cadastro de erp - Data Final maior que Data Inicio
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu preencher todos os campos de cadastro
		E o campo <Data_Final> com uma data maior que Data Inicio
		E realizar solicitação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de erro <mensagem_erro_G1>


