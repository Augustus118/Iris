#language:pt

Funcionalidade: gestao de consulta de erps cadastrados
Como usuario Administrador
Quero listar erps cadastrados


Contexto: Consulta de erps cadastrados no Portal Iris
		Dado que eu acesse a uri <api>


Cenario: Realizar consulta de erps cadastrados - Perfil Administrador
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os erps cadastrados 
		
		
Cenario: Realizar consulta de erps cadastrados - Perfil Gestor
		E tenha as configurações de Header <config_header>
		E tenha perfil Gestor
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os erps cadastrados 
		
		
Cenario: Realizar consulta de erps cadastrados - Perfil Analista de Contas a Receber
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Receber
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os erps cadastrados 					
		

Cenario: Realizar consulta de erps cadastrados - Perfil Analista de Contas a Pagar
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Pagar
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os erps cadastrados 


Cenario: Realizar consulta de erps cadastrados - Perfil Aprovador
		E tenha as configurações de Header <config_header>
		E tenha perfil Aprovador
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os erps cadastrados 
	
