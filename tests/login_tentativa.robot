***Settings***
Documentation       Login Tentativa

Resource        ../resources/base.robot

Suite Setup     Start Session
Suite Teardown   Finish Session

Test Template   Tentativa de login

***Keywords***
Tentativa de login
    [Arguments]         ${input_email}      ${input_senha}          ${output_mensagem}

    Acesso a página Login
    Submeto minhas credenciais              ${input_email}          ${input_senha}
    Devo ver um toaster com a mensagem      ${output_mensagem}

***Test Cases***
senha incorreta             admin@zepalheta.com.br      pwd124              Ocorreu um erro ao fazer login, cheque as credenciais.
Senha em Branco             email                       ${EMPTY}            O campo senha é obrigatório!
Email em Branco             ${EMPTY}                    pwd124              O campo email é obrigatório!  
Email e Senha em Branco     ${EMPTY}                    ${EMPTY}            Os campos email e senha não foram preenchidos!
Login incorreto             admin&gmail.com             abc123              Ocorreu um erro ao fazer login, cheque as credenciais.




