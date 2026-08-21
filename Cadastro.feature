#language: pt

Funcionalidade: Concluir cadastro para finalizar a compra
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra


Esquema do Cenário: Realizar cadastro dom dados validos
Dado que estou na página de cadastro da EBAC-SHOP
Quando preencher todos os campos obrigatórios marcados com asterisco com dados válidos
E informar o e-mail "<email>"
E clicar no botão "Cadastrar"
Então o cadastro deve ser realizado com sucesso
E devo conseguir prosseguir para finalizar a compra.
Exemplos:
nome	sobrenome	telefone	email
João	Silva	81999999999	joao@email.com
Maria	Santos	81988888888	maria@email.com 


Esquema do Cenário: Validar formato do e-mail
Dado que estou na página de cadastro da EBAC-SHOP
Quando preencher os campos obrigatórios com dados válidos
E informar o e-mail inválido "<email>"
E clicar no botão "Cadastrar"
Então o sistema não deve permitir a realização do cadastro
E deve exibir uma mensagem de erro informando que o e-mail possui formato inválido.
Exemplos:
email
joaoemail.com
maria@email
@email.com
joao@


Esquema do Cenário: Tentar realizar cadastro com campos obrigatórios vazios
Dado que estou na página de cadastro da EBAC-SHOP
Quando deixar o campo obrigatório "<campo>" vazio
E clicar no botão "Cadastrar"
Então o sistema não deve permitir a realização do cadastro
E deve exibir uma mensagem de alerta informando que o campo "<campo>" é obrigatório.
Exemplos:
campo
Nome
Sobrenome
E-mail
Telefone
Endereço