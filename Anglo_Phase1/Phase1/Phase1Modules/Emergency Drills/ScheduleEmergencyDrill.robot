*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Emergency Drill/Schedule Emergency Drill.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Emergency Drill Types
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Schedule Emergency Drill
    FR2- Complete Emergency Drill with no Findings
    [teardown]  close browser



