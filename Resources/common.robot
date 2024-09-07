*** Settings ***
Library    SeleniumLibrary
Resource    PageObjects/LandingPage.robot


*** Keywords ***
Begin Test
    [Arguments]    ${BROWSER}
    Set Selenium Speed  .2
    Set Selenium Timeout    5
    open browser    about:blank    ${BROWSER}
    LandingPage.Load
    Maximize Browser Window
    LandingPage.Verify Page Loaded


End Test
    close browser