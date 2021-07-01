*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/MeetingManager/Add_or_update_MeetingAttendees_Keywords_FR2.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Meeting Manager
    Launch IsoMetrix Application
    Login with Valid Credentials
    Add_or_update_MeetingAttendees_FR2
    Close Browser
