*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Go to "add new customer" page
    Click Link    id=new-customer
    Wait Until Page Contains    Add Customer

Fill in form with new customer details
    [Arguments]    ${NEW_CUSTOMER}
    Input Text    id=EmailAddress    ${NEW_CUSTOMER.email}
    Input Text    id=FirstName    ${NEW_CUSTOMER.first_name}
    Input Text    id=LastName    ${NEW_CUSTOMER.last_name}
    Input Text    id=City    ${NEW_CUSTOMER.city}
    Select From List By Value    id=StateOrRegion    ${NEW_CUSTOMER.state}
    Select Radio Button    gender    ${NEW_CUSTOMER.gender}
    Select Checkbox    name=promos-name

Submit new customer form
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added.