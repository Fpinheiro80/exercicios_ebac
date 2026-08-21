#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Configurar produto com sucesso
Dado que estou na pagina de um produto
Quando selecionar uma cor disponivel
E selecionar um tamanho disponivel
E escolher uma quantidade entre 1 e 10 produtos
Então devo conseguir adicionar o produto ao carrinho


Cenario: Validar seleções obrigatórias
Dado que estou na página de um produto
Quando tentar adicionar o produto ao carrinho sem selecionar a cor
E sem selecionar o tamanho
E sem informar a quantidade
Então o sistema deve exibir uma mensagem informando que esses campos são obrigatorios
E o produto não deve ser adicionado ao carrinho


Cenario: Limitar a quantidade máxima de produtos
Dado que estou configurando um produto
Quando selecionar uma quantidade superior a 10 unidades
Então o sistema não deve permitir a seleção
E deve permitir no maximo 10 produtos por venda


Cenario: Limpar as configurações do produto
Dado que selecionei uma cor, um tamanho e uma quantidade para o produto 
Quando clicar no botão "limpar"
Então todas as opções selecionadas devem voltar ao estado original
E nenhuma cor ou tamanho deve permanecer selecionado
E a quantidade deve retornar ao valor padrão