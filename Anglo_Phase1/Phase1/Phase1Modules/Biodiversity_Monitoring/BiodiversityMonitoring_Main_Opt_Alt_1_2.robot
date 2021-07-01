*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/BiodiversityMonitoringResource/BiodiversityMonitoring_Keyword_Main_Opt_Alt_1_2.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Biodiversity Monitoring
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Biodiversity Monitoring
    FR3-Capture Biodiversity Measurement - Fauna