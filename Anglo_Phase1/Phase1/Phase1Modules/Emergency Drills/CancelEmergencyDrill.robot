*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Emergency Drill/Cancel Emergency Drill.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Cancel Emergency Drill Types
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3- Cancel Emergency Drill
    [teardown]    close browser




