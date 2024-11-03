*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Go to Team Page
    Click Element    //a[text()= 'Team']
    Sleep    5s