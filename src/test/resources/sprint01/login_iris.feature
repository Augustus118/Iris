# language: pt

Funcionalidade: Realizar login no portal iris
para validar a autenticação do portal iris 
Como usuario do portal quero logar e validar as permissões de administrador, gestor ,analista de contas a pagar , analista de contas a receber
 , aprovadore segurança TI

Contexto: possibilidade de acessar o portal iris
Dado que o usuário possa acessar a tela de login do portal iris


Esquema do Cenário: realizar login no portal iris com usuário e senha válido 
Quando informar um <usuario> valido 
E inserir uma <senha> valido
Então o sistema deve permitir a autenticação do usuário 
E o tipo de <permissao> do usuário deve ser exibido

Exemplos: 

 | usuario | senha   | permissao      |
 |fabio    |0001     |administrador   |
 |luis     |0002     |gestor          |
 |jose     |0003     |contas a pagar  |
 |alex     |0004     |contas a receber|
 |rober    |0005     |aprovador       |
 |oliver   |0006     |segurança TI    |
 


 
Esquema do Cenário:  realizar login no portal iris com usuários invalidos

Quando informar um <usuario> invalido 
E inserir uma <senha> valido
Então o sistema não deve permitir a autenticação do usuário 
E devera exibir mensagem de erro 

Exemplos: 

| usuario | senha |
|claudio  |0001   |
|pipo     |0002   | 
|costa    |0003   |



 
Esquema do Cenário: realizar login no portal iris com senha invalido

Quando informar um <usuario> valido 
E inserir uma <senha> invalido
Então o sistema não deve permitir a autenticação do usuário
E devera exibir mensagem de erro 

Exemplos: 

| usuario | senha |
| fabio   |0002   |
| luis    |0003   | 
| jose    |0001   |


Esquema do Cenário: realizar login no portal iris sem preenchimento de campos

Quando nao informar um <usuario> 
E não inserir uma <senha> 
Então o sistema não deve permitir a autenticação do usuário
E devera exibir mensagem de erro 

Esquema do Cenário: realizar login no portal iris sem preenchimento de senha

Quando informar um <usuario> valido 
E nao inserir uma <senha>
Então o sistema não deve permitir a autenticação do usuário
E devera exibir mensagem de erro 

Exemplos: 

| usuario | senha |
| fabio   |       |

Esquema do Cenário: realizar login no portal iris sem inserir  usuario

Quando nao informar um <usuario>  
E  inserir uma <senha> valido
Então o sistema não deve permitir a autenticação do usuário
E devera exibir mensagem de erro 

Exemplos: 

| usuario | senha |
|         | 0001  |






