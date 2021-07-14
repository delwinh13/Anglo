*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Emergency Drill/Emergency Drill Findings.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Emergency Drill Findings
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR4- Capture Emergency Drill Findings
    FR5- Capture Emergency Drill Finding Actions







