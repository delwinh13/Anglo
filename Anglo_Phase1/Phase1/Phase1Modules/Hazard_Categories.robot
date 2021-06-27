*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/HazardCategories_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Hazard Categories
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Hazard Categories
    FR1 - Capture Hazard Categories
    FR2 - Capture Hazard Categories Level 2
    FR3 - Capture Hazard Categories Level 3
    FR4 - Capture Hazard Categories Level 4
    FR5 - Capture Hazard Categories Level 5
    FR6 - Capture Hazard Categories Obligations
    FR7 - Edit Hazard Categories