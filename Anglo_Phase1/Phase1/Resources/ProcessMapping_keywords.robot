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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\ProcessMapping\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep   7 seconds
    Screenshot    Home Page

Navigating to Process Mapping
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${PMMaintenancePageXpath}
    Sleep     2 seconds
    Screenshot    Process maintenance page displayed
    Wait Until Element Is Visible       ${ProcessMappingXpath}   20 seconds
    Click Element             ${ProcessMappingXpath}
    Sleep     1 seconds
    Screenshot    Navigated to Process mapping tab

FR1 - Capture Process Mapping
    Log To Console    FR1 - Capture Process Mapping
    click element             ${PMAddBtnID}
    sleep     2 seconds
    Screenshot    FR1 Add button clicked
    click element             ${PMProcessFlowID}
    sleep     1 seconds
    Screenshot    FR1 Process button clicked
    click element             ${PMBusinessUnitDdXpath}
    sleep     1 seconds
    click element             ${PMBusinessUnitXpandXpath}
    sleep     1 seconds
    click element             ${PMBusinessUnitXpand2Xpath}
    sleep     1 seconds
    click element             ${PMBusinessUnitXpand3Xpath}
    sleep     1 seconds
    click element             ${PMBusinessUnitSelectXpath}
    sleep     1 seconds
    click element             ${PMBusinessUnitDdXpath}
    sleep     1 seconds
    input text                ${PMBusinessAreaXpath}        Tim Testing
    sleep     1 seconds
    input text                ${PMProcessDescriptionXpath}      Testing Automation
    sleep     1 seconds
    click element             ${PMProcessOwnerDdXpath}
    sleep     1 seconds
    Input Text                ${PMProcessOwnerSrchXpath}    a
    Press Keys                ${PMProcessOwnerSrchXpath}    ENTER
    Wait Until Element Is Visible    ${PMProcessOwnerSelectID}    40 seconds
    Sleep    1 seconds
    click element             ${PMProcessOwnerSelectID}
    sleep     1 seconds
    input text                ${PMReferenceFieldXpath}      Testing
    sleep     1 seconds
    click element             ${PMLifecycleDdXpath}
    sleep     1 seconds
    click element             ${PMLifecycleSelectXpath}
    sleep     1 seconds
    input text                ${PMLinkToProcessXpath}       Tested
    sleep     1 seconds
    click element             ${PMSupportingDocTabXpath}
    sleep     1 seconds
    click element             ${PMLinkToDocXpath}
    sleep     1 seconds
    unselect frame
    input text                ${PMURLFieldID}       AutoTesting.com
    sleep     1 seconds
    input text                ${PMURLTileFieldID}       Tested
    sleep     1 seconds
    Screenshot    FR1 info added
    click element             ${PMURLAddBtnID}
    Screenshot    FR1 URL add button clicked
    sleep     1 seconds
    Select Frame              ${iFrame}
    click element             ${PMProcessTabXpath}
    sleep     1 seconds
    click element             ${PMSaveBtnID}
    Screenshot    FR1 save button clicked
    sleep     7 seconds

FR2 - Capture Sub Process Mapping
    Log To Console    FR2 - Capture Sub Process Mapping
    click element             ${PMSubProcessTabXpath}
    sleep     1 seconds
    click element             ${PMSubProcessAddBtnXpath}
    sleep     2 seconds
    Screenshot    FR2 Sub process Add button clicked
    click element             ${PMSPProcessFlowID}
    sleep     1 seconds
    Screenshot    FR2 Process flow button clicked
    input text                ${PMSubProcessfieldxpath}       SP Test
    sleep     1 seconds
    input text                ${PMSPDescriptionFieldXpath}    Auto Testing
    sleep     1 seconds
    input text                ${PMSPReferenceFieldXpath}      Tim Testing
    sleep     1 seconds
    input text                ${PMSPOrderFieldXpath}          663
    sleep     1 seconds
    click element             ${PMSPLinkedHazardToggleXpath}
    sleep     1 seconds
    click element             ${PMSPRiskSourceDdXpath}
    sleep     1 seconds
    click element             ${PMSPRiskSourceSelectXpath}
    sleep     1 seconds
    click element             ${PMSPSupportDocTabXpath}
    sleep     1 seconds
    click element             ${PMSPLinkToDocXpath}
    sleep     1 seconds
    unselect frame
    input text                ${PMSPURLFieldID}     AutoTest.com
    sleep     1 seconds
    input text                ${PMSPURLTileFieldID}     Testing Tim
    sleep     1 seconds
    Screenshot    FR2 Info added
    click element             ${PMSPURLAddBtnID}
    Screenshot    FR2 Sub process URL add button clicked
    sleep     1 seconds
    Select Frame              ${iFrame}
    sleep     2 seconds
    #click element             ${PMSubProcessTabXpath}
    #sleep     1 seconds
    Wait Until Element Is Visible         ${PMSPSaveBtnID}   30 seconds
    click element             ${PMSPSaveBtnID}
    Screenshot    FR2 Saving
    sleep     7 seconds
    Screenshot    FR2 Saved

FR3 - Capture Activities
    Log To Console    FR3 - Capture Activities
    Wait Until Element Is Visible      ${SPActivitiesTabID}      30 seconds
    Sleep    5 seconds
    click element             ${SPActivitiesTabID}
    sleep     1 seconds
    Screenshot    FR3 Activities tab clicked
    Wait Until Element Is Visible         ${SPActivitiesAddBtnXpath}    30 seconds
    click element             ${SPActivitiesAddBtnXpath}
    sleep     2 seconds
    Screenshot    FR3 Add button clicked
    click element             ${SPActivitiesPFlowID}
    sleep     1 seconds
    Screenshot    FR3 Process flow button clicked
    input text                ${SPActivitiesActivityXpath}      Testing 2
    sleep     1 seconds
    input text                ${SPActivitiesActivityDescrXpath}     Tested by Tim
    sleep     1 seconds
    input text                ${SPActivitiesOrderXpath}     233
    sleep     1 seconds
    click element             ${SPActivitiesSDocTabXpath}
    sleep     1 seconds
    click element             ${SPActivitiesLinkToDocXpath}
    sleep     1 seconds
    unselect frame
    input text                ${SPActivitiesSPURLFieldID}       Testing.com
    sleep     1 seconds
    input text                ${SPActivitiesURLTileFieldID}     Tested
    sleep     1 seconds
    Screenshot    FR3 Info seleceted
    click element             ${SPActivitiesURLAddBtnID}
    Screenshot    FR3 URL Add button clicked
    sleep     1 seconds
    Select Frame              ${iFrame}
    sleep     3 seconds
    click element             ${SPActivitiesTabXpath}
    sleep     1 seconds
    click element             ${SPActivitiesSaveBtnID}
    Screenshot    FR3 Saving
    sleep     7 seconds
    Screenshot    FR3 Saved

FR4 - Edit Process Mapping
    Log To Console    FR3 - Capture Activities
    click element             ${SPActivitiesCloseBtnXpath}
    sleep     3 seconds
    click element             ${SPCloseBtnXpath}
    sleep     3 seconds
    input text                ${PMProcessDescriptionXpath}      Testing Automation Edited
    sleep     1 seconds
    Screenshot    FR4 Edited info
    click element             ${PMSaveBtnID}
    Screenshot    FR4 Saving
    sleep     7 seconds
    Screenshot    FR4 Saved