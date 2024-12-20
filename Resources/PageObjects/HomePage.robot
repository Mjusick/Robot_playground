*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_HEADER_TITLE}     Customers Are Priority One!
${URL}    https://automationplayground.com/crm/
${SIGN_IN_LINK}    Sign In
${LOGIN_BANNER}    Login


*** Keywords ***
Open Page
    Go to    ${URL}

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_TITLE}

Go to sign in page
    Wait Until Page Contains    ${SIGN_IN_LINK}
    Click Link    ${SIGN_IN_LINK}
    Wait Until Page Contains    ${LOGIN_BANNER}