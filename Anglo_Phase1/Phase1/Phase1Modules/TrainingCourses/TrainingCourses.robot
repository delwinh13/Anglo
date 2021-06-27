*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/TrainingCourses/TrainingCourses_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
TrainingCourses
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - TrainingCourses