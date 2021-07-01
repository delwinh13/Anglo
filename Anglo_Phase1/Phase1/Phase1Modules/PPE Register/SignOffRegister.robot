*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/PPE Register/SignOff PPE Register.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
PPE Register Sign Off
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3- Sign Off PPE Register
    [teardown]   close browser

