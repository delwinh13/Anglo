*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/Training Register/AddTrainingRegisterActions_FR3_keywords.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Training Register
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3-Add Training Register Actions
    Close Browser
