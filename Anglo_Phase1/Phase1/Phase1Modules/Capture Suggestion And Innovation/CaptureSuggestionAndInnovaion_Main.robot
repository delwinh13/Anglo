*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/SuggestionsAndInnovations/Add_SuggestionsAndInnovations.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Functional Groups
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Suggestion or Innovation
    FR2- Approve/Reject Suggestion or Innovation
    FR3-Capture Suggestions or Innovations Actions