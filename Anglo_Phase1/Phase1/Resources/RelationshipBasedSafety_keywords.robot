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
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\RelationshipBasedSafety\\${Date}

Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep   10 seconds
    Screenshot    Homepage

Navigating to Relationship Based Safety
    Log To Console    Navigate to Relationship Based Safety
    Sleep     10 seconds
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible    ${InspectionObsvManegXpath}    40 seconds
    Click Element                    ${InspectionObsvManegXpath}
    Wait Until Element Is Visible    ${RBSXpath}    40 seconds
    Click Element             ${RBSXpath}
    Sleep     7 seconds
    Screenshot    Navigated to Relationship based safety

FR1 - Capture Relationship Based Safety Record For SLP Observation
    Log To Console    FR1 - Capture Relationship Based Safety Record For SLP Observation

    Wait Until Element Is Visible    ${RBSAddBtnID}    40 seconds
    click element              ${RBSAddBtnID}
    sleep     7 seconds
    Screenshot    Add button clicked
    Wait Until Element Is Visible    ${RBSProcessFlowID}    20 seconds
    click element              ${RBSProcessFlowID}
    sleep     2 seconds
    Screenshot    Process Flow button clicked
    click element              ${RBSBusinessUnitDdXpath}
    sleep     2 seconds
    click element              ${RBSBusinessUnitDdXpandXpath}
    sleep     2 seconds
    scroll element into view   ${RBSBusinessUnitDdXpand2Xpath}
    click element              ${RBSBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    scroll element into view   ${RBSBusinessUnitDdXpand3Xpath}
    click element              ${RBSBusinessUnitDdXpand3Xpath}
    sleep     1 seconds
    click element              ${RBSBusinessUnitDdXpand4Xpath}
    sleep     1 seconds
    click element              ${RBSBusinessUnitSelectID}
    sleep     1 seconds
    click element              ${RBSLinkProjectTckBoxXpath}
    sleep     1 seconds
    click element              ${RBSProjectDdXpath}
    sleep     1 seconds
    click element              ${RBSProjectSelectID}
    sleep     1 seconds
    click element              ${RBSFuncLocationDdXpath}
    Wait Until Element Is Visible    ${RBSFuncLocationSearchXpath}    40 seconds
    Input Text                 ${RBSFuncLocationSearchXpath}    si
    Press Keys                 ${RBSFuncLocationSearchXpath}    ENTER
    Wait Until Element Is Visible    ${RBSFuncLocationSelectionID}    40 seconds
    sleep     2 seconds
    click element              ${RBSFuncLocationSelectionID}
    sleep     1 seconds
    input text                 ${RBSSpecificLocFieldXpath}      Test Land
    sleep     1 seconds
    input text                 ${RBSDateObservedXpath}      02-02-2021
    sleep     1 seconds
    input text                 ${RBSTimeObservedXpath}      12:08
    sleep     1 seconds
    click element              ${RBSTypeOfObsDdXpath}
    sleep     1 seconds
    click element              ${RBSTypeOfObsSelectID}
    sleep     1 seconds
    input text                 ${RBSObservationFieldXpath}      Tim Testing
    sleep     1 seconds
    input text                 ${RBSInteractionFieldXpath}      Auto Testing
    sleep     1 seconds
    click element              ${RBSPersonObservingDdXpath}
    sleep     1 seconds
    input text                 ${RBSPersonObservingDdSearchXpath}       a
    press keys                 ${RBSPersonObservingDdSearchXpath}   RETURN
    sleep     1 seconds
    click element              ${RBSPersonObservingSelectID}
    sleep     1 seconds
    click element              ${RBSObsGroupDdXpath}
    sleep     1 seconds
    click element              ${RBSObsGroupSelectID}
    sleep     1 seconds
    Screenshot    Info selected and added
    click element              ${RBSSaveBtnID}
    Screenshot    Record save button clicked
    sleep     10 seconds

FR2 - Capture Relationship Based Safety Record For VFL Observation
    Log To Console    FR2 - Capture Relationship Based Safety Record For VFL Observation
    Wait Until Element Is Visible    ${RBSAddBtnID}    10 seconds
    click element              ${RBSAddBtnID}
    sleep     2 seconds
    Screenshot    FR2 Add button clicked
    click element              ${RBSProcessFlowID}
    sleep     1 seconds
    Screenshot    FR2 Process Flow button clicked
    click element              ${RBSBusinessUnitDdXpath}
    sleep     1 seconds
    click element              ${RBSBusinessUnitDdXpandXpath}
    sleep     1 seconds
    scroll element into view   ${RBSBusinessUnitDdXpand2Xpath}
    click element              ${RBSBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    scroll element into view   ${RBSBusinessUnitDdXpand3Xpath}
    click element              ${RBSBusinessUnitDdXpand3Xpath}
    sleep     1 seconds
    click element              ${RBSBusinessUnitDdXpand4Xpath}
    sleep     1 seconds
    click element              ${RBSBusinessUnitSelectID}
    sleep     1 seconds
    click element              ${RBSLinkProjectTckBoxXpath}
    sleep     1 seconds
    click element              ${RBSProjectDdXpath}
    sleep     1 seconds
    click element              ${RBSProjectSelectID}
    sleep     1 seconds
    click element              ${RBSFuncLocationDdXpath}
    Sleep    1 seconds
    Wait Until Element Is Visible    ${RBSFuncLocationSearchXpath}    40 seconds
    Input Text                 ${RBSFuncLocationSearchXpath}    si
    Press Keys                 ${RBSFuncLocationSearchXpath}    ENTER
    Wait Until Element Is Visible    ${RBSFuncLocationSelectionID}    40 seconds
    click element              ${RBSFuncLocationSelectionID}
    sleep     1 seconds
    input text                 ${RBSSpecificLocFieldXpath}      Test Land
    sleep     1 seconds
    input text                 ${RBSDateObservedXpath}      02-02-2021
    sleep     1 seconds
    input text                 ${RBSTimeObservedXpath}      12:08
    sleep     1 seconds
    click element              ${RBSTypeOfObsDdXpath}
    sleep     1 seconds
    click element              ${RBSTypeOfObsDdXpandXpath}
    sleep     1 seconds
    click element              ${RBSTypeOfObsSelect2ID}
    sleep     1 seconds
    input text                 ${RBSObservationFieldXpath}      Tim Testing
    sleep     1 seconds
    input text                 ${RBSInteractionFieldXpath}      Auto Testing
    sleep     1 seconds
    click element              ${RBSPersonObservingDdXpath}
    sleep     1 seconds
    input text                 ${RBSPersonObservingDdSearchXpath}       a
    press keys                 ${RBSPersonObservingDdSearchXpath}   RETURN
    sleep     1 seconds
    click element              ${RBSPersonObservingSelectID}
    sleep     1 seconds
    click element              ${RBSObsGroupDdXpath}
    sleep     1 seconds
    click element              ${RBSObsGroupSelectID}
    sleep     1 seconds
    Screenshot    FR2 Process info added
    click element              ${RBSSaveBtnID}
    Screenshot    FR2 Add button clicked
    sleep     15 seconds
    Wait Until Element Is Visible    ${RBSQuestionairStartBtnID}    20 seconds
    Sleep    5 seconds
    click element              ${RBSQuestionairStartBtnID}
    sleep     2 seconds
    Screenshot    FR2 RBS Questionair Start Btn clicked
    input text                 ${RBSQuestion1Xpath}     34
    sleep     2 seconds
    input text                 ${RBSQuestion2Xpath}     56
    sleep     1 seconds
    input text                 ${RBSQuestion3Xpath}     23
    sleep     2 seconds
    input text                 ${RBSQuestion4Xpath}     3
    sleep     2 seconds
    Screenshot    FR2 Questionair info added
    click element              ${RBSQuestionaireFinishBtnXpath}
    Screenshot    FR2 Questionair Finish button clicked
    sleep     10 seconds

FR3-Capture Safety Leadership Actions
    Log To Console    FR3-Capture Safety Leadership Actions
    Sleep    7 seconds
    scroll element into view   ${RBSActionsAddBtnXpath}
    sleep     1 seconds
    click element              ${RBSActionsAddBtnXpath}    
    sleep     1 seconds
    Screenshot    FR3 Add button clicked
    Sleep    10 seconds
    Wait Until Element Is Visible    ${RBSActionsPFlowID}    40 seconds
    click element              ${RBSActionsPFlowID}
    Log To Console    PAST LINE 197
    sleep     1 seconds
    Screenshot    FR3 Process Flow button clicked
    Wait Until Element Is Visible    ${RBSActionsTaskTypeDdXpath}    20 seconds
    click element              ${RBSActionsTaskTypeDdXpath}
    sleep     2 seconds
    click element              ${RBSActionsTaskTypeSelectID}
    sleep     2 seconds
    click element              ${RBSActionsTypeOfActionDdXpath}
    sleep     5 seconds
    click element              ${RBSActionsTypeOfActionSelectID}
    sleep     2 seconds
    input text                 ${RBSActionsDescrFieldXpath}     Tim Testing
    sleep     1 seconds
    click element              ${RBSActionsEntityDdXpath}
    sleep     1 seconds
    click element              ${RBSActionsEntityDdXpandXpath}
    sleep     1 seconds
    click element              ${RBSActionsEntitySelectID}
    sleep     1 seconds
    click element              ${RBSActionsRespPersonDdXpath}
    sleep     1 seconds
    input text                 ${RBSActionsRespPersonSearchXpath}       a
    press keys                 ${RBSActionsRespPersonSearchXpath}       RETURN
    sleep     1 seconds
    click element              ${RBSActionsRespPersonSelectID}
    sleep     1 seconds
    click element              ${RBSActionsAgencyDdXpath}
    sleep     1 seconds
    click element              ${RBSActionsAgencySelectID}
    sleep     1 seconds
    click element              ${RBSActionsTaskPriorityDdXpath}
    sleep     1 seconds
    click element              ${RBSActionsTaskPrioritySelectID}
    sleep     2 seconds
    input text                 ${RBSActionsDueDateFieldXpath}       30-03-2021
    sleep     2 seconds
    Screenshot    FR3 Info added and selected
    click element              ${RBSActionsSaveBtnID}
    Screenshot    FR3 Save button clicked
    sleep     3 seconds