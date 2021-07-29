*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/vars.robot
Library     DateTime
Resource  ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\ClimateChangeEnergy\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials added
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    Sleep     7 seconds

Navigating to Climate Change & Energy
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${Eco2ManXpath}
    Sleep     2 seconds
    Screenshot    Navigated to Eco 2 Man tab
    Click Element             ${ClimateChangeMonitoringID}
    Sleep     2 seconds
    Screenshot    Navigated to Climate change and monitoring tab

FR1 - Capture Climate Change and Energy
    Log To Console    FR1 - Capture Climate Change and Energy
    sleep   5 seconds
    Wait Until Element Is Visible        ${ClimateChangeMonitoringAddBtnID}    20 seconds
    Click Element             ${ClimateChangeMonitoringAddBtnID}
    Sleep     2 seconds
    Screenshot    FR1 Climate change add button clicked
    Click Element             ${ClimateChangePFlowID}
    Sleep     1 seconds
    Screenshot    FR1 Process Flow button clicked
    Click Element             ${BusinessUnitDdXpath}
    Sleep     1 seconds
    Click Element             ${CBusinessUnitDdExpandXpath}
    Sleep     1 seconds
    Click Element             ${CBusinessUnitDdExpand2Xpath}
    Sleep     1 seconds
    Click Element             ${CBusinessUnitSelectID}
    Sleep     1 seconds
    Click Element             ${DateMonthDdXpath}
    Sleep     1 seconds
    Click Element             ${DateMonthSelectID}
    Sleep     1 seconds
    Click Element             ${DateYearDdXpath}
    Sleep     1 seconds
    Click Element             ${DateYearSelectID}
    # Sleep     1 seconds
    # input text                ${DateCapturedFieldXpath}     12-01-2021
    Sleep     2 seconds
    Click Element             ${LinkEnvPermitBoxXpath}
    Sleep     1 seconds
    Click Element             ${LinkToProjectsBoxXpath}
    Sleep     2  seconds
    Click Element             ${LinkEnvPermitDdXpath}
    Sleep     1 seconds
    Click Element             ${LinkEnvPermitSelectID}
    Sleep     1 seconds
    Click Element             ${LinkToProjectsDdXpath}
    Sleep     1 seconds
    Click Element             ${LinkToProjectsSelectID}
    Sleep     1 seconds
    Click Element             ${LinkToDocumentBtnXpath}
    Sleep     1 seconds
    unselect frame
    input text                ${URLTextFieldID}     AutoTest.com
    Sleep     1 seconds
    input text                ${TitleTextFieldID}       Auto Tested
    Sleep     2 seconds
    Screenshot    FR1 Record info captured
    Click Element             ${URLSaveBtnID}
    Sleep     1 seconds
    Screenshot    FR1 URL save button clicked
    Select Frame              ${iFrame}
    Click Element             ${ClimateChangeSaveBtnID}
    Sleep     5 seconds
    Screenshot    FR1 Climate change save button clicked

FR2 - Capture Climate Change Energy Measurement
    Log To Console    FR2 - Capture Climate Change Energy Measurement
    click element             ${MeasurementsToggleXpath}
    Sleep     1 seconds
    scroll element into view  ${InlineEditToggleXpath}
    Click element             ${InlineEditToggleXpath}
    Sleep     1 seconds
    Click element             ${MeasurementsAddBtnID}
    Sleep     3 seconds
    Screenshot    FR2 Measurements Add button clicked
    Wait Until Element Is Visible        ${MeasurementPFlowID}    20 seconds
    Click element             ${MeasurementPFlowID}
    Sleep     1 seconds
    Screenshot    FR2 Measurements Process Flow button clicked
    Click element             ${EmissionSourceDdXpath}
    Sleep     1 seconds
    Click element             ${EmissionSourceExpandXpath}
    Sleep     1 seconds
    Click element             ${EmissionSourceExpand2Xpath}
    Sleep     1 seconds
    Click element             ${EmissionSourceSelectID}
    Sleep     1 seconds
    input text                ${MeasurementNumberFieldXpath}        657
    Sleep     1 seconds
    input text                ${TargetNumberFieldXpath}         234
    Sleep     1 seconds
    Screenshot    FR2 Measuremnts info captured
    Click element             ${MeasurementsSaveBtnID}
    Sleep     30 seconds
    Screenshot    FR2 Measurements Save button clicked
    Click element             ${MeasurementsCloseBtnXpath}
    sleep     5 seconds
    Screenshot    FR2 Measurements close button clicked

