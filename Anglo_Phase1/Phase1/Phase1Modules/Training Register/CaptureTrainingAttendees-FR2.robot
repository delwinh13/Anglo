*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Training Register/CaptureTrainingAttendees-FR2_Keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Training Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR2-Capture Training Attendees
    Close Browser
