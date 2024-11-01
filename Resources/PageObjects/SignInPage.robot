*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    "Login"

Fill sign in form with email and password
    [Arguments]    ${CREDENTIALS}
    Input Text    email-id    ${CREDENTIALS.email}
    Input Text    password    ${CREDENTIALS.password}

Submit sign in form
    Click Button    submit-id
    Wait Until Page Contains    Our Happy Customers