*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/InspectionScheduler_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Inspection Scheduler
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Inspection Scheduler
    FR1-Capture Inspection Scheduler
    FR2-Capture Inspection Scheduler Recurrence
    FR3-Edit Inspection Scheduler
    FR4-Edit Inspection Scheduler Recurrence