*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Emergency Drill Types/Emergency Drill Types.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Emergency Drill Types
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Emergency Drill Type
    [Teardown]  CLOSE BROWSER
