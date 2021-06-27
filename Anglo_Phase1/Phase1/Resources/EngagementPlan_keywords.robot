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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\EngagementPlan\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    Sleep     7 seconds
    Screenshot    Home page

Navigating to Engagement Plan
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${SocialSustainabilityXpath}
    Sleep    3 seconds
    Click Element             ${EngagementPlanXpath}
    Sleep     2 seconds
    Screenshot    Navigate to Engagement plan

FR1 - Capture Engagement Plan
    Log To Console    FR1 - Capture Engagement Plan
    click element              ${EngagementPlanAddBtnID}
    sleep     5 seconds
    Screenshot    FR1 Add button clicked
    click element              ${EPProcessFlowID}
    sleep     1 seconds
    Screenshot    FR1 Process flow button clicked
    click element              ${EPBusinessUnitDdXpath}
    sleep     1 seconds
    click element              ${EPBusinessUnitDdXpandXpath}
    sleep     1 seconds
    scroll element into view   ${EPBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    click element              ${EPBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    scroll element into view   ${EPBusinessUnitDdXpand3Xpath}
    sleep     1 seconds
    click element              ${EPBusinessUnitDdXpand3Xpath}
    # sleep     1 seconds
    # click element              ${EPBusinessUnitDdXpand4Xpath}
    sleep     1 seconds
    click element              ${EPBusinessUnitDdSelectXpath}
    sleep     1 seconds
    click element              ${EPFuncLocationDdXpath}
    Wait Until Element Is Visible    ${EPFuncLocationSelectID}    40 seconds
    click element              ${EPFuncLocationSelectID}
    sleep     1 seconds
    input text                 ${EPTitleFieldXpath}        Tim Testing
    sleep     1 seconds
    click element              ${EPLinkProjectTckBoxXpath}
    sleep     1 seconds
    click element              ${EPProjectDdXpath}
    sleep     1 seconds
    Input Text                 ${EPProjectSrchXpath}    a
    Press Keys                 ${EPProjectSrchXpath}    ENTER
    Wait Until Element Is Visible    ${EPProjectSelectID}    40 seconds
    Sleep    1 seconds
    click element              ${EPProjectSelectID}
    sleep     1 seconds
    click element              ${EPLinkProjectTckBoxXpath}
    sleep     1 seconds

    #Get the next date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=1day
    Set Global Variable    ${NextDate}
    Wait Until Element Is Visible    ${EPStartDateFieldXpath}    40 seconds
    Click Element                    ${EPStartDateFieldXpath}
    Input Text                       ${EPStartDateFieldXpath}    ${NextDate}
    # input text                 ${EPStartDateFieldXpath}        28-01-2021
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelectID}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencyCancelBtnXpath}
    sleep     1 seconds
    Screenshot    FR1 info recorded
    click element              ${EPFrequencyTckBoxXpath}
    sleep     1 seconds
    click element              ${EPFrequencyTckBoxXpath}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect2ID}
    sleep     1 seconds

    #Get the next day for the end date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=2day    
    Click Element                        ${EPEngagementEndDateFieldXpath}
    Input Text                           ${EPEngagementEndDateFieldXpath}    ${NextDate}    
    # input text                 ${EPEngagementEndDateFieldXpath}     29-01-2021

    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect3ID}
    sleep     1 seconds
    click element              ${EPDayOfWeekDdXpath}
    sleep     1 seconds
    click element              ${EPDayOfWeekSelectID}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect4ID}
    sleep     1 seconds
    click element              ${EPWeekOfMonthDdXpath}
    sleep     1 seconds
    click element              ${EPWeekOfMonthSelectID}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect5ID}
    sleep     1 seconds
    click element              ${EPAnnuallyFromDdXpath}
    sleep     1 seconds
    click element              ${EPAnnuallyFromSelectID}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect6ID}
    sleep     1 seconds
    click element              ${EPQuaterStartFromDdXpath}
    sleep     1 seconds
    click element              ${EPQuaterStartFromSelectID}
    sleep     1 seconds
    click element              ${EPFrequencyDdXpath}
    sleep     1 seconds
    click element              ${EPFrequencySelect7ID}
    sleep     1 seconds
    click element              ${EPBiAnnualFromDdXpath}
    sleep     1 seconds
    click element              ${EPBiAnnualFromSelectID}
    sleep     1 seconds
    click element              ${EPPurposeOfEngagementDdXpath}
    sleep     1 seconds
    click element              ${EPPurposeOfEngagementSelectXpath}
    sleep     1 seconds
    click element              ${EPMethodOfEngagementDdXpath}
    sleep     1 seconds
    click element              ${EPMethodOfEngagementSelectID}
    sleep     2 seconds
    Wait Until Element Is Visible        ${EPResponsiblePersonDdXpath}
    click element              ${EPResponsiblePersonDdXpath}
    sleep     5 seconds
    input text                 ${EPResponsiblePersonSearchXpath}    a
    press keys                 ${EPResponsiblePersonSearchXpath}    RETURN
    sleep     2 seconds
    click element              ${EPResponsiblePersonSelectID}
    sleep     1 seconds
    input text                 ${EPCommentsTextFieldXpath}      Tim Testing still
    sleep     1 seconds
    click element              ${EPSupportDocTabID}
    sleep     1 seconds
    click element              ${EPLinkADocBtnXpath}
    sleep     1 seconds
    unselect frame
    input text                 ${EPURLTxtFieldID}       Tim@AutoTesting.com
    sleep     1 seconds
    input text                 ${EPTitleFieldID}      Testing
    sleep     1 seconds
    Screenshot    FR1 Record info captured
    click element              ${EPSupportDocAddBtnID}
    sleep     1 seconds
    Screenshot    FR1 Support documents add button clicked
    Select Frame               ${iFrame}
    sleep     1 seconds
    click element              ${EPDetailsTabID}
    sleep     1 seconds
    Screenshot    FR1 Navigated to Details tab
    click element              ${EPSaveBtnID}
    Screenshot    FR1 Details Save button clicked
    sleep     7 seconds
    click element              ${EPAttendeesTabID}
    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    sleep     3 seconds
    Wait Until Element Is Visible    ${EPAttendeesStakeHDdXpath}    40 seconds
    click element              ${EPAttendeesStakeHDdXpath}
    sleep     1 seconds
    input text                 ${EPAttendeesStakeHDdSearchXpath}      abr
    press keys                 ${EPAttendeesStakeHDdSearchXpath}    RETURN
    # sleep     25 seconds
    Wait Until Element Is Visible    ${EPAttendeesStakeHSelectXpath}    40 seconds
    Sleep    1 seconds
    click element              ${EPAttendeesStakeHSelectXpath}
    sleep     2 seconds
    click element              ${EPAttendeesStakeHDdXpath}
    sleep     1 seconds
    click element              ${EPAttendeesGroupsDdXpath}
    sleep     2 seconds
    input text                 ${EPAttendeesGroupsDdSearchXpath}      a
    press keys                 ${EPAttendeesGroupsDdSearchXpath}    RETURN
    sleep     10 seconds
    click element              ${EPAttendeesGroupsSelectXpath}
    sleep     1 seconds
    click element              ${EPAttendeesGroupsDdXpath}
    sleep     1 seconds
    Screenshot    FR1 Record info captured
    click element              ${EPSaveBtnID}
    Screenshot    FR1 Saving
    sleep     7 seconds
    Screenshot    FR1 save button clicked

