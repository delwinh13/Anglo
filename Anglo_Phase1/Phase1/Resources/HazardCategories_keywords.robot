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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\HazardCategories\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot   Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot   Login
    Sleep     7 seconds
    Screenshot   Home Page

Navigating to Hazard Categories
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${EnvSustainabilityXpath}
    Sleep     2 seconds
    Screenshot   Environment Sustainability tab clicked
    Click Element             ${EvaluatePMaintenanceID}
    Sleep     1 seconds
    Screenshot     Evaluate Maintenance clicked
    Click Element             ${HazardCategoriesXpath}
    Sleep     5 seconds
    Screenshot   Navigated to Hazard category

FR1 - Capture Hazard Categories
    Log To Console    FR1 - Capture Hazard Categories
    click element              ${HazardCategoriesAddBtnID}
    sleep     2 seconds
    Screenshot   FR1 add button clicked
    click element              ${HCProcessFlowID}
    sleep     1 seconds
    Screenshot   FR1 Process flow button clicked
    click element              ${HCBusinessUnitDdXpath}
    sleep     1 seconds
    click element              ${HCBusinessUnitDdXpandXpath}
    sleep     1 seconds
    click element              ${HCBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    click element              ${HCBusinessUnitDdXpand3Xpath}
    sleep     1 seconds
    click element              ${HCBusinessUnitDdSelectXpath}
    sleep     1 seconds
    click element              ${HCBusinessUnitDdXpath}
    sleep     1 seconds
    input text                 ${HCTypeFieldXpath}      Auto Testing
    sleep     1 seconds
    input text                 ${HCDescriptionFieldXpath}       Level 1
    sleep     1 seconds
    Screenshot   FR1 record info entered
    click element              ${HCSaveBtnID}
    Screenshot   FR1 Saving
    sleep     7 seconds
    Screenshot    FR1 Saved

FR2 - Capture Hazard Categories Level 2
    Log To Console    FR2 - Capture Hazard Categories Level 2
    Wait Until Element Is Visible        ${HCLevel2AddBtnXpath}   40 seconds
    click element              ${HCLevel2AddBtnXpath}
    sleep     8 seconds
    Screenshot   FR2 Level 2 Add button clicked
    click element              ${HCLevel2ProcessFlowID}
    sleep     1 seconds
    Screenshot   FR2 Level 2 process flow button clicked
    input text                 ${HCLevel2FieldXpath}        Auto Testing
    sleep     1 seconds
    input text                 ${HCDescription2FieldXpath}     Level 2
    sleep     1 seconds
    input text                 ${HCLink2FieldXpath}     autotest.com
    sleep     1 seconds
    Screenshot   FR2 Record info entered
    click element              ${HCLevel2SaveBtnID}
    Screenshot  FR2 Saving
    sleep     10 seconds
    Screenshot   FR2 Saved

FR3 - Capture Hazard Categories Level 3
    Log To Console    FR3 - Capture Hazard Categories Level 3
    Wait Until Element Is Visible        ${HCLevel3AddBtnXpath}   40 seconds
    click element              ${HCLevel3AddBtnXpath}
    sleep     5 seconds
    Screenshot   FR3 level 3 Add button clicked
    Wait Until Element Is Visible        ${HCLevel3ProcessFlowID}   40 seconds
    click element              ${HCLevel3ProcessFlowID}
    sleep     2 seconds
    Screenshot   FR3 Level 3 Process flow button clicked
    input text                 ${HCLevel3FieldXpath}        Auto Testing
    sleep     1 seconds
    input text                 ${HCDescription3FieldXpath}     Level 3
    sleep     1 seconds
    input text                 ${HCConsequence3FieldXpath}      Testing Test
    sleep     1 seconds
    input text                 ${HCLink3FieldXpath}     autotest.com
    sleep     1 seconds
    click element              ${HCLink2BusiImpactBoxXpath}
    sleep     1 seconds
    Screenshot   FR3 Info Entered
    click element              ${HCLevel3SaveBtnID}
    Screenshot   FR3 Saving
    sleep     10 seconds
    Screenshot   FR3 Saved

FR4 - Capture Hazard Categories Level 4
    Log To Console    FR4 - Capture Hazard Categories Level 4
    Wait Until Element Is Visible        ${HCLevel4AddBtnXpath}   40 seconds
    click element              ${HCLevel4AddBtnXpath}
    sleep     2 seconds
    Screenshot   FR4 Add button clicked
    Wait Until Element Is Visible        ${HCLevel4FieldXpath}    40 seconds
    #click element              ${HCLevel4ProcessFlowID}
    sleep     2 seconds
    Wait Until Element Is Visible        ${HCLevel4FieldXpath}   40 seconds
    input text                 ${HCLevel4FieldXpath}        Auto Testing
    sleep     1 seconds
    input text                 ${HCDescription4FieldXpath}     Level 4
    sleep     1 seconds
    input text                 ${HCLink4FieldXpath}     autotest.com
    sleep     1 seconds
    Screenshot   FR4 info added
    click element              ${HCLevel4SaveBtnID}
    Screenshot   Fr4 Saving
    sleep     10 seconds
    Screenshot   FR4 Saved

FR5 - Capture Hazard Categories Level 5
    Log To Console    FR5 - Capture Hazard Categories Level 5
    Wait Until Element Is Visible        ${HCLevel5AddBtnXpath}   40 seconds
    click element              ${HCLevel5AddBtnXpath}
    sleep     10 seconds
    Wait Until Element Is Visible        ${HCLevel5ProcessFlowID}   40 seconds
    Screenshot   FR5 Level 5 add button clicked
    click element              ${HCLevel5ProcessFlowID}
    sleep     1 seconds
    Screenshot   FR5 Level 5 process flow button clicked
    input text                 ${HCLevel5DocSectionFieldXpath}      Auto Testing
    sleep     1 seconds
    input text                 ${HCLevel5LaymanTermsFieldXpath}     Level 5
    sleep     1 seconds
    input text                 ${HCLevel5ComplianceFieldXpath}      Testing
    sleep     1 seconds
    input text                 ${HCLevel5PenaltiesFieldXpath}       Tested
    sleep     1 seconds
    Scroll Element into View   ${HCLevel5LinkBusImpactBoxXpath}
    sleep     1 seconds
    click element              ${HCLevel5LinkBusImpactBoxXpath}
    sleep     1 seconds
    Screenshot   FR5 Level 5 info added
    click element              ${HCLevel5SaveBtnID}
    Screenshot   FR5 Level 5 Saving
    sleep     10 seconds
    Screenshot   FR5 Level 5Record saved

FR6 - Capture Hazard Categories Obligations
    Log To Console    FR6 - Capture Hazard Categories Obligations
    scroll element into view   ${HCObligationAddBtnXpath}
    Wait Until Element Is Visible        ${HCObligationAddBtnXpath}  40 seconds
    click element              ${HCObligationAddBtnXpath}
    sleep     1 seconds
    Screenshot   FR6 Obligations Add button clicked
    input text                 ${HCObligationFieldXpath}        Auto Tested by Tim
    sleep     1 seconds
    click element              ${HCObligationTabXpath}
    sleep     1 seconds
    Screenshot   FR6 Obligations Navigated to Obligations Tab
    click element              ${HCObligationSaveBtnXpath}
    Screenshot   FR6 Obligations saving
    sleep     10 seconds
    Screenshot   FR6 Obligations saved

FR7 - Edit Hazard Categories
    Log To Console    FR7 - Edit Hazard Categories
    scroll element into view   ${HCLevel5CloseBtnXpath}
    sleep     2 seconds
    click element              ${HCLevel5CloseBtnXpath}
    sleep     5 seconds
    Screenshot   FR7 Closed level 5
    Wait Until Element Is Visible        ${HCLevel4CloseBtnXpath}  40 seconds
    click element              ${HCLevel4CloseBtnXpath}
    sleep     5 seconds
    Wait Until Element Is Visible        ${HCLevel3CloseBtnXpath}  40 seconds
    Screenshot   FR7 Close level 4
    click element              ${HCLevel3CloseBtnXpath}
    sleep     5 seconds
    Wait Until Element Is Visible         ${HCLevel2CloseBtnXpath}  40 seconds
    Screenshot   FR7 Close level 3
    click element              ${HCLevel2CloseBtnXpath}
    sleep     5 seconds
    Wait Until Element Is Visible     ${HCDescriptionEdit}       40 seconds
    Screenshot   FR7 Close level 2
    input text                 ${HCDescriptionEdit}        Level 1 Edited
    sleep     1 seconds
    Screenshot   FR7 Info captured
    click element              ${HCSave}
    Screenshot   FR7 Saving
    sleep     7 seconds
    Screenshot   FR7 Saved