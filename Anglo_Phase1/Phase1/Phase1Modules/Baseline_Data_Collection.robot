*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../Resources/BaselineDataCollection_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Baseline Data Collections
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate to Baseline Data Collection
    FR1 Capture Baseline Data Collection Main Scenario
    OS1 Capture Baseline Data Collection Main Scenario
    OS2 Capture Baseline Data Collection Main Scenario
    FR2 Capture Baseline Data Collection Survey
    AS Capture Baseline Data Collection Survey
    FR3-Capture the Survey
    FR4-Capture Actions
    FR5-Update Status to Complete
    Close Browser

FR1_BaselineDataCollection_Notification
    FR1_BaselineDataCollection_Notification
    Close Browser