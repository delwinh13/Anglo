*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/AirQualityResources/AirQuality_Keywords_Alt_Sc123_Opt.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Air Quality
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Air Quality Monitoring Altenate Scenario 1
    FR3-Capture Dust Measurements
    FR4-Capture Air Quality Monitoring Findings
    FR5-Edit Air Quality Monitoring