FR3 - Capture Findings
    Log To Console    FR3 - Capture Findings
    Sleep    2 seconds
    click element             ${MeasurementsToggleXpath}
    # Wait Until Element Is Visible        ${MonitoringFindingsPFlowID}    20 seconds
    Sleep    3 seconds
    scroll element into view  ${MonitoringFindingsToggleXpath}
    Click element             ${MonitoringFindingsToggleXpath}
    Sleep     1 seconds
    Screenshot    FR3 Monitoring Findings clicked
    Click element             ${MontoringFindingsAddBtnXpath}
    Sleep     2 seconds
    Screenshot    FR3 Monitoring findings add button clicked
    Click element             ${MonitoringFindingsPFlowID}
    Sleep     1 seconds
    Screenshot    FR3 Monitoring findings Process flow button clicked
    input text                ${MonitoringFindingsDescrFieldXpath}      Auto Testing
    Sleep     2 seconds
    Click Element             ${FindingOwnerDdXpath}
    Sleep     1 seconds
    input text                ${FindingOwnerSearchBarXpath}         Auto
    press keys                ${FindingOwnerSearchBarXpath}     ENTER
    Sleep     1 seconds
    Click Element             ${FindingOwnerSelectID}
    Sleep     1 seconds
    Click Element             ${FindingClassDdXpath}
    Sleep     1 seconds
    Click Element             ${FindingClassSelectID}
    Sleep     1 seconds
    input text                ${FindingClosureDateXpath}        22-01-2021
    Sleep     1 seconds
    Click Element             ${RiskSourcesDdXpath}
    Sleep     1 seconds
    Click Element             ${RiskSourcesSelectXpath}
    Sleep     2 seconds
    Click Element             ${MonitoringFindingsDescrLabelXpath}
    Sleep     2 seconds
    Click Element             ${RelatedPermitsDdXpath}
    Wait Until Element Is Visible    ${RelatedPermitsSelectXpath}    40 seconds
    Sleep     1 seconds
    Click Element             ${RelatedPermitsSelectXpath}
    Sleep     1 seconds
    Click Element             ${RelatedPermitsDdXpath}
    Sleep     1 seconds
    Click Element             ${RelatedGroupStandrdDdXpath}
    Sleep     1 seconds
    Click Element             ${RelatedGroupStandrdSelectID}
    Sleep     1 seconds
    Click Element             ${FindingsDocLinkBtnXpath}
    unselect frame
    input text                ${FindingsURLFieldID}         AutoTesting.com
    input text                ${FindingsURLTitleID}         Testing Automation
    Sleep     1 seconds
    Click Element             ${FindingsURLSaveBtnID}
    select frame              ${iframe}
    Sleep     1 seconds
    Screenshot    RF3 Record info captured
    Click Element             ${FindingsSaveBtnID}
    sleep     20 seconds
    Screenshot    FR3 Save button clicked
    Wait Until Element Is Visible        ${FindingsCloseBtnXpath}     20 seconds
    Click Element             ${FindingsCloseBtnXpath}
    Sleep     10 seconds
    Screenshot    FR3 Close button clicked
    
    # Cater for confirmation Modal
    Unselect Frame
    Wait Until Element Is Visible    ${FindingsModalYesBtn}    40 seconds
    Click Element                    ${FindingsModalYesBtn}
    Select Frame                     ${iFrame}


FR4 - Edit Climate Change and Energy
    Log To Console    FR4 - Edit Climate Change and Energy
    Wait Until Element Is Visible        ${LinkEnvPermitBoxXpath}     20 seconds
    scroll element into view  ${LinkEnvPermitBoxXpath}
    Sleep     1 seconds
    Click Element             ${LinkEnvPermitBoxXpath}
    Sleep     1 seconds
    Click Element             ${LinkToProjectsBoxXpath}
    Sleep     1 seconds
    Screenshot    FR4 Record edited
    Click Element             ${ClimateChangeSaveBtnID}
    Screenshot    FR4 Save button clicked
    Sleep     5 seconds