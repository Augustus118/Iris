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
		Entao verei a mensagem
		E meu cadastro logado na base de dados

Cenario: Realizar cadastro de erp - Checar Dashboards
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E concluir o cadastro
		Entao verei a mensagem
		E nao estara dispon�vel para Dashboards do Portal Iris

Cenario: Realizar cadastro de erp - Nao preenchimento Data Fim
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Data Fim
		E concluir o cadastro
		Entao verei a mensagem
		E meu cadastro logado na base de dados

Cenario: Realizar cadastro de erp - Perfil Analista Contas a Pagar
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Pagar
		Entao nao poderei ter acesso a Gestao erp
		E criar novos cadastros erps

Cenario: Realizar cadastro de erp - Perfil Analista Contas a Receber
		Quando eu logar na plataforma Iris com meu perfil Analista Contas a Receber
		Entao nao poderei ter acesso a Gestao erp
		E criar novos cadastros erp

Cenario: Realizar cadastro de erp - Perfil Aprovador
		Quando eu logar na plataforma Iris com meu perfil Aprovador
		Entao nao poderei ter acesso a Gestao erp
		E criar novos cadastros erps

Cenario: Realizar cadastro de erp - Nao preenchimento ID
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo ID
		E concluir o cadastro
		Entao verei a mensagem de erro A
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Nao preenchimento Descricao
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Descricao
		E concluir o cadastro
		Entao verei a mensagem de erro B
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Nao preenchimento FileSystems Integracao
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo FileSystems Integracao
		E concluir o cadastro
		Entao verei a mensagem de erro C
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Nao preenchimento Data Inicio
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E nao preencher o campo Data Inicio
		E concluir o cadastro
		Entao verei a mensagem de erro D
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Data Inicio menor que a Data atual
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E o campo Data Inicio com uma data menor que a Data atual
		E concluir o cadastro
		Entao verei a mensagem de erro
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Data Final menor que a Data atual
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E o campo Data Final com uma data menor que a Data atual
		E concluir o cadastro
		Entao verei a mensagem de erro F
		E meu cadastro nao estara logado na base de dados

Cenario: Realizar cadastro de erp - Data Final maior que Data Inicio
		E meu perfil seja Administrador
		E esteja na secao Gestao erp
		Quando eu preencher todos os campos disponiveis na tela
		E o campo Data Final com uma data maior que Data Inicio
		E concluir o cadastro
		Entao verei a mensagem de erro G
		E meu cadastro nao estara logado na base de dados


