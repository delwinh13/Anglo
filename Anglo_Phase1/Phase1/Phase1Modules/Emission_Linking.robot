*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/EmissionLinking_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***
Emission Linking
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate To Emission Linking
    FR1 - Capture Emission Linking
    FR2 - Emission Linking Values Replicated
    FR3 - Edit Emission Linking