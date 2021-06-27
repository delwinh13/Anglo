*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/AirQualityResources/AirQuality_Keywords_Main.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Air Quality
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Air Quality Monitoring
    FR2 - Capture Emission Measurement