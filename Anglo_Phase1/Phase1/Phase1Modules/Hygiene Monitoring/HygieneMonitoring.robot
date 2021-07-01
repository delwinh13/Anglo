*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/HygieneMonitoring/Hygiene_Monitoring_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Meeting Template
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Set up Hygiene Monitoring
