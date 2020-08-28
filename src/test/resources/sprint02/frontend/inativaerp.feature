#language:pt


Funcionalidade: Gestao de Inativacao de erps cadastrados
eu como usuario Administrador
Quero inativar erps cadastrados



Contexto: Inativacao de erps cadastrados no Portal Iris
		Dado que eu esteja logado no Portal Iris


Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp
		E concluir sua inativacao
		Entao verei uma mensagem de sucesso

Cenario: Realizar consulta de erps cadastrados - Perfil Gestor
		E meu perfil seja Analista
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp
		Entao verei a inativacao desabilitada

Cenario: Realizar consulta de erps cadastrados - Perfil Analista de Contas a Receber
		E meu perfil seja Analista de Contas a Receber
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp
		Entao verei a inativacao desabilitada

Cenario: Realizar consulta de erps cadastrados - Perfil Analista de Contas a Pagar
		E meu perfil seja Analista de Contas a Pagar
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp
		Entao verei a inativacao desabilitada

Cenario: Realizar consulta de erps cadastrados - Perfil Seguranca da Informacao
		E meu perfil seja Analista de Seguranca da Informacao
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp
		Entao verei a inativacao desabilitada