*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER} =    chrome

*** Keywords ***
Begin Test
#    Set Selenium Speed  .2
    Set Selenium Timeout    5
    open browser    about:blank    ${BROWSER}
    Maximize Browser Window


End Test
    close browser