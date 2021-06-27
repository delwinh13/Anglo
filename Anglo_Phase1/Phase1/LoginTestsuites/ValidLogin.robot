*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Resource    ../Resources/keywords.robot
Resource    ../Resources/vars.robot

Force Tags      behavior-driven
#Suite Teardown  Close Browser

*** Test Cases ***
Valid Login
    Launch IsoMetrix Application
    Login with Valid Credentials

*** Keywords ***
