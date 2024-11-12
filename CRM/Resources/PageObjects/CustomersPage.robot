*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_LINK}=     id=new-customer
${EMAIL_INPUT_FIELD}=    id=EmailAddress
${FIRST_NAME_INPUT_FIELD}=    id=FirstName
${LAST_NAME_INPUT_FIELD}=    id=LastName
${CITY_INPUT_FIELD}=    id=City
${STATE_REGION_LIST}=    id=StateOrRegion
${GENDER_RADIO_BUTTON}=    gender
${SUBMIT_BUTTON}=    Submit

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    "Our Happy Customers"

Go to "add new customer" page
    Click Link    ${ADD_CUSTOMER_LINK}
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
    Click Button    ${SUBMIT_BUTTON}
    Wait Until Page Contains    Success! New customer added.
    
Fill in "Email" field
    [Arguments]    ${EMAIL}
    Input Text    ${EMAIL_INPUT_FIELD}    ${EMAIL}
    
Fill in "First Name" field
    [Arguments]    ${FIRST_NAME}
    Input Text    ${FIRST_NAME_INPUT_FIELD}    ${FIRST_NAME}
    
Fill in "Last Name" field
    [Arguments]    ${LAST_NAME}
    Input Text    ${LAST_NAME_INPUT_FIELD}    ${LAST_NAME}
    
Fill in "City" field
    [Arguments]    ${CITY}
    Input Text    ${CITY_INPUT_FIELD}    ${CITY}
    
Select state from list
    [Arguments]    ${STATE}
    Select From List By Value    ${STATE_REGION_LIST}    ${STATE}
    
Select gender
    [Arguments]    ${GENDER}
    Select Radio Button    ${GENDER_RADIO_BUTTON}    ${GENDER}