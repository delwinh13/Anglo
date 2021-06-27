*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/EngagementPlan_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Engagement Plan
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Engagement Plan
    FR1 - Capture Engagement Plan
    FR2 - Capture Engagement Plan Action