*** Settings ***
Documentation    This is some basic docs about test suite
Resource    Resources/crm.robot
Resource    Resources/common.robot
Test Setup    Begin Test    ${BROWSER}
Test Teardown    End Test

*** Variables ***
&{ADMIN_CREDENTIALS} =    email=gary.muffin@example.com    password=secret123!
&{NEW_CUSTOMER} =     email=john.doe@example.com    first_name=John    last_name=Doe    city=Lublin    state=CA    gender=male
${BROWSER} =    firefox

*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is some basic info about test case
    [Tags]              1006    Smoke    Contacts
    Log                 Starting test case
    crm.Sign In as admin    ${ADMIN_CREDENTIALS}
    crm.Add New Customer    ${NEW_CUSTOMER}
