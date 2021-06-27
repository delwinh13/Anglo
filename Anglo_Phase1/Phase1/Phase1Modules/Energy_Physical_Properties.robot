*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/EnergyPhysicalProperties_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Energy Physical Properties
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate To Energy Physical Properties
    FR1 - Capture Energy Physical Properties
    FR2 - Emission Energy Physical Properties