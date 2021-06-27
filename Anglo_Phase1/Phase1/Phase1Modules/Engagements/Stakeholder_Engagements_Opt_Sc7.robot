*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/EngagementsResources/StakeholderEngagements_Keywords_Opt_Sc7.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Engagements
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Engagements Optional Scenario 7