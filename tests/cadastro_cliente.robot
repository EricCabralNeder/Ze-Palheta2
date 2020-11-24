***Settings***
Documentation       Cadastro de clientes

Resource        ../resources/base.robot

Suite Setup     Login Session
Suite Teardown  Finish Session


***Test Cases***
Novo cliente
    Dado que acesso o formulário de cadasrto de clientes
    Quando faço a inclusão de clientes:
    ...     Bom Jovi        00000001406     Rua dos Bugs, 1000      11999999999
    Então devo ver a notificação:           Cliente cadastrado com sucesso!


Campos Obrigatórios
    [Tags]      temp
    Dado que acesso o formulário de cadasrto de clientes
    Quando faço a inclusão de clientes:
    ...     ${EMPTY}        ${EMPTY}        ${EMPTY}        ${EMPTY}
    Então devo ver mensagens informando que os campos do cadastro de clientes são obrigatórios


Campo Nome Obrigatório
    [Tags]          required
    [Template]      Validação de Campos
    ${EMPTY}        48034903094                  Rua dos Bugs, 1000      11999999999        Nome é obrigatório

Campo CPF é Obrigatório
    [Tags]          required
    [Template]      Validação de Campos
    Bon Jovi        ${EMPTY}                     Rua dos Bugs, 1000      11999999999        CPF é obrigatório

Campo Endereço é Obrigatório
    [Tags]          required
    [Template]      Validação de Campos
    Bon Jovi        48034903094                  ${EMPTY}                11999999999        Endereço é obrigatório

Campo Telefone é Obrigatório
    [Tags]          required
    [Template]      Validação de Campos
    Bon Jovi        48034903094                  Rua dos Bugs, 1000      ${EMPTY}           Telefone é obrigatório

Telefone Incorreto
    [Tags]          required
    [Template]      Validação de Campos
    João da Silva   48034903094                  Rua dos Bugs, 1000      123456789          Telefone inválido


***Keywords***
Validação de Campos
    [Arguments]     ${nome}     ${cpf}      ${endereco}     ${telefone}     ${saida}

    Dado que acesso o formulário de cadasrto de clientes 
    Quando faço a inclusão de clientes:
    ...             ${nome}     ${cpf}      ${endereco}     ${telefone}
    Então devo ver o texto:     ${saida}
