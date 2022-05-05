@language: pt

Funcionalidade: Login para autenticação.

Cenário:Acessar "sign in"
     Dado o usuário está da tela do feed 
     Quando aciona o botão "sing in"
     Então a tela para Logar é exibida.


Cenário:Proceder Login
      Dado o usuário está na tela "sign in"
      Quando preenche os seguintes campos
          |e-mail           |password|
          |mileide@gmail.com|********|
      E clica no botão "sign in"
      Então o login é feito com sucesso.


Cenário:Acessar "sign up"
     Dado o usuário está da tela do feed 
     Quando aciona o botão "sing up"
     Então a tela para cadastro é exibida.


Cenário:cadastro válido
     Dado o usuário está na tela "sing up"
     Quando preenche os seguintes campos 
      |username|email            |password|
      |mileide |mileide@gmail.com|********|
     E clica no botão "sing up"
     Então o cadastro é concluído 


Cenário:Cadastro inválido 
      Dado o usuário está na tela "sing up"
      E preenche o seguinte "campo" com "valor" inválido
           |campo   |valor     |
           |username|mileide   |
           |email   |milei@.com|
           |password|*******   |
      Quando clica no botão "sign up"
      Então o sistema retorna a mensagem 
           |email is being used incorrectly in ".com"|


Cenário:Esquema de cenário com valores não preenchidos.
      Dado o usuário está na tela de "sing up"
      E não preenche os seguintes campos com valores
          |<username>|<email>|<password>|
      E clica no botão "sing up"
      Então o sistema retorna a "<mensagem>"
 Exemplos:
          |exemplos  |username|email                     |password|Mensagem|
          |exemplo 01|Mileide |                          |******* |email can't be blank|
          |exemplo 02|        |mileidemarcelina@gmail.com|******* |username can't be blank|

