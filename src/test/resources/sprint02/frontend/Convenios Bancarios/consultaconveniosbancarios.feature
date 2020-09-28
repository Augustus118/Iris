#language:pt


Funcionalidade: Cadastro de novos convenios bancarios
eu como usuario administrador
quero fazer o cadastro de novos convenios


Contexto: Cadastro de novo Convenio Bancario
		Dado que eu esteja logado no Portal Iris

Cenario: consultar Convenio Bancario - perfil Administrador
		E meu perfil seja Administrador
		E esteja na secao cadastro de convenio
		Quando eu inserir dados para a busca
		Entao verei o resultado da busca
		
Cenario: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Pagar
		E meu perfil seja Analista Contas a Pagar
		E esteja na secao cadastro de convenio
		Quando eu inserir dados para a busca
		Entao verei o resultado da busca
		 

Cenario: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Receber
		E meu perfil seja Analista Contas a Receber
		E esteja na secao cadastro de convenio
		Quando eu inserir dados para a busca
		Entao verei o resultado da busca
		

Cenario: Realizar cadastro de Convenio Bancario - Perfil Aprovador
		E meu perfil seja Aprovador
		E esteja na secao cadastro de convenio
		Quando eu inserir dados para a busca
		Entao verei o resultado da busca
		
Cenario: Realizar cadastro de Convenio Bancario - Gestao
		E meu perfil seja Gestao
		E esteja na secao cadastro de convenio
		Quando eu inserir dados para a busca
		Entao verei o resultado da busca