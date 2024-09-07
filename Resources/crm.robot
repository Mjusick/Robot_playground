*** Settings ***
Library    SeleniumLibrary
Resource    PageObjects/LandingPage.robot
Resource    PageObjects/SignInPage.robot
Resource    PageObjects/CustomersPage.robot


*** Keywords ***

Sign In as admin
    [Arguments]    ${ADMIN_CREDENTIALS}
    LandingPage.Go to sign in page
    SignInPage.Fill sign in form with email and password    ${ADMIN_CREDENTIALS}
    SignInPage.Submit sign in form

Add New Customer
    [Arguments]    ${NEW_CUSTOMER}
    CustomersPage.Go to "add new customer" page
    CustomersPage.Fill in form with new customer details   ${NEW_CUSTOMER}