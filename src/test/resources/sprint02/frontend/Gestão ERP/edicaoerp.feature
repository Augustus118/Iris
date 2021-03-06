#language:pt


Funcionalidade: Gestao de edicao de erps cadastrados
Eu como usuario Administrador
Quero editar erps cadastrados


Contexto: edicao de erps cadastrados no Portal Iris
		Dado que eu esteja logado no Portal Iris

Cenario: Realizar edicao de erps cadastrados - edicao com sucesso
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela
		E concluir a edicao
		Entao verei uma mensagem de sucesso <mensagem_sucesso>
		E o registro devidamente editado

Cenario: Realizar edicao de erps cadastrados - edicao sem Identificacao
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem Identificacao
		E concluir a edicao
		Entao verei uma mensagem de erro <mensagem_Erro_A>

Cenario: Realizar edicao de erps cadastrados - edicao sem Erro Diretório
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem Erro Diretório
		E concluir a edicao
		Entao verei uma mensagem de erro <mensagem_Erro_C1>
		
Cenario: Realizar edicao de erps cadastrados - edicao sem Origem Diretório
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem Origem Diretório
		E concluir a edicao
		Entao verei uma mensagem de erro <mensagem_Erro_C2>
		
Cenario: Realizar edicao de erps cadastrados - edicao sem Destino Diretório
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem Destino Diretório
		E concluir a edicao
		Entao verei uma mensagem de erro <mensagem_Erro_C3>
	