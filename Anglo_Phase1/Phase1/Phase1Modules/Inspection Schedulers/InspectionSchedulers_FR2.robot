*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Inspection Scheduler/Inspection Schedulers_Keywords_FR2.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
InpectionSchedulers
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR2-Capture Inspection Scheduler Recurrence
    Close Browser
