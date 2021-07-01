*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/MeetingManager/Schedule_a _Meeting_Keywords_FR1.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Meeting Manager
    Launch IsoMetrix Application
    Login with Valid Credentials
    Schedule_a_meeting_FR1
    Close Browser
