*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Training Register/ScheduleTrainingRegister_FR1_Keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Training Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1-Schedule Training Register
    Close Browser
