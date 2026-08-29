#language: pt

Funcionalidade: Autenticação na plataforma
Como cliente da EBA-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualixar meus pedidos


Cenario: Login realizado com sucesso
Dado que estou na pagina de login da EBAC-SHOP
Quando preencher o campo de senha com dados válidos
E clicar no botão de login
Então devo ser direcionado para a tela de checkout


Cenario: Login com usuário inválido
Dado que estou na página de login da EBAC-SHOP
Quando preencher o campo de usuario com dados invalidos
E preencher com campo de senha com dados válidos e clicar no botão de login
Então deve ser exibida a mensagem de alerta "usuario ou senha invalidos"


Cenario: Login com senha inválida
Dado que estou na página de login da EBAC-SHOP
Quando preencher o campo de usuário com dados válidos
E preencher o campo de senha com dados invalidos e clicar no botão de login
Então deve ser exibida a mensagem de alerta "Usuario ou senha inválidos"