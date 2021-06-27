*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/UnitOfMeasure_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Unit Of Measure
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigate To Unit Of Measure Module
    FR1 - Capture Unit Of Measure
    FR2 - Measure Unit
    FR3 - Edit Measure Unit