*** Settings ***
Library    SeleniumLibrary
Resource    CRM/Resources/PageObjects/HomePage.robot
Resource    CRM/Resources/PageObjects/SignInPage.robot
Resource    CRM/Resources/PageObjects/CustomersPage.robot
Resource    CRM/Resources/PageObjects/TopNavBar.robot

*** Keywords ***

Go To "HomePage"
    HomePage.Open Page
    HomePage.Verify Page Loaded
    
Sign In with many invalid input credentials
    [Arguments]    ${sign_in_invalid_scenarios}
    HomePage.Go to sign in page
    FOR    ${scenario}    IN    @{sign_in_invalid_scenarios}
        &{credentials} =    Create Dictionary    email=${scenario}[0]    password=${scenario}[1]
        ${error_message} =    Set Variable    ${scenario}[2]
        SignInPage.Fill sign in form with email and password    ${credentials}
        SignInPage.Verify sign in error message    ${error_message}
    END

Sign In with valid credentials
    [Arguments]    ${CREDENTIALS}
    HomePage.Go to sign in page
    SignInPage.Fill sign in form with email and password    ${CREDENTIALS}
    SignInPage.Submit sign in form
    
Sign In with missing credentials
    HomePage.Go to sign in page
    SignInPage.Submit sign in form with error

Sign In with invalid credentials
    HomePage.Go to sign in page
    SignInPage.Fill sign in form with email and password    ${EMPTY}
    SignInPage.Submit sign in form with error
    SignInPage.Verify sign in error message    Wypełnij to pole.

Add New Customer
    [Arguments]    ${NEW_CUSTOMER}
    CustomersPage.Go to "add new customer" page
    CustomersPage.Fill in form with new customer details   ${NEW_CUSTOMER}

Sign Out
    TopNavBar.Click "Sign out" link