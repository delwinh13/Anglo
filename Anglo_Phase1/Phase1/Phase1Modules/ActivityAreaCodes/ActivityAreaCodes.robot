*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/ActivityAreaCodes/Activity_Area_Codes_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Activity Area Codes
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Activity Area Codes
