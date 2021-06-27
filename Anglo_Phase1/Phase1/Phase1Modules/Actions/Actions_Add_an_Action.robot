*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/ActionsResources/Add_an_Action_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Actions
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Add_an_Action