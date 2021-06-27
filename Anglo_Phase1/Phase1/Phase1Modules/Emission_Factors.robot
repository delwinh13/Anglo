*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/EmissionFactors_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***
Emission Factors Maintenance
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate To Emission Factors Maintenance
    FR1 - Capture Emission Factors Maintenance
    FR2 - Emission Factors Maintenance Values
    FR3 - Edit Emission Facotrs Maintenance