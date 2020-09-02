#language:pt


Funcionalidade: Gestao de Inativacao de erps cadastrados
eu como usuario Administrador
Quero inativar erps cadastrados



Contexto: Inativacao de erps cadastrados no Portal Iris
		Dado que eu acesse a uri <api>


Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador
		E tenha as configurações de Header <config_header>
		E meu perfil seja Administrador
		Quando eu selecionar um erp <erp_id>
		E solicitar sua inativação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso>
		E o campo <inativacao_campo> será igual a <codigo_inativacao>
		
		
Cenario: Realizar inativacao de erps cadastrados - Perfil Gestor
		E tenha as configurações de Header <config_header>
		E meu perfil seja Gestor
		Quando eu selecionar um erp <erp_id>
		E solicitar sua inativação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_erro_401>
		E exibirá a mensagem de erro <mensagem_erro_P1>
		E o campo <inativacao_campo> será igual a <codigo_inativacao_inalterado>
		
		
Cenario: Realizar inativacao de erps cadastrados - Perfil Analista de Contas a Receber
		E tenha as configurações de Header <config_header>
		E meu perfil seja Analista de Contas a Receber
		Quando eu selecionar um erp <erp_id>
		E solicitar sua inativação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_erro_401>
		E exibirá a mensagem de erro <mensagem_erro_P2>
		E o campo <inativacao_campo> será igual a <codigo_inativacao_inalterado>				


Cenario: Realizar inativacao de erps cadastrados - Perfil Analista de Contas a Pagar
		E tenha as configurações de Header <config_header>
		E meu perfil seja Analista de Contas a Pagar
		Quando eu selecionar um erp <erp_id>
		E solicitar sua inativação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_erro_401>
		E exibirá a mensagem de erro <mensagem_erro_P3>
		E o campo <inativacao_campo> será igual a <codigo_inativacao_inalterado>	


Cenario: Realizar inativacao de erps cadastrados - Perfil Aprovador
		E tenha as configurações de Header <config_header>
		E meu perfil seja Aprovador
		Quando eu selecionar um erp <erp_id>
		E solicitar sua inativação através do método <metodo_get>
		E resgatar o token <token>
		Então retornará o status <codigo_status_erro_401>
		E exibirá a mensagem de erro <mensagem_erro_P4>
		E o campo <inativacao_campo> será igual a <codigo_inativacao_inalterado>
