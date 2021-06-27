*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Actions_var.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Actions\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Add an Action
    Log To Console    Starting FR1 - Add an Action

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${ActionsModulesXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${ActionsModulesXpath}
    Wait Until Element Is Visible        ${AdHocActionsXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${AdHocActionsXpath}
    Screenshot    Navigate to Ad-Hoc Actions
    Sleep     3 seconds
    Wait Until Element Is Visible        ${AddButtonXpath}    40 seconds
    Click Element                        ${AddButtonXpath}
    Screenshot    Add button clicked
    Wait Until Element Is Visible        ${BusinessUnitDropdownXpath}
    Click Element                        ${BusinessUnitDropdownXpath}
    Sleep    1 seconds
    Click Element                        ${BUAAGOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BUBCOOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BUKOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BUSMOptionXpath}
    Sleep    1 seconds
    Input Text                           ${DescriptionTextAreaXpath}    test
    Click Element                        ${AdHocActionsSaveAndContinue}
    Sleep    3 seconds
    Screenshot    Information selected and added
    #1.Click on [Add] on {parent record} / Actions non editable grid.
    #{Parent module} / Actions add page opens with Action Detail and Supporting Documents tabs shown. The Action start date field defaults to current date.
    #The record is in the Add action phase.
    Wait Until Element Is Visible        ${ActionsAddButtonXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${ActionsAddButtonXpath}
    Sleep    5 seconds
    Click Element                        ${ProcessflowButtonXpath}
    Screenshot      Action Details Supporting Documents Tabs and process flow
    #Alternate scenario 1:Under Entity, do not select ‘De Beers Group’ or any of its subsidiaries below it
    #No additional fields display

    Wait Until Element Is Visible        ${EntityListBoxXpath}
    Click Element                        ${EntityListBoxXpath}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${EAAGOptionXpath}
    Click Element                        ${EAAGOptionXpath}
    Sleep    5 seconds
    Click Element                        ${EAApOptionXpath}
    Sleep    1 seconds
    Click Element                        ${EAApOptionXpath1}
    Sleep    1 seconds
    Click Element                        ${EAApOptionXpath2}
    Sleep    1 seconds
    #Click Element                        ${EntityListBoxXpath}
    #Sleep    1 seconds
    #Click Element                        ${DeselectAllXpath}
    #Main Scenarios



    #2.	Under Entity, select ‘De Beers Group’ or any of its subsidiaries below it.
    #The Responsible team field displays.

    #Click Element                        ${ValidationClosePopupXpath}
    Sleep    1 seconds
    Click Element                        ${EntityListBoxXpath}
    Sleep    5 seconds
    Click Element                        ${EAAGOptionXpath}
    Sleep    5 seconds
    Click Element                        ${EDBGOptionXpath}
    Sleep    1 seconds
    Click Element                        ${EDBGOptionXpath1}
    Sleep    2 seconds
    Click Element                        ${EDBGOptionXpath2}
    Sleep    2 seconds
    Screenshot  Responsible team field is displyed
    #Click Element                        ${EntityListBoxXpath}
    Sleep    2 seconds
    #Click Element                        ${DeselectAllXpath}

    #Alternate scenario 2:Do not tick the SAP work management checkbox
    #No additional fields display
    Screenshot  SAP Work Management panel should not be displayed

    #3.	Navigate to Action Detail tab and tick the SAP work management checkbox.
    Click Element                        ${SAPWMcheckboxXpath}
    Screenshot  SAP Work Management panel is displayed


    #4.	Select a Functional location
    #The Default work centre data label is automatically populated based on the Main work centre linked
    #to the chosen Functional location in the Maintenance – Functional Location module
    Wait Until Element Is Visible        ${EntityListBoxXpath}
    Click Element                        ${EntityListBoxXpath}

    Sleep    1 seconds
    Wait Until Element Is Visible        ${EAAGOptionXpath}
    Click Element                        ${EAAGOptionXpath}
    Sleep    5 seconds
    Click Element                        ${EAApOptionXpath}
    Sleep    1 seconds
    Click Element                        ${EAApOptionXpath1}
    Sleep    1 seconds
    Click Element                        ${EAApOptionXpath2}
    Sleep    2 seconds
    Click Element                        ${FunctionalLocationFieldXpath}
    Sleep    2 seconds
    Click Element                        ${FunctionalLocationFieldXpath1}
    Input text                           ${FunctionalLocationFieldXpath1}   a
    Press Keys                           ${FunctionalLocationFieldXpath1}   ENTER
    #Wait Until Element Is Visible        ${FLSelectFieldXpath1}             40 seconds

    #Alternate scenario 3: Tick the Change work centre checkbox
    #The Change work centre dropdown is displayed
    Click Element                        ${ChangeworkcentrecheckboxXpath}
    Sleep    2 seconds
    scroll element into view             ${ReplicatecheckboxXpath}
    Sleep    2 seconds
    Screenshot  The Change work centre dropdown is displayed
    Click Element                        ${ChangeworkcentrecheckboxXpath}
    #Alternate scenario 4:Select “Rejected” for the Validation status
    #The Rejection comments field is displayed.
    Click Element                        ${ValidationStatusXpath}
    Sleep    2 seconds
    Click Element                        ${VSRejectedXpath}
    Sleep    2 seconds
    scroll element into view             ${RejectionCommentsXpath}
    Screenshot  The Rejection comments field is displayed
    #Main Scenario
    Click Element                        ${ValidationStatusXpath}
    Sleep    2 seconds
    Click Element                        ${VSAwatingValidationXpath}
    Sleep    2 seconds
    #Alternate scenario 5:Select “No” for Is this a recurring action
    #No additional fields display
    Click Element                        ${IsthisarecurringactionXpath}
    Sleep    2 seconds
    Click Element                        ${IsthisarecurringactionXpath2}
    Sleep    2 seconds
    Screenshot  No additional fields display
    #Main Scenario
    Click Element                        ${IsthisarecurringactionXpath}
    Sleep    2 seconds
    Click Element                        ${IsthisarecurringactionXpath1}
    Sleep    2 seconds
    scroll element into view             ${ReccurenceEndDateXpath}
    Sleep    2 seconds
    #Alternate scenario 6:Select any option besides “Daily” for the Recurrence frequency
    #A checkbox next to the Recurrence frequency field does not display
    #The label next to the Schedule every numeric checkbox, updates according to the selection made
    Click Element                        ${ReccurenceFrequencyXpath}
    Sleep    2 seconds
    Click Element                        ${ReccurenceFrequencyWXpath}
    Screenshot  A checkbox next to the Recurrence frequency field does not display
    #Main Scenario
    Click Element                        ${ReccurenceFrequencyXpath}
    Sleep    2 seconds
    Click Element                        ${ReccurenceFrequencyXpath1}
    Screenshot  Please ensure the schedule is within the recurrence end date is displaying
    Sleep    2 seconds
    Click Element                        ${SAPWMcheckboxXpath}
    Sleep    2 seconds
    Click Element                        ${IsthisarecurringactionXpath}
    Sleep    2 seconds
    Click Element                        ${IsthisarecurringactionXpath2}
    Sleep    2 seconds
    Click Element                        ${TypeOfActionXpath1}
    Sleep    2 seconds
    Click Element                        ${SelectCOptionXpath}
    Sleep    2 seconds
    Input text                           ${ActionDescXpath}     anglo
    Sleep    2 seconds
    Click Element                        ${ResPXpath}
    Input text                           ${ResPSearchXpath}   a
    Press Keys                           ${ResPSearchXpath}   ENTER
    Wait Until Element Is Visible        ${ResPSelectionXpath}             40 seconds
    Click Element                        ${ResPSelectionXpath}
    Sleep    2 seconds

    Click Element                        ${ActionDueDateXpath}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${ActionDueDateXpath}    40 seconds
    Click Element                       ${ActionDueDateXpath}
    Input Text                          ${ADDSelectionXpath}     ${PlanCloseDate}

    Click Element                       ${SaveButtonXpath}
    Sleep    10 seconds
#    Wait Until Element Is Visible       ${ProcessflowButtonXpath}    10 seconds
#    Click Element                       ${ProcessflowButtonXpath}
    Screenshot      Record is saved and automatically moves to the To be initiated phase

