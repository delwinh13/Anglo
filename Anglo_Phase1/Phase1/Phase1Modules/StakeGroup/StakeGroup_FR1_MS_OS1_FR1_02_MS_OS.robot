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
Stakeholder Group_FR1_MS_OS1_FR1_02_MS_OS
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Stakeholder Group_MS
    FR1 - Capture Stakeholder Group_OS1
    Close Browser

FR1_StakeGroup_AddedNotification
    FR1_StakeGroup_AddedNotification
    Close Browser