#language:pt


Funcionalidade: Cadastro de novos convenios bancarios
eu como usuario administrador
quero fazer o cadastro de novos convenios


Contexto: Cadastro de novo Convenio Bancario
		Dado que eu esteja logado no Portal Iris

Cenario: Realizar cadastro de Convenio Bancario - perfil Administrador
		E meu perfil seja Administrador
		E esteja na secao cadastro de convenio
		E  validar campos obrigatórios para preenchimento 
		Quando eu preencher todos os campos disponiveis na tela
		E concluir o cadastro
		Entao verei a mensagem <mensagem_sucesso>
		E meu cadastro logado na base de dados
		E nao estara disponivel para os Dashboards do Portal Iris
		E o usuario que fez o cadastro deve ser registrado com data e horario do cadastro
		

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento empresa
		E meu perfil seja Administrador
		E esteja na secao de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo <empresa>
		E concluir o cadastro
		Entao verei a mensagem <mensagem_empresa>
		E nao concluira o cadastro

Cenario: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Pagar
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Pagar
		Entao nao poderei ter acesso ao cadastro de Convenio Bancario
		 

Cenario: Realizar cadastro de Convenio Bancario - Perfil Analista Contas a Receber
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Receber
		Entao nao poderei ter acesso ao Convenio Bancario
		

Cenario: Realizar cadastro de Convenio Bancario - Perfil Aprovador
		Quando eu logar na plataforma Iris com meu perfil Aprovador
		Entao nao poderei ter acesso ao cadastro de Convenio Bancario
		

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento ID
		E meu perfil seja Administrador
		E esteja na secao  cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo <ID>
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_A>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento carteira do convenio
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo carteira do convenio
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_B>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento Banco
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Valor Banco
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_C>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Nao preenchimento  Agencia
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo  Agencia
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_D>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Conta
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Conta
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario -  Vigencia Inicial
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo  Vigencia Inicial
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_F>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Vigencia Inicial maior que Vigencia final
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E preencher o campo Vigencia inicial com valor maior que a vigencia final
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_G>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Conta
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Conta
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de Convenio Bancario - Layout ERP
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Layout ERP
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		
		Cenario: Realizar cadastro de Convenio Bancario - Layout Banco
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Layout Banco
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		
Cenario: Realizar cadastro de Convenio Bancario - forma de pagamento
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo forma de pagamento
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		

	

