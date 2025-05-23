#language: pt

Funcionalidade: Configurar produto   
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu tenha selecionado as opções necessarias para a compra do produto

Cenario: Seleção de Cores, Tamanho e Quantidade
Quando eu Selecionar a Cor, Tamanho e Quantidade
Então deve ser disponibilizado a "comprar o Produto"

Cenario: Não selecionei as informações necessarias
Quando eu não selecionar a Cor, Tamanho e Quantidade 
Então deve ser indiponibilizada a opção de "comprar o produto"

Cenario: Cliquei na Opção de limpar
Quando for utilizado a opção limpar
Então deve ser "retornado todas as opções ao estado original"

Esquema do Cenario: Seleção de caracteristica do produto
Quando for selecionado <Cor>, <Tamanho>, e <Quantidade>
Então deve ser <Liberada a compra> do produto

Exemplos:

|Cor     |Tamanho|Quantidade| Liberada a Compra        |
|Azul    |  42   |    1     | sim                      |
|vermelho|  12   |    4     | sim                      |
|Roxo    |  24   |    11    | Não                      |
|--      |  --   |    -     | Não                      |