#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy # cucumber -t @ happy executa só o happy 
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com: 
            |email          |fernando@yahoo.com |
            |senha          |pwd123             |
            |senha_confirma |pwd123             |
        Então devo ser redirecionado para a área logada

    Cenario: Email não informado
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com: 
            |email          |                   |
            |senha          |pwd123             |
            |senha_confirma |pwd123             |
        Então devo ver a mensagem: "Oops! Informe seu email."
   
    Cenario: Senha não informada
       Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com: 
            |email          |fernando@hotmail.com|
            |senha          |                    |
            |senha_confirma |                    |
        Então devo ver a mensagem: "Oops! Informe sua senha."

    Cenario: Senha divergente
       Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com: 
            |email          |fernando@hotmail.com|
            |senha          |pwd123              |
            |senha_confirma |abc123              |
        Então devo ver a mensagem: "Oops! Senhas não são iguais."

    Cenario: Nenhum campo preenchido
       Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com: 
            |email          |   |
            |senha          |   |
            |senha_confirma |   |
        Então devo ver a mensagem: "Oops! Informe seu email e sua senha."
