*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    Go to    https://automationplayground.com/crm/

Verify Page Loaded
    Wait Until Page Contains    Customers Are Priority One!

Go to sign in page
    Click Link    Sign In
    Wait Until Page Contains    Login