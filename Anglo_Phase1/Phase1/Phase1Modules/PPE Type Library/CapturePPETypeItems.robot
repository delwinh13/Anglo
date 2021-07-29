*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/PPE Type Items/PPE_Items_Type.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
PPE Items Library
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture PPE Type Library
    FR2 -Capture PPE Items
    [TEARDOWN]  CLOSE BROWSER

