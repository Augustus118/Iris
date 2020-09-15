#language:pt


Funcionalidade: Realizar login no portal iris para validar a autenticação e suas mensagens de erros e de sucesso
Como usuario do portal quero logar 




       Contexto: Confirmar login na api 
        Dado que o sistema acesse a uri <api>
        E eu tenha credenciais basicas de autenticação <Access Token>
        
 Esquema do Cenario: Autenticação - resposta deve ser 200       
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200
        E a resposta nao deve 404
        E a resposta nao deve 401
        
        
        
Esquema do Cenario: Autenticação - resposta deve ser 500
       
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 500
        E a resposta nao deve 404
        E a resposta nao deve 401

				
        
Esquema do Cenario: Unauthorized token incorreto - Autenticação - resposta deve ser 401
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 401	
        E a resposta nao deve 200
        
        
        

Esquema do Cenario: perfil Admnistrador - Autenticação - resposta deve ser 200
       
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200	
        E a resposta nao deve 401
				
				
        
Esquema do Cenario: Unauthorized campo vazio - Autenticação - resposta deve ser 401
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 401	
        E a resposta nao deve 200 
        
      
        
      Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200	
        E a resposta nao deve 200
        
         Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200	
        E a resposta nao deve 200   
        
         Esquema do Cenario: Test output - resposta do header deve ser 200
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200	
        E a resposta nao deve 200   
        
         Esquema do Cenario: Test output - resposta do cookie deve ser 200
        
        
        Quando chamar o metodo <put>
        Entao a resposta deve ser 200	
        E a resposta nao deve 200     
