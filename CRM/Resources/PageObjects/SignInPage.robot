*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL_INPUT_FIELD}     email-id
${SIGN_IN_PASSWORD_INPUT_FIELD}    password
${SIGN_IN_SUBMIT_BUTTON}    submit-id
${LOGIN_BANNER}    Login

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGIN_BANNER}

Fill sign in form with email and password
    [Arguments]    ${CREDENTIALS}
    Input Text    ${SIGN_IN_EMAIL_INPUT_FIELD}   ${CREDENTIALS.email}
    Input Text    ${SIGN_IN_PASSWORD_INPUT_FIELD}    ${CREDENTIALS.password}

Submit sign in form
    Click Button    ${SIGN_IN_SUBMIT_BUTTON}
    Wait Until Page Contains    Our Happy Customers

Submit sign in form with error
    Click Button    ${SIGN_IN_SUBMIT_BUTTON}
    Page Should Not Contain    Our Happy Customers

Verify sign in error message
    [Arguments]    ${ERROR_MESSAGE}
    ${message}=     Execute JavaScript    return document.querySelector('#email-id').validationMessage;
    Should Contain    ${message}    ${ERROR_MESSAGE}
