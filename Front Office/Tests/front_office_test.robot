*** Settings ***
Documentation    This suite is testing basic page loading and navigation through page
Resource    Front Office/Resources/common.robot
Resource    Front Office/Resources/front_office_app.robot

Suite Setup    Set Up
Suite Teardown    Tear Down

*** Variables ***
${URL} =    https://automationplayground.com/front-office/

*** Test Cases ***
User is able to open home page
    [Documentation]    This test checks if user is able to open home page
    [Tags]    smoke    1
    front_office_app.Open "Home" Page

User is able to open team page
    [Documentation]    This test checks if user is able to open team page
    [Tags]    smoke    2
    front_office_app.Open "Home" Page