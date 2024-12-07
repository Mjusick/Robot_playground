*** Settings ***
Documentation    Use these keywords to get data from files
Library    CRM/CustomLibraries/csv_reader.py


*** Keywords ***
Get data from CSV file
    [Arguments]    ${filepath}
    ${Data} =    Read From CSV    ${filepath}
    RETURN    ${Data}
