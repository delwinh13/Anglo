*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/HazardousChemicalRegister/Hazardous_Chemical_Register_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Hazardous Chemical Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Hazardous Chemical
    FR2 - Add Chemical Register Actions
