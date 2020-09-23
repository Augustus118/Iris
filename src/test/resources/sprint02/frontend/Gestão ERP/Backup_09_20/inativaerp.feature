#language:pt


Funcionalidade: Gestao de Inativacao de erps cadastrados
eu como usuario Administrador
Quero inativar erps cadastrados



Contexto: Inativacao de erps cadastrados no Portal Iris
		Dado que eu esteja logado no Portal Iris


Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador Inativacao
		E meu perfil seja Administrador
		E esteja na tela de edicao de erp
		Quando eu selecionar a flag inativacao
		E concluir
		Entao verei uma mensagem de sucesso <mensagem_sucesso>
		
		
Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador Ativacao
		E meu perfil seja Administrador
		E esteja na tela de edicao de erp
		Quando eu deselecionar a flag inativacao
		E concluir
		Entao verei uma mensagem de sucesso <mensagem_sucesso>
		

Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador Filtro Inativacao
		E meu perfil seja Administrador
		E esteja na tela de edicao de erp
		Quando eu selecionar a flag inativacao
		E concluir
		Entao verei uma mensagem de sucesso <mensagem_sucesso>
		
		
Cenario: Realizar inativacao de erps cadastrados - Perfil Administrador Filtro Ativacao
		E meu perfil seja Administrador
		E esteja na tela de edicao de erp
		Quando eu deselecionar a flag inativacao
		E concluir
		Entao verei uma mensagem de sucesso <mensagem_sucesso>		
		
		

