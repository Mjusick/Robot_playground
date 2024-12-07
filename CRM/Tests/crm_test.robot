*** Settings ***
Documentation    This is some basic docs about test suite
Resource    CRM/Resources/crm_app.robot
Resource    CRM/Resources/common.robot
Resource    CRM/Resources/input_data.robot
Resource    CRM/Resources/DataManager.robot

Test Setup    Begin Test
Test Teardown    End Test

*** Test Cases ***
Home page should load
    [Documentation]     Test page load
    [Tags]              1001    Smoke    Home
    Go To "HomePage"

Should be able to login with valid credentials
    [Documentation]     Test the login
    [Tags]              1002    Smoke    Login
    Go To "HomePage"
    crm_app.Sign In with valid credentials   ${ADMIN_CREDENTIALS}

Should fail with missing credentials
    [Documentation]    Test the login
    [Tags]    1003    Functional    Login
    Go To "HomePage"
    Sign In with missing credentials

Should be able to log out
    [Documentation]     Test the log out
    [Tags]              1004    Functional    Login
    Go To "HomePage"
    crm_app.Sign In with valid credentials   ${ADMIN_CREDENTIALS}
    crm_app.Sign Out

Should be able to add new customer
    [Documentation]     Test add new customer
    [Tags]              1006    Smoke    Home
    Go To "HomePage"
    crm_app.Sign In with valid credentials    ${ADMIN_CREDENTIALS}
    crm_app.Add New Customer    ${NEW_CUSTOMER}
    crm_app.Sign Out

Should not sign in with invalid credentials
    [Documentation]     Test add new customer
    [Tags]              1007    Functional    Home
    Go To "HomePage"
    ${invalid_credentials} =    DataManager.Get data from CSV file    ${INVALID_CREDENTIALS_CSV_FILE}
    Sign In with many invalid input credentials    ${invalid_credentials}
