#language:pt

Funcionalidade: gestao de consulta de erps cadastrados
Como usuario Administrador
Quero consultar erps cadastrados


Contexto: Consulta de erps cadastrados no Portal Iris
		Dado que eu esteja logado no Portal Iris


Cenario: Realizar consulta de erps cadastrados - Sucesso
		E meu perfil seja Administrador
		E eu esteja na area de gestao de erps
		Quando eu clicar na lista de erps
		Entao verei todos os erps cadastrados
		
Cenario: Realizar consulta de erps cadastrados - Detalhamento
		E meu perfil seja Administrador
		E eu esteja na area de gestao de erps
		E eu de um click na lista de erps
		Quando eu selecionar "Ver Detalhes"
		Entao verei detalhes do cadastro	
		
		
Cenario: Realizar consulta de erps cadastrados - Cancelar Detalhamento
		E meu perfil seja Administrador
		E eu esteja na area de gestao de erps
		E eu de um click na lista de erps
		Quando eu selecionar "Ver Detalhes"
		E clicar no "X"
		Entao verei a lista de ERPs sem detalhamento			
		
		