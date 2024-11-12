*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_BUTTON}=    //a[text()= 'Team']

*** Keywords ***
Go to Team Page
    Click Element    ${TEAM_BUTTON}
    Sleep    5s