#language: Pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
Dado que eu conclua meu cadastro e finalize minha compra

Cenario: Deve ser inserido todos os dados solicitados
Quando o usuario digitar todos os dados solicitados 
E Finalizar o Cadastro
Então a compra sera liberada para finalização

Cenario: Email inserido é invalido
Quando o usuario digitar um email Invalido
Então deve ser exibido a mensagem "email invalido"

Cenario: Tentativa de finalizar o cadastro com dados faltando
Quando o usuario tentar finalizar o cadastro 
E os dados necessarios estiverem incompletos 
Então deve ser exibido a mensagem de "Cadastro não pode ser concluido por falta de informações!"

Esquema do Cenario: Permissão de cadastro com apenas dados validos

Quando o cliente colocar um <email e dados validos>
Então sera <concluido o cadastro> do mesmo

Exemplos:
|Nome    |Sobrenome|Pais      | Endereço           |Cidade         |CEP         |Telefone     | Email               |Concluido o Cadastro    |
|Igor    |Kauê     |Brasil    |Erival bento zanetti|Biritiba mirim |08940000    |11941111675  |Igorkaue1@hotmail.com|sim                     |                 
|Kaique  |         |          |Rua onze            |São Paulo      |48919521    |11958756243  |Kaique01@ebac.com    |Não                     |
|Fabio   |Santos   |Brasil    |Rua vinte e um      |Rio de janeiro |78153331    |11935485672  |                     |Não                     |