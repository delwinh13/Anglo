*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/SuggestionsAndInnovations/Action_Suggestions_Innovations.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Suggestions and Innovations
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR3- Capture Suggestions and Innovations Actions
    #[TEARDOWN]  CLOSE BROWSER


