*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open "Home" Page
    [Arguments]    ${URL}
    Go To    ${URL}

Verify "Home" Page is loaded
    Wait Until Page Contains    RobotFrameworkTutorial.com Test Client