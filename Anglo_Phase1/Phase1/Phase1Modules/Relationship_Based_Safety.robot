*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/RelationshipBasedSafety_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Relationship Based Safety
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Relationship Based Safety
    FR1 - Capture Relationship Based Safety Record For SLP Observation
    close browser
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Relationship Based Safety
    FR2 - Capture Relationship Based Safety Record For VFL Observation
    FR3-Capture Safety Leadership Actions
