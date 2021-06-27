*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/SuggestionsInnovations.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Capture Suggestion And Innovation\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredSuggestionsInnovations.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1- Capture Suggestion or Innovation
    Log To Console    Starting FR1 - Capture Suggestion or Innovation
    # Click AngloMaintenanceButton
        Mouse over                          ${AngloMainMenuXpath}
    Wait Until Page Contains Element       ${AngloTrainingAndSuggestionsInterfaceXpath}    20 seconds
    Click Element                          ${AngloTrainingAndSuggestionsInterfaceXpath}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Click Element                       ${SuggestionsAndInnovationsModulXpath}
    Sleep     3 seconds
    Screenshot  Navigate to Suggestions and Innovations search page opens
    click element       ${AddButtonXpath}
    Sleep     3 seconds
    # Check on Process Flow
    Wait Until Element Is Visible        ${ProcessFlowXpath}   40 seconds
     click element                        ${ProcessFlowXpath}
     Sleep     3 seconds
     #validate process is on AddPhase
  Wait Until Element Is Visible         ${AddSuggestionsAndInnovaionXpath}    40 seconds
   Element Should Be Visible             ${AddSuggestionsAndInnovaionXpath}
    Screenshot   	Suggestions and Innovations add page opens in the Add suggestion and innovation Phase
    click element                        ${BusinessUnitDrpDwnXpath}
    Wait Until Element Is Visible        ${BUDrpValueXpath}    40 seconds
    Click Element                        ${BUDrpValueXpath}
    Sleep    3 seconds
    Wait Until Element Is Visible        ${BUDrpValueBulkXpath}    40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueBulkXpath}
    Wait Until Element Is Visible       ${BUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${BUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${BUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueSishenXpath}
    Sleep    3 seconds
    click element                       ${RiskDesciplineXpath}
    Sleep    10 seconds
    click element                       ${RiskDesciplineCheckBoxXpath}
    Sleep    3 seconds
    click element                      ${RiskDesciplineCheckBoxLinkXpath}
    Sleep    3 seconds
    click element                     ${SuggestionXpath}
    Sleep    3 seconds
    Input Text                        ${SuggestionValueXpath}       AutoTest
    Sleep    3 seconds
    mouse over                        ${SuggestedByXpath}
    Sleep    3 seconds
    click element                     ${SuggestedByXpath}
    Sleep    3 seconds
    Input Text                        ${SuggestedByInputXpath}   Test
    Press Keys                       ${SuggestedByInputXpath}    ENTER
    Sleep    3 seconds
    click element                    ${SuggestedByValueXpath}
    Sleep    2 seconds
    mouse over                        ${SuggestionAssignedToXpath}
    Sleep    3 seconds
    click element                    ${SuggestionAssignedToXpath}
    Sleep    2 seconds
    Input Text                        ${SuggestionAssignedInputXpath}   Test
    Press Keys                       ${SuggestionAssignedInputXpath}    ENTER
    Sleep    3 seconds
    click element                    ${SuggestionTypeXpath}
    Sleep    3 seconds
    click element                   ${SuggestionTypeValueXpath}
    click element                    ${SaveButtonXpath}
    #validate process is Suggestion and innovation under review Phase
  Wait Until Element Is Visible         ${SuggestionsAndInnvationReview}    40 seconds
   Element Should Be Visible             ${SuggestionsAndInnvationReview}
   Screenshot   	Record automatically moves to the Suggestion and innovation under review Phase. Suggestion status is shown and defaulted to “Under review”.


    #Download report
    Sleep               20
    Switch Window       MAIN
    Select Frame        ${iFrame}









