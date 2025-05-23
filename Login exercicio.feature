#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu consiga fazer login na plataforma

Cenario: Autenticação valida
Quando o Usuario digitar um Email e senha Validos
Então deve ser direcionado a tela de Checkout

Cenario: Usuario ou senha invalidos
Quando o usuario digitar o email e senha invalidos
Então deve ser exibido a mensagem "usuario ou senha invalido" 

Esquema do Cenario: Login na Plataforma

Quando inserir o <email> e <senha> Validos 
Então sera liberado o <acesso com login> na plataforma
 
Exemplos: 
|Email             |Senha      |Acesso com login|        
|Usuario01@ebac.com|Usuario2421|Liberado        |
|Usuario02ebac.com |Usuario    |Negado          | 