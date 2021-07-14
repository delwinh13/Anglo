*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/EquipmentToolCategory/Equipment_Tool_Category_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Equipment Tool Category
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Equipment and Tool Category
    FR2 - Capture Asset Details
    FR3 - Capture Calibration Details
    FR4 - Capture Asset Schedule
