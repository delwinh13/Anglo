*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/PPE Register/PPE Register.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
PPE Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture PPE Register
    FR2-Capture Items Issued
    [TEARDOWN]  CLOSE BROWSER

