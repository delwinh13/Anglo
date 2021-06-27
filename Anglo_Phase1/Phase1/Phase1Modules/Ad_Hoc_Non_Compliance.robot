*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/AdHocNonCompliance_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Ad Hoc non Compliance
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Ad-Hoc Non-Compliance Intervention
    FR2 - Capture Non-Compliance Intervention