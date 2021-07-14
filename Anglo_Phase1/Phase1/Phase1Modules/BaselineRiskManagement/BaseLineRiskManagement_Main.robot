*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/BaselineRiskManagementResources/BaseLineRiskManagementResources_Main.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Baseline Risk Management
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1-Capture Scope Detail
    FR2-Capture Baseline Change Log
    FR3-Capture Risk Assessment Team
    FR4- Capture Hazard Inventory
    FR5-Capture Baseline WRAC
    FR6-Capture Possible Improvements or Additional Controls
    FR8-Edit Baseline Risk Management (Layer 1)
    FR7-Sign off Baseline Change Log
