***Settings***

Library         SeleniumLibrary

**Keywords***
Acesso a página Login
    Go To           ${base_url}     

Submeto minhas credenciais    
    [Arguments]     ${email}        ${password}

    Login With      ${email}        ${password}


Devo ver a área logada
    Wait Until Page Contains     Aluguéis       5

Devo ver um toaster com a mensagem      
    [Arguments]     ${expect_message}

    Wait Until Element Contains         $[TOASTER_ERROR]        ${expect_message}
  

#Customers

Dado que acesso o formulário de cadasrto de clientes
    Wait Until Element Is Visible       ${NAV_CUSTOMERS}        5
    Click Element                       ${NAV_CUSTOMERS}  
    Wait Until Element Is Visible       ${CUSTOMERS_FORM}       5
    Click Element                       ${CUSTOMERS_FORM}

Quando faço a inclusão de clientes:
    [Arguments]                 ${name}             ${cpf}          ${address}          ${phone_number}

    Remove_customer_by_cpf      ${cpf}

    Register New Customers      ${name}             ${cpf}          ${address}          ${phone_number}

Então devo ver a notificação:
    [Arguments]                 ${expect_notice}

    Wait Until Element Contains                     ${TOASTER_SUCCESS}        ${expect_notice}        5