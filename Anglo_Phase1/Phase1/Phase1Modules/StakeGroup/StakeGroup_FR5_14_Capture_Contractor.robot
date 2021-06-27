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
Stakeholder Group_Capture_Contractor.robot
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Stakeholder Group_AS2
    FR5 - Capture Contractor or Supplier Manager_MS
    FR6 - Capture Contractor Questionnaire_MS
    FR7 - Capture Contractor Documents_MS
    FR8 - Capture Contractor Orders_MS
    FR10 - Capture Contractor Fleet Management_MS
    FR11 - Capture Contractor Tools and Equipment_MS
#    FR12 - View Chemical Register_MS
    FR13 - Capture Contractor Permission to Work Sign Off_MS
    FR14 - Capture Contractor Checklist_MS
    Close Browser