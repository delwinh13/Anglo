*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../Resources/JobRiskAssessment_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Job Risk Assessment
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate to Job Risk Assessment
    FR1 Capture Job Risk Assessment
    FR2 Capture Change Log
    FR3 Capture JRA Team
    FR4 Capture Task Information
    FR5 Capture Hazard
    FR6 Capture Unwanted Events
    FR7 Capture Controls
    FR8 Update Work Execution Tasks
    FR9 Capture Work Execution Specification
    FR10 Capture Work Execution Questions
    FR11 Capture Actions
    FR12 Edit Job Risk Assessment
    FR10 Sign off the Change Log
    Close Browser


