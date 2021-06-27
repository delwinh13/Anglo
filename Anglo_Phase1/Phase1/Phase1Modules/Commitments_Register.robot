*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/CommitmentsRegister_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***

Commitments Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Commitments Register
    FR2 - Capture Commitment
    FR3 - View Conditions and Commitments from a Permit
    FR4 - Commitments Register Status Automatically Update to Complete
    FR5 - Edit Commitments Register Record

