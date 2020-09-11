#language:pt


Funcionalidade: Consulta de lista de convenios bancarios
eu como usuario administrador
quero fazer o cadastro de novos convenios


Contexto: Consulta lista Convenio Bancario
		Dado que eu esteja logado no Portal Iris


Cenario: Realizar consulta lista Convenio Bancario - Perfil Administrador
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar a lista de erps através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os convenios cadastrados 
		
		
Cenario: Realizar consulta lista Convenio Bancario - Perfil Gestor
		E tenha as configurações de Header <config_header>
		E tenha perfil Gestor
		Quando eu solicitar a lista de convenios através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os convenios cadastrados 
		
		
Cenario: Realizar consulta de lista Convenio Bancario - Perfil Analista de Contas a Receber
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Receber
		Quando eu solicitar a lista de convenios através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os convenios cadastrados 					
		

Cenario: Realizar consulta de lista Convenio Bancario - Perfil Analista de Contas a Pagar
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Pagar
		Quando eu solicitar a lista de convenios através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os convenios cadastrados 


Cenario: Realizar consulta de lista Convenio Bancario - Perfil Aprovador
		E tenha as configurações de Header <config_header>
		E tenha perfil Aprovador
		Quando eu solicitar a lista de convenios através do método <método_get>
		E resgatar o token <token>
		Entao retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_2>
		E listará os convenios cadastrados 
