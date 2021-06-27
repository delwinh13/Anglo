*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/ClimateChangeEnergy_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Climate Change & Energy Monitoring
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Climate Change & Energy
    FR1 - Capture Climate Change and Energy
    FR2 - Capture Climate Change Energy Measurement
    FR3 - Capture Findings
    FR4 - Edit Climate Change and Energy
