#language:pt


Funcionalidade: Gestao de cadastro de novos erps
eu como usuario administrador
quero fazer o cadastro de novos erps


Contexto: Cadastro de novos erps no Portal Iris
		Dado que eu esteja logado no Portal Iris

Cenario: Realizar cadastro de erp - Checar Base de dados
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E concluir o cadastro
		Entao verei a mensagem <mensagem_sucesso>
		E meu cadastro logado na base de dados
		E nao estara dispon�vel para os Dashboards do Portal Iris


Cenario: Realizar cadastro de erp - Nao preenchimento Identificacao
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Identificacao
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_B>
		E meu cadastro nao estara logado na base de dados
		

Cenario: Realizar cadastro de erp - Nao preenchimento Erro Diretório
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Erro Diretório
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_C1>
		E meu cadastro nao estara logado na base de dados
		
Cenario: Realizar cadastro de erp - Nao preenchimento Origem Diretório
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Origem Diretório
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_C2>
		E meu cadastro nao estara logado na base de dados
		
Cenario: Realizar cadastro de erp - Nao preenchimento Destino Diretório
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Destino Diretório
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_C3>
		E meu cadastro nao estara logado na base de dados			
			


