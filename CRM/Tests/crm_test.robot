*** Settings ***
Documentation    This is some basic docs about test suite
Resource    Resources/crm_app.robot
Resource    Resources/common.robot

Test Setup    Begin Test
Test Teardown    End Test

*** Variables ***
&{ADMIN_CREDENTIALS} =    email=gary.muffin@example.com    password=secret123!
&{NEW_CUSTOMER} =     email=john.doe@example.com    first_name=John    last_name=Doe    city=Lublin    state=CA    gender=male

*** Test Cases ***
Home page should load
    [Documentation]     Test the login
    [Tags]              1001    Smoke    Home
    Go To "HomePage"

Should be able to login with valid credentials
    [Documentation]     Test the login
    [Tags]              1002    Smoke    Login
    Go To "HomePage"
    crm_app.Sign In with valid credentials   ${ADMIN_CREDENTIALS}

Should be able to log out
    [Documentation]     Test the log out
    [Tags]              1004    Functional    Login
    Go To "HomePage"
    crm_app.Sign In with valid credentials    ${ADMIN_CREDENTIALS}
    crm_app.Sign Out

Should be able to add new customer
    [Documentation]     Test add new customer
    [Tags]              1006    Smoke    Home
    Go To "HomePage"
    crm_app.Sign In with valid credentials    ${ADMIN_CREDENTIALS}
    crm_app.Add New Customer    ${NEW_CUSTOMER}
    crm_app.Sign Out

