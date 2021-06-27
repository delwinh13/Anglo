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
Stakeholder Group_Enagagement_Plan_Commitments
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Stakeholder Group_MS
    FR1 - Capture Stakeholder Group_OS1
    FR15 - Add_View Engagements_MS_AS
    FR16 - Add_View Engagement Plan_MS_AS
    FR17 - Capture Commitments_MS1
    Close Browser

Stakeholder Group_View Commitments
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR17 - View Commitments_MS2
    Close Browser