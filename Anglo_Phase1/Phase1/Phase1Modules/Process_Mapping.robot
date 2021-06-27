*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/ProcessMapping_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Process Mapping
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Process Mapping
    FR1 - Capture Process Mapping
    FR2 - Capture Sub Process Mapping
    FR3 - Capture Activities
    FR4 - Edit Process Mapping