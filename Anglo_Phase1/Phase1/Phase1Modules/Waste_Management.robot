*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/WasteManagement_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Waste Management
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Waste Management Monitoring
    FR1 - Tick Environmental Permit
    FR1 - Tick Link To Projects
    FR2 – Capture Measurements
    FR2 – Select Recycled Activity
    FR2 – Upload Supporting Documents
    FR3 – Capture Findings
    FR4 - Edit Waste Management