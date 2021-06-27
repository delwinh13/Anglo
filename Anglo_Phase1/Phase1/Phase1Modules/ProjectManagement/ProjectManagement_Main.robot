*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/ProjectManagement/ProjectManagement_Keywords_Main.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Project Management
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Project Management
    #FR1- Capture Project Management Notification
    FR4- Capture Forecasted Budget
    FR5- Capture Project Actual
    FR6- Capture ECO2Man Project Savings
    FR7-Capture Energy and GHG Emissions Savings
    FR-7 Approve Record as an ECO2Man indicator
