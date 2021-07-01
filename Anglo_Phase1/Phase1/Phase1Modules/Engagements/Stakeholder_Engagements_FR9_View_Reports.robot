*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/EngagementsResources/StakeholderEngagements_Keywords_FR9_View_Reports.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Engagements
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR9 - View Reports