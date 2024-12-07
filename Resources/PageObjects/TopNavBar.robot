*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_OUT_LINK}    Sign Out

*** Keywords ***
Click "Sign out" link
    Click Link    ${SIGN_OUT_LINK}
