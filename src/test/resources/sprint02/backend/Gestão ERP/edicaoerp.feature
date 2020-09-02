#language:pt


Funcionalidade: Gestao de edicao de erps cadastrados
Eu como usuario Administrador
Quero editar erps cadastrados


Contexto: edicao de erps cadastrados no Portal Iris
		Dado que eu acesse a uri <api>

Cenario: Realizar edicao de erps cadastrados - edicao com sucesso
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status>
		E exibirá a mensagem de sucesso <mensagem_sucesso_3>
		E os campos Descricao e File System com os dados <Descricao>, <FileSystem>
		
		
Cenario: Realizar edicao de erps cadastrados - edicao com sucesso e mesmos dados
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_204>
		E exibirá a mensagem de sucesso <mensagem_sucesso_3>
		E os campos Descricao e File System com os dados <Descricao>, <FileSystem>		


Cenario: Realizar edicao de erps cadastrados - edicao sem Descricao
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um erp <erp_id> para edicao
		E deixar o campo Descricao sem preenchimento
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de sucesso <mensagem_erro_A2>


Cenario: Realizar edicao de erps cadastrados - edicao sem Data Inicio
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um erp <erp_id> para edicao
		E deixar o campo Data Inicio sem preenchimento
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de sucesso <mensagem_erro_B2>
				

Cenario: Realizar edicao de erps cadastrados - edicao sem FileSystem
		E tenha as configurações de Header <config_header>
		E tenha perfil Administrador
		Quando eu solicitar um erp <erp_id> para edicao
		E deixar o campo FileSystem sem preenchimento
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_4>
		E exibirá a mensagem de sucesso <mensagem_erro_C2>
		

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Analista de Contas a Pagar
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Pagar
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P1>
		

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Analista de Contas a Receber
		E tenha as configurações de Header <config_header>
		E tenha perfil Analista de Contas a Receber
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P2>		


Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Gestor
		E tenha as configurações de Header <config_header>
		E tenha perfil Gestor
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P3>
		

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Aprovador
		E tenha as configurações de Header <config_header>
		E tenha perfil Aprovador
		Quando eu solicitar um erp <erp_id> para edicao
		E preencher os campos Descricao com <Descricao> e File System com <FileSystem>
		E solicitar edição através do método <metodo_put>
		E resgatar o token <token>
		Então retornará o status <codigo_status_401>
		E exibirá a mensagem de erro <mensagem_erro_P4>		
