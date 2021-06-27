*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/EngagementsResources/StakeholderEngagements_keywords_Alt_Sc1.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Engagements
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Engagements Altenate Scenario 1
    FR6 - Capture Engagements Executed Confidential
    FR7 - Capture Engagements Cancelled confidential