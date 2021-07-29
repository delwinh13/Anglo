*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/SuggestionsAndInnovations/Approve_Reject_Suggestions.robot
Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Suggestions and Innovations
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR2- Approve Suggestion or Innovation
    FR2- Suggestion and Innovation Approve Email
    [TEARDOWN]  CLOSE BROWSER



