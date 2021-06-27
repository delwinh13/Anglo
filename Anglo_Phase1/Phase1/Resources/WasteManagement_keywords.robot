*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot
Resource    WasteManagement_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\WasteManagement\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials Entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep   4 seconds
    Screenshot   Home page

FR1 - Capture Waste Management Monitoring
    Log To Console    Starting FR1 - Capture Waste Management Monitoring

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    # Click Environment Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${EnvironmentSustainabilityXpath}    40 seconds
    Screenshot   Homepage
    Click Element                       ${EnvironmentSustainabilityXpath}

    # Click Waste Monitoring
    Sleep    2 seconds
    Wait Until Page Contains Element    ${WasteMonitoringXpath}    40 seconds
    Screenshot   Environment Sustainability clicked
    Click Element                       ${WasteMonitoringXpath}

    # Add Waste Monitoring Record
    Wait Until Element Is Not Visible   ${LoadingBarXpath}    40 seconds 
    Wait Until Page Contains Element    ${WMAddBtnID}    40 seconds
    Screenshot   Waste monitoring clicked
    Click Element                       ${WMAddBtnID}

    # Select Business Unit
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Wait Until Page Contains Element    ${WMBusinessUnitDdID}    40 seconds
    Screenshot   Add button clicked
    Click Element                       ${WMBusinessUnitDdID}
    Wait Until Page Contains Element    ${WMBusinessUnitExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMBusinessUnitExpandXpath}
    Wait Until Page Contains Element    ${WMBusinessUnitExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMBusinessUnitExpand2Xpath}
    Wait Until Page Contains Element    ${WMBusinessUnitExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMBusinessUnitExpand3Xpath}
    Wait Until Page Contains Element    ${WMBusinessUnitSelectID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMBusinessUnitSelectID}

    # Select Responsible Person
    Wait Until Element Is Visible       ${WMResponsiblePersonDdID}    40 seconds
    Click Element                       ${WMResponsiblePersonDdID}
    Wait Until Element Is Visible       ${WMResponsiblePersonSearchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                          ${WMResponsiblePersonSearchXpath}    AutoTest
    Press Keys                          ${WMResponsiblePersonSearchXpath}    ENTER
    Wait Until Element Is Visible       ${WMResponsiblePersonResultID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMResponsiblePersonResultID}

    # Select Monitoring Point
    Wait Until Element Is Visible       ${WMMonitoringPointDdID}    40 seconds
    Click Element                       ${WMMonitoringPointDdID}
    Wait Until Element Is Visible       ${WMMonitoringPointOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMMonitoringPointOptionID}

    # Select Month/Year
    Wait Until Element Is Visible       ${WMMonthDdID}    40 seconds
    Click Element                       ${WMMonthDdID}
    Wait Until Element Is Visible       ${WMMonthOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMMonthOptionID}
    Wait Until Element Is Visible       ${WMYearDdID}    40 seconds
    Click Element                       ${WMYearDdID}
    Wait Until Element Is Visible       ${WMYearOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMYearOptionID}

    # Validation
    Element Should Not Be Visible       ${WMEnviromentalPermitsDdID}
    Element Should Not Be Visible       ${WMLinkToProjectsDdID}
    Screenshot   Info added

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Screenshot   Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   Saved

FR1 - Tick Environmental Permit
    Log To Console    Starting FR1 - Tick Environmental Permit

    # Select Environmental Permit
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Sleep    5 seconds
    Wait Until Element Is Visible       ${WMEnviromentalPermitsChkXpath}    40 seconds
    Click Element                       ${WMEnviromentalPermitsChkXpath}

    # Validation
    Wait Until Element Is Visible       ${WMEnviromentalPermitsDdID}    40 seconds
    Element Should Be Visible           ${WMEnviromentalPermitsDdID}

    # De-select Environmental Permit
    Wait Until Element Is Visible       ${WMEnviromentalPermitsChkXpath}    40 seconds
    Click Element                       ${WMEnviromentalPermitsChkXpath}

FR1 - Tick Link To Projects
    Log To Console    Starting FR1 - Tick Link To Projects

    # Select Link To Projects
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Sleep    5 seconds
    Wait Until Element Is Visible       ${WMLinkToProjectsChkXpath}    40 seconds
    Click Element                       ${WMLinkToProjectsChkXpath}

    # Validation
    Wait Until Element Is Visible       ${WMLinkToProjectsDdID}    40 seconds
    Element Should Be Visible           ${WMLinkToProjectsDdID}

    # De-select Link To Projects
    Wait Until Element Is Visible       ${WMLinkToProjectsChkXpath}    40 seconds
    Click Element                       ${WMLinkToProjectsChkXpath}

FR2 – Capture Measurements
    Log To Console    Starting FR2 – Capture Measurements

    # Expand Waste Monitoring Measurements Panel
    Wait Until Element Is Visible      ${WMMeasurementssPanelXpath}    40 seconds
    Click Element                      ${WMMeasurementssPanelXpath}

    # Click Add button
    Wait Until Element Is Visible      ${WMMeasurementsAddBtnXpath}    40 seconds
    Click Element                      ${WMMeasurementsAddBtnXpath}

    # Select Item
    Wait Until Element Is Visible      ${WMMeasurementsItemDdID}    40 seconds
    Sleep    2 seconds
    Click Element                      ${WMMeasurementsItemDdID}
    Wait Until Element Is Visible      ${WMMeasurementsItemSearchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                         ${WMMeasurementsItemSearchXpath}    Hazardous
    Press Keys                         ${WMMeasurementsItemSearchXpath}    ENTER
    Wait Until Element Is Visible      ${WMMeasurementsItemExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsItemExpandXpath}
    Wait Until Element Is Visible      ${WMMeasurementsItemExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsItemExpand2Xpath}
    Wait Until Element Is Visible      ${WMMeasurementsItemOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsItemOptionID}

    # Input Measurement
    Wait Until Element Is Visible      ${WMMeasurementsNumbXpath}    40 seconds
    Input Text                         ${WMMeasurementsNumbXpath}    1

    # Select Measurement Taken By
    Wait Until Element Is Visible      ${WMMeasurementsTakenByDdID}    40 seconds
    Click Element                      ${WMMeasurementsTakenByDdID}
    Wait Until Element Is Visible      ${WMMeasurementsTakenBySearchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                         ${WMMeasurementsTakenBySearchXpath}    AutoTest
    Press Keys                         ${WMMeasurementsTakenBySearchXpath}    ENTER
    Wait Until Element Is Visible      ${WMMeasurementsTakenByResultXpath}    40 seconds
    Sleep    2 seconds
    Click Element                      ${WMMeasurementsTakenByResultXpath}

    # Select Activity
    Wait Until Element Is Visible      ${WMMeasurementsActivityDdID}    40 seconds
    Click Element                      ${WMMeasurementsActivityDdID}
    Wait Until Element Is Visible      ${WMMeasurementsActivityOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsActivityOptionID}

    # Enter Comments
    Wait Until Element Is Visible      ${WMMeasurementsCommentsXpath}    40 seconds
    Click Element                      ${WMMeasurementsCommentsXpath}
    Input Text                         ${WMMeasurementsCommentsXpath}    Testing

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Screenshot  FR2 Capture saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot  FR2 Capture saved

FR2 – Select Recycled Activity
    Log To Console    Starting FR2 – Select Recycled Activity

    # Select Recycled Activity
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Sleep    5 seconds
    Wait Until Element Is Visible      ${WMMeasurementsActivityDdID}    40 seconds
    Click Element                      ${WMMeasurementsActivityDdID}
    Wait Until Element Is Visible      ${WMMeasurementsActivityOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsRecActExpandXpath}
    Wait Until Element Is Visible      ${WMMeasurementsRecActOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                      ${WMMeasurementsRecActOptionID}

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Screenshot  FR1 Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot  FR1 saved

FR2 – Upload Supporting Documents
    Log To Console    Starting FR2 – Upload Supporting Documents

    # Upload supporting document
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Sleep    5 seconds
    Wait Until Element Is Visible      ${WMMeasurementsLinkToDocXpath}    40 seconds
    Click Element                      ${WMMeasurementsLinkToDocXpath}
    Unselect Frame
    Wait Until Element Is Visible      ${WMMeasurementsURLFieldID}    40 seconds
    Click Element                      ${WMMeasurementsURLFieldID}
    Input Text                         ${WMMeasurementsURLFieldID}    www.google.com
    Wait Until Element Is Visible      ${WMMeasurementsURLTileFieldID}    40 seconds
    Click Element                      ${WMMeasurementsURLTileFieldID}
    Input Text                         ${WMMeasurementsURLTileFieldID}    Google
    Wait Until Element Is Visible      ${WMMeasurementsURLAddBtnID}
    Screenshot  FR2 URL info captured
    Click Element                      ${WMMeasurementsURLAddBtnID}
    Sleep    1 seconds
    Screenshot  FR2 URL add button clicked
    Wait Until Element Is Visible      ${iFrame}    40 seconds
    Select Frame                       ${iFrame}

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Screenshot  FR2 Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot  FR2 Saved

FR3 – Capture Findings
    Log To Console    Starting FR3 – Capture Findings

    # Expand Waste Monitoring Findings Panel
    Wait Until Element Is Visible       ${WMFindingsPanelXpath}    40 seconds
    Click Element                       ${WMFindingsPanelXpath}

    # Click Add finding
    Wait Until Element Is Visible       ${WMFindingsAddBtnXpath}    40 seconds
    Scroll Element Into View            ${WMFindingsAddBtnXpath}
    Click Element                       ${WMFindingsAddBtnXpath}

    # Capture Finding Desciption
    Wait Until Element Is Visible       ${WMFindingsDescriptionXpath}    40 seconds
    Screenshot  FR3 Click add
    Click Element                       ${WMFindingsDescriptionXpath}
    Input Text                          ${WMFindingsDescriptionXpath}    Auto Testing
    Screenshot  FR3 Capture Finding Desciption

    # Capture Finding Owner
    Wait Until Element Is Visible       ${WMFindingsOwnerDdID}    40 seconds
    Click Element                       ${WMFindingsOwnerDdID}
    Wait Until Element Is Visible       ${WMFindingsOwnerSearchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                          ${WMFindingsOwnerSearchXpath}    Auto
    Press Keys                          ${WMFindingsOwnerSearchXpath}    ENTER
    Wait Until Element Is Visible       ${WMFindingsOwnerResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMFindingsOwnerResultXpath}
    Screenshot  Fr3 Capture Finding Owner

    # Capture Finding Classification
    Wait Until Element Is Visible       ${WMFindingsClassificationDdID}    40 seconds
    Click Element                       ${WMFindingsClassificationDdID}
    Wait Until Element Is Visible       ${WMFindingsClassificationOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMFindingsClassificationOptionID}
    Screenshot    FR3 Capture Finding classification

    # Save and Close
    Wait Until Element Is Visible       ${WMFindingsSaveAndCloseArrowXpath}    40 seconds
    Click Element                       ${WMFindingsSaveAndCloseArrowXpath}
    Wait Until Element Is Visible       ${WMFindingsSaveAndCloseBtnID}    40 seconds
    Sleep    1 seconds
    Screenshot  FR3 Save and close arrow clicked
    Click Element                       ${WMFindingsSaveAndCloseBtnID}
    Screenshot   Fr3 saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   FR3 saved

FR4 - Edit Waste Management
    Log To Console    Starting FR4 - Edit Waste Management

    # Select Month/Year
    Wait Until Element Is Not Visible   ${WaitDivXpath}    40 seconds
    Wait Until Element Is Visible       ${WMMonthDdID}    40 seconds
    Click Element                       ${WMMonthDdID}
    Wait Until Element Is Visible       ${WMMonthOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMMonthOptionID}
    Wait Until Element Is Visible       ${WMYearDdID}    40 seconds
    Click Element                       ${WMYearDdID}
    Wait Until Element Is Visible       ${WMYearOption2ID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMYearOption2ID}
    Screenshot   Fr4 info captured

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Screenshot   FR4 saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   FR4 saved