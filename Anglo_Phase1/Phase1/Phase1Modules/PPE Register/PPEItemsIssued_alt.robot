*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/PPE Register/PPE Item Issue.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
PPE Item Issue
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR2-Capture Items Issued
    [teardown]  close browser
