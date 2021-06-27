*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/CarbonPrice_keywords.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Carbon Price
    Launch IsoMetrix Application
    Login with Valid Credentials
    Navigating to Carbon Price
    FR1 - Capture Carbon Price
    FR2 - Edit Carbon Price