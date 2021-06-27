*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/Users_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Audit Launcher
    Launch IsoMetrix Application
    Login with Valid IsoMetrix Credentials
    Create User