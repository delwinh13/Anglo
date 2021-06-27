*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/StakeGroupResources/StakeGroup_keywords_FR1.robot
Resource            ../../Resources/StakeGroupResources/StakeGroup_keywords_FR1-4.robot
Resource            ../../Resources/StakeGroupResources/StakeGroup_keywords_FR5-14.robot
Resource            ../../Resources/StakeGroupResources/StakeGroup_keywords_FR15-20.robot

Force Tags          behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Group_FR2_MS
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Stakeholder Group_MS
    FR1 - Capture Stakeholder Group_OS1
    FR2 - Capture Topic_Issue Assessment_MS
    FR19 - Capture StakeGroup Actions_MS
    Close Browser