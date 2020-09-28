#language:pt


Funcionalidade: edicao de novos convenios bancarios
eu como usuario administrador
quero editar cadastro de novos convenios


Contexto: Cadastro de novo Convenio Bancario
		Dado que eu esteja logado no Portal Iris

Cenario: edicao de Convenio Bancario - perfil Administrador
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		E  validar campos obrigatórios para preenchimento 
		Quando eu editar todos os campos disponiveis para edicao
		E concluir edicao
		Entao verei a mensagem <mensagem_sucesso>
		E meu cadastro logado na base de dados
		E a edicao do cadastro deve ser registrado com data, horario e usuario
		E nao estara disponivel para os Dashboards do Portal Iris
		
Cenario: editar cadastro de Convenio Bancario - Perfil Analista Contas a Pagar
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Pagar
		Entao nao poderei ter acesso a edicao de Convenio Bancario
		 

Cenario: editar cadastro de Convenio Bancario - Perfil Analista Contas a Receber
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Receber
		Entao nao poderei ter acesso a edicao Bancario
		

Cenario: editar cadastro de Convenio Bancario - Perfil Aprovador
		Quando eu logar na plataforma Iris com meu perfil Aprovador
		Entao nao poderei ter acesso a edicao de Convenio Bancario
		
Cenario: editar cadastro de Convenio Bancario - Perfil Gestao
		Quando eu logar na plataforma Iris com meu perfil Aprovador
		Entao nao poderei ter acesso a edicao de Convenio Bancario
		
Cenario: editar cadastro de Convenio Bancario - Nao preenchimento ID
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo <ID>
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_A>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento carteira do convenio
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo carteira do convenio
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_B>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento Banco
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Valor Banco
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_C>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Nao preenchimento  Agencia
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo  Agencia
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_D>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Conta
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Conta
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados

Cenario: editar cadastro de Convenio Bancario - Layout erp
		E esteja na secao cadastro de Convenio Bancario
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Layout erp
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		
		Cenario: editar cadastro de Convenio Bancario - Layout Banco
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Layout Banco
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		
Cenario: editar cadastro de Convenio Bancario - forma de pagamento
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo forma de pagamento
		E concluir edicao
		Entao verei a mensagem de erro <mensagem_erro_E>
		E meu cadastro nao estara logado na base de dados
		
Cenario: edicao cadastro de Convenio Bancario -  Vigencia Inicial
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo  Vigencia Inicial
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_F>
		E meu cadastro nao estara logado na base de dados

Cenario: edicao cadastro de Convenio Bancario - Vigencia Inicial maior que Vigencia final
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando eu preencher todos os campos disponiveis na tela
		E preencher o campo Vigencia inicial com valor maior que a vigencia final
		E concluir o cadastro
		Entao verei a mensagem de erro <mensagem_erro_G>
		E meu cadastro nao estara logado na base de dados
		
