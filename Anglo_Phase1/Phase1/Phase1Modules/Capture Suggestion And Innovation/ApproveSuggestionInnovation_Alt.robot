*** Settings ***
Documentation       Anglo Phase 1
Library             SeleniumLibrary
Resource            ../../Resources/SuggestionsAndInnovations/Approve_Reject_Suggestions_Alt.robot


Force Tags      behavior-driven
# Suite Teardown  Close Browsers
*** Test Cases ***
Suggestions and Innovations
    Launch IsoMetrix Application
    Login with Valid Credentials
   FR3- Reject Suggestion or Innovation
   FR3- Suggestion and Innovation Reject Email

