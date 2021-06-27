*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/WaterMonitoring_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Water Monitoring
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 – Capture Water Monitoring
    FR2 – Edit Water Monitoring