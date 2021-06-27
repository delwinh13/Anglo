*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/MonitoringPoints_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Monitoring Points
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate To Monitoring Points Module
    FR1 - Capture Monitoring Points
    FR2 - Capture Points
    FR3 - Edit Monitoring Points
