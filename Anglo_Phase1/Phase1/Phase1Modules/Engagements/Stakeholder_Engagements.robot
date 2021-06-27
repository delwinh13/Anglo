*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/EngagementsResources/StakeholderEngagements_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Engagements
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Engagements
    FR9 - View report