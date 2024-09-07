*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Fill sign in form with email and password
    [Arguments]    ${ADMIN_CREDENTIALS}
    Input Text    email-id    ${ADMIN_CREDENTIALS.email}
    Input Text    password    ${ADMIN_CREDENTIALS.password}

Submit sign in form
    Click Button    submit-id
    Wait Until Page Contains    Our Happy Customers