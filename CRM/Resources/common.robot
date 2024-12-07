*** Settings ***
Library    SeleniumLibrary
Resource    CRM/Resources/input_data.robot

*** Keywords ***
Begin Test
    Set Selenium Speed  .2
    Set Selenium Timeout    5
    open browser    about:blank    ${BROWSER}
    Maximize Browser Window


End Test
    close browser