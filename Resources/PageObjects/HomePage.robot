*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_HEADER_TITLE} =     Customers Are Priority One!
${URL} =    https://automationplayground.com/crm/

*** Keywords ***
Open Page
    Go to    ${URL}

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_TITLE}

Go to sign in page
    Click Link    Sign In
    Wait Until Page Contains    Login