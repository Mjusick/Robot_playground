*** Settings ***
Library    SeleniumLibrary
Resource    PageObjects/HomePage.robot
Resource    PageObjects/SignInPage.robot
Resource    PageObjects/CustomersPage.robot
Resource    PageObjects/TopNavBar.robot

*** Keywords ***

Go To "HomePage"
    HomePage.Open Page
    HomePage.Verify Page Loaded

Sign In with valid credentials
    [Arguments]    ${CREDENTIALS}
    HomePage.Go to sign in page
    SignInPage.Fill sign in form with email and password    ${CREDENTIALS}
    SignInPage.Submit sign in form

Add New Customer
    [Arguments]    ${NEW_CUSTOMER}
    CustomersPage.Go to "add new customer" page
    CustomersPage.Fill in form with new customer details   ${NEW_CUSTOMER}

Sign Out
    TopNavBar.Click "Sign out" link