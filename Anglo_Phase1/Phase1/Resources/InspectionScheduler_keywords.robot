*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot     Credentials added
    Click Element             ${SubmitButtonid}
    Screenshot     Login
    sleep  4 seconds
    Screenshot   Home Page

Navigating to Inspection Scheduler
    Sleep     7 seconds
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${InspectionSchedulerXpath}    20 seconds
    Click Element             ${InspectionSchedulerXpath}
    Sleep     7 seconds
    Screenshot     Navigated to Inspection Scheduler

FR1-Capture Inspection Scheduler
    Log To Console    FR1-Capture Inspection Scheduler
    Wait Until Element Is Visible        ${ISAddBtnID}    20 seconds
    click element              ${ISAddBtnID}
    sleep     2 seconds
    Screenshot     FR1 add button clicked
    Wait Until Element Is Visible        ${ISProcessFlowID}    20 seconds
    click element              ${ISProcessFlowID}
    sleep     3 seconds
    Screenshot     FR1 Process flow button clicked
    Wait Until Element Is Visible        ${ISBusinessUnitDdXpath}   20 seconds
    click element              ${ISBusinessUnitDdXpath}
    sleep     1 seconds
    click element              ${ISBusinessUnitDdXpandXpath}
    sleep     1 seconds
    scroll element into view   ${ISBusinessUnitDdXpand2Xpath}
    click element              ${ISBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    scroll element into view   ${ISBusinessUnitDdXpand3Xpath}
    click element              ${ISBusinessUnitDdXpand3Xpath}
    sleep     1 seconds
    click element              ${ISBusinessUnitDdXpand4Xpath}
    sleep     1 seconds
    click element              ${ISBusinessUnitSelectID}
    sleep     1 seconds
    click element              ${ISFuncLocationDdXpath}
    sleep     7 seconds
    Wait Until Element Is Visible        ${ISFuncLocationSelectionID}    20 seconds
    click element              ${ISFuncLocationSelectionID}
    sleep     1 seconds
    click element              ${ISInspTypeDdXpath}
    sleep     1 seconds
    click element              ${ISInspTypeSelect2ID}
    sleep     2 seconds
    #click element              ${ISInspTypeDdXpath}
    #sleep     1 seconds
    #click element              ${ISInspTypeSelectID}
    #sleep     1 seconds
    click element              ${ISChecklistToBeDoneDdXpath}
    sleep     5 seconds
    click element              ${ISChecklistToBeDoneSelectXpath}
    sleep     1 seconds
    click element              ${ISChecklistToBeDoneDdXpath}
    sleep     1 seconds
    input text                 ${ISNameOfInspectionDdXpath}     Testing Auto
    sleep     1 seconds
    input text                 ${ISPurposeFieldXpath}       Tested
    sleep     1 seconds
    Screenshot     FR1 Info captured
    click element              ${ISSaveBtnID}
    Screenshot     FR1 saving
    sleep     10 seconds
    Screenshot   FR1 Saved

FR2-Capture Inspection Scheduler Recurrence
    Log To Console    FR2-Capture Inspection Scheduler Recurrence
    Wait Until Element Is Visible        ${ISRecurrenceAddBtnXpath}    20 seconds
    scroll element into view   ${ISRecurrenceAddBtnXpath}
    click element              ${ISRecurrenceAddBtnXpath}
    Screenshot     FR2 Recurrence Add button clicked
    sleep     5 seconds
    Wait Until Element Is Visible        ${ISRecurrencePFlowID}    20 seconds
    click element              ${ISRecurrencePFlowID}
    sleep     1 seconds
    Screenshot     FR2 Recurrence Process flow button clicked
    click element              ${ISRRespPersonDdXpath}
    sleep     1 seconds
    input text                 ${ISRRespPersonDdSearchXpath}        a
    press keys                 ${ISRRespPersonDdSearchXpath}        RETURN
    sleep     1 seconds
    click element              ${ISRRespPersonDdSelectID}
    sleep     3 seconds
    click element              ${ISROwnerDdXpath}
    sleep     2 seconds
    input text                 ${ISROwnerDdSearchXpath}        a
    press keys                 ${ISROwnerDdSearchXpath}        RETURN
    sleep     1 seconds
    click element              ${ISROwnerSelectID}
    sleep     1 seconds
    click element              ${ISRTeamDdXpath}
    sleep     1 seconds
    input text                 ${ISRTeamDdSearchXpath}        a
    press keys                 ${ISRTeamDdSearchXpath}        RETURN
    sleep     1 seconds
    click element              ${ISRTeamSelectXpath}
    sleep     1 seconds
    click element              ${ISRTeamDdXpath}
    sleep     1 seconds
    input text                 ${ISRStartDatXpath}          03-02-2021
    sleep     1 seconds
    click element              ${ISRFrequencyDdXpath}
    sleep     1 seconds
    click element              ${ISRFrequencySelectID}
    sleep     1 seconds
    click element              ${ISRLinkDoXpath}
    sleep     1 seconds
    unselect frame
    input text                 ${ISRUrlFieldID}          AutoTest@testing.com
    sleep     2 seconds
    input text                 ${ISRTitleFieldID}          Tim Testing
    sleep     1 seconds
    click element              ${ISRUrlAddBtnID}
    Select Frame                ${iFrame}
    sleep     1 seconds
    Screenshot     FR2 Info added
    click element              ${ISRSaveBtnXpath}
    Screenshot     FR2 Saving
    sleep     10 seconds
    Screenshot   FR2 Saved
    click element              ${ISRCloseBtnXpath}
    sleep     7 seconds
    Screenshot     Close button clicked

FR3-Edit Inspection Scheduler
    Log To Console    FR3-Edit Inspection Scheduler
    scroll element into view   ${ISNameOfInspectionDdXpath}
    input text                 ${ISNameOfInspectionDdXpath}     Tested Auto
    sleep     1 seconds
    Screenshot     FR3 Edited record
    click element              ${ISSaveBtnID}
    Screenshot   FR3 Saving
    sleep     10 seconds
    Screenshot     FR3 save button clicked

FR4-Edit Inspection Scheduler Recurrence
    Log To Console    FR4-Edit Inspection Scheduler Recurrence
    scroll element into view   ${ISRRecordXpath}
    click element              ${ISRRecordXpath}
    sleep     7 seconds
    Screenshot     FR4 Inspection Scheduler Recurrence clicked
    Wait Until Element Is Visible        ${ISRecurrencePFlowID} 20 seconds
    click element              ${ISRecurrencePFlowID}
    sleep     1 seconds
    Screenshot     FR4 Inspection Scheduler Recurrence Process Flow Button clicked
    click element              ${ISRActiveDdXpath}
    sleep     1 seconds
    click element              ${ISRActiveSelectID}
    sleep     1 seconds
    Screenshot     FR4 Edited record
    click element              ${ISRSaveBtnXpath}
    Screenshot     FR4 Saving
    sleep     10 seconds
    Screenshot     FR4 Save button clicked
    Wait Until Element Is Visible        ${ISRCloseBtnXpath} 40 seconds
    click element              ${ISRCloseBtnXpath}
    Screenshot     FR4 Close icon clicked
    sleep     7 seconds





















