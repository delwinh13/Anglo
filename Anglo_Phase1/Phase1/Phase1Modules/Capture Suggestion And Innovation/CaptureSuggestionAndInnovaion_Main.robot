*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/SuggestionsAndInnovations/Add_SuggestionsAndInnovations.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Suggestions and Innovations
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Suggestion or Innovation
    FR1- Suggestion and Innovation Email
    [Teardown]  CLOSE BROWSER
