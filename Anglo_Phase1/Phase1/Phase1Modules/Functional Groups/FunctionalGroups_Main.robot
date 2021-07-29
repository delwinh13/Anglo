*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/FunctionalGroups/Add_an_FunctioanlGroups.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Functional Groups
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Add Functional Group
    FR2- Add One or More Users
    [Teardown]  CLOSE BROWSER

