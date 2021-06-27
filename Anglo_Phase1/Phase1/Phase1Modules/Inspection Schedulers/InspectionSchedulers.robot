*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Inspection Scheduler/Inspection Scheduler_keywords_Main.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
InpectionSchedulers
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1-Capture Inspection Scheduler
    Close Browser
