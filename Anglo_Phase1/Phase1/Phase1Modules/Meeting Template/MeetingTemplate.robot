*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/MeetingTemplate/MeetingTemplate_keywords.robot
Resource            ../../Resources/MeetingTemplate/MeetingTemplateEditRecord_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Meeting Template
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Meeting Template
    FR2 - Capture Meeting Attendee Template
    FR3 - Capture Meeting Agenda Template
    FR5 - Edit Meeting Template