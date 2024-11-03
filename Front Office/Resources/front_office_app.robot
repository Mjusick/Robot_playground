*** Settings ***
Resource    Front Office/Resources/PageObjects/HomePage.robot
Resource    Front Office/Resources/PageObjects/TeamPage.robot
Resource    Front Office/Resources/PageObjects/TopNavBar.robot


*** Keywords ***
Open "Home" Page
    HomePage.Open "Home" Page    ${URL}
    HomePage.Verify "Home" Page is loaded

Open "Team" Page
    TopNavBar.Go to Team Page
    TeamPage.Verify "Team" Page is loaded
