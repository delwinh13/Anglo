*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Inspection Scheduler/Inspection Schedulers_Keywords_FR3 .robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
InpectionSchedulers
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3-Edit Inspection Scheduler
    Close Browser
