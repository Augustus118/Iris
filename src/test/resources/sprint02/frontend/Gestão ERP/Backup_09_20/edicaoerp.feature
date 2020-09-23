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

Cenario: Realizar edicao de erps cadastrados - edicao com sucesso sem Data Fim
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem Data Fim
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

Cenario: Realizar edicao de erps cadastrados - edicao sem Data Inicio
		E meu perfil seja Administrador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		E preencher todos os campos disponiveis na tela sem data inicio
		E concluir a edicao
		Entao verei uma mensagem de erro <mensagem_Erro_B>

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
				

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Analista de Contas a Pagar
		E meu perfil seja Analista de Contas a Pagar
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		Entao verei a edicao desabilitada

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Analista de Contas a Receber
		E meu perfil seja Analista de Contas a Receber
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		Entao verei a edicao desabilitada

Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Gestor
		E meu perfil seja Gestor
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		Entao verei a edicao desabilitada
		
Cenario: Realizar edicao de erps cadastrados - edicao com Perfil Aprovador
		E meu perfil seja Aprovador
		E tenha realizado uma pesquisa
		Quando eu selecionar um erp para edicao
		Entao verei a edicao desabilitada		