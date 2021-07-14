*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/SuggestionsInnovations.robot
Resource    ../../Repository/AcceptRejectSuggestions.robot
Resource    ../../Repository/SuggestionsAndInnovationsAction.robot


*** Keywords ***
Launch IsoMetrix Application
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
    Sleep     5 seconds
    Wait Until Element Is Visible        ${BUDrpValueXpath}    40 seconds
    Sleep     5 seconds
    Click Element                        ${BUDrpValueXpath}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${BUDrpValueBulkXpath}    40 seconds
    Sleep    5 seconds
    Click Element                       ${BUDrpValueBulkXpath}
    Sleep    5 seconds
    Wait Until Element Is Visible       ${BUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${BUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${BUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueSishenXpath}
    Sleep    3 seconds
    click element                       ${RiskDesciplineXpath}
    Sleep    5 seconds
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
    Sleep    2 seconds
    Press Keys                       ${SuggestionAssignedInputXpath}    ENTER
    Sleep    5 seconds
    click element                       ${SuggestionAssignedValueXpath}
    Sleep    3 seconds
    click element                    ${SuggestionTypeXpath}
    Sleep    3 seconds
    click element                   ${SuggestionTypeValueXpath}
    click element                    ${SaveButtonXpath}
    Sleep    30 seconds
    #validate process is Suggestion and innovation under review Phase
    Wait Until Element Is Visible         ${SuggestionsAndInnvationReview}    40 seconds
    Element Should Be Visible             ${SuggestionsAndInnvationReview}
    Sleep    10 seconds
    Screenshot   	Suggestions Under Review
    Sleep    10 seconds
#FR2- Reject Suggestion or Innovation
     Log To Console    Starting FR2 - Reject Suggestion or Innovation

     click element                ${ApprovalTabXpath}
     Sleep     3 seconds
     click element        ${ApprovalDropDownXpath}
     Sleep     10 seconds
     click element          ${ApprovalDropDownNoXpath}
     Sleep     3 seconds
     input text                  ${CommentsXpath}          Test
     click element               ${SaveButtonXpath}
     Sleep     60 seconds
     screenshot   Rejected by and Date approved fields are displayed
     Sleep     3 seconds
     Wait Until Element Is Visible         ${ProcessFlowRejectedXpath}    40 seconds
     Element Should Be Visible                 ${ProcessFlowRejectedXpath}
     Screenshot       Suggestions and Innovations is in Rejected phase
FR3- Capture Suggestions and Innovations Actions
     click element       ${ActionsTabXpath}
     Sleep      3 seconds
     click element       ${AddActionButtonXpath}
     Sleep     10 seconds
     CLICK ELEMENT        ${ActionTypeXpath}
     Sleep     30 seconds
     CLICK ELEMENT         ${ActionTypeDropDownXpath}
     SLEEP  3 seconds
     input text            ${ActionDescriptionXpath}    Auto
     Sleep     3 seconds
     CLICK ELEMENT         ${EntityXpath}
     Sleep     10 seconds
     Wait Until Element Is Visible         ${EntityDrpValueXpath}    40 seconds
     CLICK ELEMENT                          ${EntityDrpValueXpath}
     Sleep     3 seconds
     Wait Until Element Is Visible         ${EntityValueBulkXpath}    40 seconds
     CLICK ELEMENT                          ${EntityValueBulkXpath}
     Sleep     3 seconds
     Wait Until Element Is Visible         ${EntityDrpValueKumbaXpath}    40 seconds
     CLICK ELEMENT                          ${EntityDrpValueKumbaXpath}
     Sleep     3 seconds
     Wait Until Element Is Visible         ${EntityDrpValueSishenXpath}    40 seconds
     CLICK ELEMENT                          ${EntityDrpValueSishenXpath}
     Sleep     3 seconds
     CLICK ELEMENT                         ${ResponsiblePersonXpath}
     input text                            ${ResponsiblePersonTextXpath}     Test
     Sleep     3 seconds
     Press Keys                              ${ResponsiblePersonTextXpath}    ENTER
     Sleep     20 seconds
     CLICK ELEMENT                         ${ResponsiblePersonTextDataXpath}
     Sleep     3 seconds
     #Action Due date
     Click Element                        ${Calender}
    Sleep    2 seconds
    ${ActionDueDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${ActionDueDate}
    Wait Until Element Is Visible       ${Calender}    10 seconds
    Click Element                       ${Calender}
    Input Text                          ${ActionDueDateXpath}     ${ActionDueDate}
     Sleep     3 seconds
     CLICK ELEMENT                       ${RecurringActionXpath}
     Sleep     3 seconds
     CLICK ELEMENT                      ${RecurringActionDropdownXpath}
     Sleep     3 seconds
     CLICK ELEMENT                      ${ActionSaveButtonXpath}
      #Close
      Sleep     20 seconds
      CLICK ELEMENT                       ${CloseButtonXpath}
      Sleep     10 seconds
      Unselect frame
      Sleep    5 seconds
      Wait Until Element Is Visible       ${YesButtonXpath}    40 seconds
      Click Element                       ${YesButtonXpath}
      SCREENSHOT     Suggestions and Innovations Actions record saved



















