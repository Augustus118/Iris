#language:pt


Funcionalidade: Gestao de Inativacao de convenios cadastrados
eu como usuario Administrador
Quero verificar a inativacao pelo periodo de vigencia final dos convenios cadastrados



Contexto: Confirmar inativacao de convenios com periodo de vigencia expirado
		Dado que eu esteja logado no Portal Iris


Cenario: inativar empresa na lista Convenio Bancario -  Vigencia Inicial
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando selecionar a opção inativacao
		Entao verei a data de Vigencia final preenchida
		E e a data de vigencia deve ser valida 
		
Cenario: inativar Convenio Bancario - Vigencia Inicial maior que Vigencia final
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando selecionar a opção inativacao
		E verificar que a Vigencia inicial esta com valor maior que a vigencia final
		Entao verei a mensagem de erro <mensagem_erro_G>
		
		
Cenario: inativar Convenio Bancario - Inaticação por Vigencia Final
		E meu perfil seja Administrador
		E esteja na secao cadastro de Convenio Bancario
		E selecionar edicao de cadastro
		Quando selecionar a opção inativacao
		E verificar que a data de Vigencia final esta expirada
	  Entao verei uma mensagem que a conta esta inativa
		
		