FR2 - Capture Engagement Plan Action
    Log To Console    FR2 - Capture Engagement Plan Action
    Sleep    5 seconds
    click element              ${EPActionsTabID}
    sleep     1 seconds
    Screenshot    FR2 Action tab clicked
    click element              ${EPActionAddXpath}
    sleep     2 seconds
    Screenshot    FR2 add button clicked
    click element              ${EPActionsPFlowID}
    sleep     1 seconds
    Screenshot    FR2 Process flow buttn clicked
    click element              ${EPActionsTaskTypeDdXpath}
    sleep     1 seconds
    click element              ${EPActionsTaskTypeSelectID}
    sleep     2 seconds
    click element              ${EPTypeOfActionDdXpath}
    sleep     1 seconds
    click element              ${EPTypeOfActionSelectID}
    sleep     1 seconds
    input text                 ${EPActionDescrTxtAreaXpath}        Tim Test Actions
    sleep     1 seconds
    click element              ${EPActionEntityDdXpath}
    sleep     3 seconds
    Click Element              ${EPActionEntityDdXpandXpath}
    Sleep    2 seconds
    Click Element              ${EPActionEntitySelectID}
    # Input Text                 ${EPActionEntitySearchXpath}    AutoTest
    # Sleep    1 seconds
    # Press Keys                 ${EPActionEntitySearchXpath}    ENTER
    # Wait Until Element Is Visible    ${EPActionEntityResultID}    40 seconds
    # Sleep    1 seconds
    # Click Element              ${EPActionEntityResultID}
    # click element              ${EPActionEntityDdXpandXpath}
    # sleep     1 seconds
    # click element              ${EPActionEntitySelectID}
    sleep     2 seconds
    click element              ${EPACtionsRespPersonDdXpath}
    sleep     2 seconds
    Wait Until Element Is Visible        ${EPResponsiblePersonSearch2Xpath}   40 seconds
    input text                 ${EPResponsiblePersonSearch2Xpath}     AutoTest
    press keys                 ${EPResponsiblePersonSearch2Xpath}    ENTER
    sleep     2 seconds
    click element              ${EPResponsiblePerson2SelectID}
    sleep     2 seconds
    click element              ${EPActionAgencyDdXpath}
    sleep     2 seconds
    click element              ${EPActionAgencySelectID}
    sleep     2 seconds
    click element              ${EPActionTaskPriorityDdXpath}
    sleep     1 seconds
    click element              ${EPActionTaskPrioritySelectID}
    sleep     1 seconds

    #Get the next day for the end date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=2day    
    Click Element                        ${EPActionDueDateFieldXpath}
    # Input Text                           ${EPActionDueDateFieldXpath}    ${NextDate}
    # input text                 ${EPActionDueDateFieldXpath}     30-01-2021
    
    sleep     1 seconds
    Screenshot    FR2 Record info captured
    click element              ${EPActionsSaveBtnXpath}
    Screenshot    FR2 Saving
    sleep     7 seconds
    Screenshot    FR2 save button clicked