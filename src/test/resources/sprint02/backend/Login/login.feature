#language:pt


Funcionalidade: Realizar login no portal iris para validar a autenticação e suas mensagens de erros e de sucesso
Como usuario do portal quero logar 



Esquema do Cenario: Autenticação - resposta deve ser 200
       Contexto: Confirmar login na api 
        Dado que o sistema acesse a uri <api>
        
        
        E eu tenha credenciais basicas de autenticação <username> and <password>
        Quando I GET /
        Entao a resposta deve ser 200
        E a resposta nao deve 404
        E a resposta nao deve 401
        
        |username|password|
        |        |        |
        
Esquema do Cenario: Autenticação - resposta deve ser 500
       
        
        
        Quando I GET /
        Entao a resposta deve ser 500
        E a resposta nao deve 404
        E a resposta nao deve 401

				|username|password|
        |        |        |
        
Esquema do Cenario: Unauthorized senha incorreta - Autenticação - resposta deve ser 401
        
        
        Quando I GET /
        Entao a resposta deve ser 401	
        E a resposta nao deve 200
        
        |username|password|
        |        |        |
        

Esquema do Cenario: Unauthorized usuario incorreto - Autenticação - resposta deve ser 401
       
        
        Quando I GET /
        Entao a resposta deve ser 401	
        E a resposta nao deve 200
				
				|username|password|
        |        |        |
        
Esquema do Cenario: Unauthorized campo vazio - Autenticação - resposta deve ser 401
        
        
        Quando I GET /
        Entao a resposta deve ser 401	
        E a resposta nao deve 200 
        
        |username|password|
        |        |        |
        
      Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando I GET /
        Entao a resposta deve ser 200	
        E a resposta nao deve 200
        
         Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando I GET /
        Entao a resposta deve ser 200	
        E a resposta nao deve 200   
        
         Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando I GET /
        Entao a resposta deve ser 200	
        E a resposta nao deve 200   
        
         Esquema do Cenario: Test output - resposta do cookie deve ser 200
        
        
        Quando I GET /
        Entao a resposta deve ser 200	
        E a resposta nao deve 200      
        
        
        Esquema do Cenario: should override the authorization header correctly
        Dado I set Authorization header to token1
        E have basic authentication credentials postman and password
        Quando I GET /get
