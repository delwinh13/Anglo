*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../Repository/Common.robot
Resource    ../Repository/WaterMonitoring_vars.robot
Resource    WaterMonitoring_keywords.robot

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
    Click Element             ${SubmitButtonid}

FR1 – Capture Water Monitoring
    Log To Console    Starting FR1 – Capture Water Monitoring

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    # Click Environment Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${EnvironmentSustainabilityXpath}    40 seconds
    Click Element                       ${EnvironmentSustainabilityXpath}

    # Click Water Monitoring
    Wait Until Element Is Visible       ${WaterMonitoringXpath}    40 seconds
    Click Element                       ${WaterMonitoringXpath}

    # Add Water Monitoring Record
    Wait Until Element Is Visible       ${WMAddBtnID}    40 seconds
    Click Element                       ${WMAddBtnID}

    # Select Business Unit
    Wait Until Page Contains Element    ${WMBusinessUnitDdID}    40 seconds
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

    # Select Water Type
    Wait Until Element Is Visible       ${WMWaterTypeDdID}    40 seconds
    Click Element                       ${WMWaterTypeDdID}
    Wait Until Element Is Visible       ${WMWaterTypeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMWaterTypeOptionID}

    # Select Measurement Type
    Wait Until Element Is Visible       ${WMMeasurementTypeDdID}    40 seconds
    Click Element                       ${WMMeasurementTypeDdID}
    Wait Until Element Is Visible       ${WMMeasurementTypeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMMeasurementTypeOptionID}

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

    # Set Sample Taken By
    Wait Until Element Is Visible       ${WMSampleTakenByDdID}    40 seconds
    Click Element                       ${WMSampleTakenByDdID}
    Wait Until Element Is Visible       ${WMSampleTakenBySearchXpath}    40 seconds
    Input Text                          ${WMSampleTakenBySearchXpath}    AutoTest
    Press Keys                          ${WMSampleTakenBySearchXpath}    ENTER
    Wait Until Element Is Visible       ${WMSampleTakenByResultID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${WMSampleTakenByResultID}

    # Validation
    Element Should Not Be Visible       ${WMEnviromentalPermitsDdID}
    Element Should Not Be Visible       ${WMLinkToProjectsDdID}

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

FR2 – Edit Water Monitoring
    Log To Console    FR2 – Edit Water Monitoring

    Sleep    10 seconds
    Wait Until Element Is Not Visible        ${WaitDivXpath}    40 seconds
    Wait Until Element Is Visible        ${WMMonthDdID}    40 seconds
    Click Element                        ${WMMonthDdID}
    Wait Until Element Is Visible        ${WMMonthOption2ID}    40 seconds
    Sleep    1 seconds
    Click Element                        ${WMMonthOption2ID}

    # Save record
    Wait Until Element Is Visible       ${WMSaveBtnID}    40 seconds
    Click Element                       ${WMSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    # # Expand Level Readings Panel
    # Wait Until Element Is Visible       ${WMLevelReadingPanelXpath}    40 seconds
    # Click Element                       ${WMLevelReadingPanelXpath}

    # # Click Add button    
    # Wait Until Element Is Visible       ${WMLevelReadingAddBtnXpath}    40 seconds
    # Sleep    2 seconds
    # Click Element                       ${WMLevelReadingAddBtnXpath}

    # # Capture Monitoring Point
    # Wait Until Element Is Visible       ${WMLevelReadingMonPointDdID}    40 seconds
    # Sleep    2 seconds
    # Click Element                       ${WMLevelReadingMonPointDdID}
    # Wait Until Element Is Visible       

