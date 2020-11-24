***Settings***
Documentation           Pagina pege da classe de teste login


***Keywords***
Login With
    [Arguments]     ${email}        ${password}
    
    Input Text      id:txtEmail                     ${email}
    Input Text      css:input[placeholder=Senha]    ${password}
    Click Element   xpath://button[text()='Entrar']