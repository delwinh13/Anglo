*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/BiodiversityMonitoringResource/BioDiversityMonitoring_keywords_FR_3_4_5.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Biodiversity Monitoring
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3-Capture Biodiversity Measurement - Fauna