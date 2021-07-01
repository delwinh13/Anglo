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