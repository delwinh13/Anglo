*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/AirQuality_var.robot
#Resource    Stakeholder_keywords.robot

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

FR1 - Capture Air Quality Monitoring
    Log To Console    Starting FR1 - Capture Air Quality Monitoring

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Environmental Sustanability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${EnvironmentalSustainability}    60 seconds
    Click Element                       ${EnvironmentalSustainability}

    # Click Air Quality Monitoring
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityMonitoring}    40 seconds
    Click Element                       ${AirQualityMonitoring}


    # Add Stakeholder Air Quality Record
    Wait Until Element Is Visible       ${AirQualityAddNew}    40 seconds
    Click Element                       ${AirQualityAddNew}

    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${AirQualityProcessID}    40 seconds
    Click Element                       ${AirQualityProcessID}

    #Capture Business Unit

    Wait Until Element Is Visible       ${AirQualityBU}    40 seconds
    Click Element                       ${AirQualityBU}
    Wait Until Element Is Visible       ${AirQualityBUXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${AirQualityBUXpath}
    Wait Until Element Is Visible       ${AirQualityBUXpath2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${AirQualityBUXpath2}
    Wait Until Element Is Visible       ${AirQualityBUXpath3}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${AirQualityBUXpath3}
    Wait Until Element Is Visible       ${AirQualityBUKolomelaXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${AirQualityBUKolomelaXpath}
    Wait Until Element Is Visible       ${AirQualityBUSelectMining}    40 seconds
    Sleep    1 seconds
    Click Element                       ${AirQualityBUSelectMining}


    #Capture Month And Year

    Wait Until Element Is Visible       ${AirQualityMonth}    40 seconds
    Click Element                       ${AirQualityMonth}
    Sleep    1 seconds
    Wait until Element Is Visible       ${AirQualityMonthSelect}    40 seconds
    Click Element                       ${AirQualityMonthSelect}

    Wait Until Element Is Visible       ${AirQualityYear}    40 seconds
    Click Element                       ${AirQualityYear}
    Sleep    1 seconds
    Wait Until element Is Visible       ${AirQualityYearSelect}    40 seconds
    Click Element                       ${AirQualityYearSelect}


    #Capture Monitoring Point
    Wait Until Element Is Visible       ${AirQualityMonitoringPt}    40 Seconds
    Click Element                       ${AirQualityMonitoringPt}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityMonitoringPtSelect}    40 seconds
    Click Element                       ${AirQualityMonitoringPtSelect}

    #Capture sample taken by
    Wait until Element Is Visible       ${AirQualitySampleDrp}    40 seconds
    Click Element                       ${AirQualitySampleDrp}
    Wait Until Element Is Visible       ${AirqualitySampleSearch}    40 seconds
    Click Element                       ${AirqualitySampleSearch}
    Input Text                          ${AirqualitySampleSearch}    a
    Press Keys                          ${AirqualitySampleSearch}    ENTER
    Wait Until Element Is Visible       ${AirQualitySampleSelect}    40 seconds
    Click Element                       ${AirQualitySampleSelect}

    # Save
    Wait Until Element Is Visible       ${AirQualitySaveId}    40 seconds
    Click Element                       ${AirQualitySaveId}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Add Validation
    #Wait Until Element Is Visible       ${AirQualityProcessEdit}    40 seconds
    #Element Should Be Visible           ${AirQualityProcessEdit}

 #************************************************* FR3 - Capture Dust Measurement**********************************

FR2 - Capture Emission Measurement
    Log To Console    Starting FR1 - Capture Emission Measurement

    Wait Until element is Visible       ${AirQualityParamReading}    40 seconds
    Click Element                       ${AirQualityParamReading}

    Wait Until Element Is Visible       ${AirQualityParamReadingAdd}    40 seconds
    Click Element                       ${AirQualityParamReadingAdd}

    Wait Until Element Is Visible       ${AirQualityParamDrp}    40 seconds
    Click Element                       ${AirQualityParamDrp}
    Wait Until element Is visible       ${AirQualityParamSelect}    40 seconds
    click Element                       ${AirQualityParamSelect}

    Wait until Element Is Visible       ${AirQualityParamMeasurement}    40 seconds
    Click Element                       ${AirQualityParamMeasurement}
    Input Text                          ${AirQualityParamMeasurement}    12

    Wait Until Element Is Visible       ${AirQualityParamUnitDrp}    40 seconds
    Click Element                       ${AirQualityParamUnitDrp}
    Wait Until Element Is Visible       ${AirQualityParamUnitSelect}
    Click Element                       ${AirQualityParamUnitSelect}

    Wait Until element Is Visible       ${AirQualityParamTime}    40 seconds
    Click Element                       ${AirQualityParamTime}

    Wait Until Element Is Visible       ${AirQualityParamComment}    40 seconds
    Click Element                       ${AirQualityParamComment}
    Input Text                          ${AirQualityParamComment}    auto test

     # Save
    Wait Until Element Is Visible       ${AirQualityParamSave}    40 seconds
    Click Element                       ${AirQualityParamSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds







