***Settings***
Documentation       Cadastrp de clientes

Resource        ../resources/base.robot

Test Setup      Login Session
Test Teardown   Finish Session


***Test Cases***
Novo cliente
    Dado que acesso o formulário de cadasrto de clientes
    Quando faço a inclusão de clientes:
    ...     Bom Jovi        00000001406     Rua dos Bugs, 1000      11999999999
    Então devo ver a notificação:   Cliente cadastrado com sucesso!


