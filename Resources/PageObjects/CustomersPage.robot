*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    "Our Happy Customers"

Go to "add new customer" page
    Click Link    id=new-customer
    Wait Until Page Contains    Add Customer

Fill in form with new customer details
    [Arguments]    ${NEW_CUSTOMER}
    Fill in "Email" field    ${NEW_CUSTOMER.email}
    Fill in "First Name" field    ${NEW_CUSTOMER.first_name}
    Fill in "Last Name" field    ${NEW_CUSTOMER.last_name}
    Fill in "City" field    ${NEW_CUSTOMER.city}
    Select state from list    ${NEW_CUSTOMER.state}
    Select gender    ${NEW_CUSTOMER.gender}
    Select Checkbox    name=promos-name

Submit new customer form
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added.
    
Fill in "Email" field
    [Arguments]    ${EMAIL}
    Input Text    id=EmailAddress    ${EMAIL}
    
Fill in "First Name" field
    [Arguments]    ${FIRST_NAME}
    Input Text    id=FirstName    ${FIRST_NAME}
    
Fill in "Last Name" field
    [Arguments]    ${LAST_NAME}
    Input Text    id=LastName    ${LAST_NAME}
    
Fill in "City" field
    [Arguments]    ${CITY}
    Input Text    id=City    ${CITY}
    
Select state from list
    [Arguments]    ${STATE}
    Select From List By Value    id=StateOrRegion    ${STATE}
    
Select gender
    [Arguments]    ${GENDER}
    Select Radio Button    gender    ${GENDER}