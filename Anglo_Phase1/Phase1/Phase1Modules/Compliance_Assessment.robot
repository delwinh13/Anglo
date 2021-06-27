*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/ComplianceAssessment_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***

Compliance Assessment
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Compliance Assessment Record
    FR2 - Capture Conditions and Commitments Assessment Rating