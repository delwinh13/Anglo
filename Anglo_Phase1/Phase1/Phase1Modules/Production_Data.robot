*** Settings ***
Documentation     Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/ProductionData_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Production Data
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate to Production Data
    FR1 - Capture Production Data
    FR2 - Capture Mineral Produced
    FR3 - Edit Production Data