*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER} =    chrome

*** Keywords ***
Set Up
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Tear Down
    Close Browser