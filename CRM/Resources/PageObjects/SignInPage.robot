*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_INPUT_FIELD}=     email-id
${PASSWORD_INPUT_FIELD}=    password
${SUBMIT_BUTTON}=    submit-id

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    "Login"

Fill sign in form with email and password
    [Arguments]    ${CREDENTIALS}
    Input Text    ${EMAIL_INPUT_FIELD}    ${CREDENTIALS.email}
    Input Text    ${PASSWORD_INPUT_FIELD}    ${CREDENTIALS.password}

Submit sign in form
    Click Button    ${SUBMIT_BUTTON}
    Wait Until Page Contains    Our Happy Customers