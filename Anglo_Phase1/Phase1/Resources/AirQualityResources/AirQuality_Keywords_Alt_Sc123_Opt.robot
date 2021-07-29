*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/AirQuality_var.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
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

FR1 - Capture Air Quality Monitoring Altenate Scenario 1
    Log To Console    Starting FR1 - Capture Air Quality Monitoring Altenate scenario 1

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
    Wait Until Element Is Visible       ${AirQualityBUSishen}    40 seconds
    Sleep    1 seconds
    Click Element                       ${AirQualityBUSishen}
#    Wait Until Element Is Visible       ${AirQualityBUSelectMining}    40 seconds
#    Sleep    1 seconds
#    Click Element                       ${AirQualityBUSelectMining}


    Log To Console    Starting FR3 - Capture Dust Measurement
    #Capture Dust in Air quality Type
    Wait Until Element Is Visible       ${AirQualityType}    40 seconds
    Click Element                       ${AirQualityType}
    Wait Until Element Is Visible       ${AirQualityTypeDust}    40 seconds
    Click Element                       ${AirQualityTypeDust}

    # validate Monitoring point is not visible
    Element Should Not Be Visible       ${AirQualityMonitoringPt}


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


    #Capture sample taken by
    Wait until Element Is Visible       ${AirQualitySampleDrp}    40 seconds
    Click Element                       ${AirQualitySampleDrp}
    Wait Until Element Is Visible       ${AirqualitySampleSearch}    40 seconds
    Click Element                       ${AirqualitySampleSearch}
    Input Text                          ${AirqualitySampleSearch}    a
    Press Keys                          ${AirqualitySampleSearch}    ENTER
    Wait Until Element Is Visible       ${AirQualitySampleSelect}    40 seconds
    Click Element                       ${AirQualitySampleSelect}

    # Capture Link Environmental permit
    Wait Until Element Is Visible       ${AirQualityLinkPermitCheck}    40 seconds
    Click Element                       ${AirQualityLinkPermitCheck}
    Wait Until Element Is Visible       ${AirQualityLinkPermitDrp}    40 seconds
    Click Element                       ${AirQualityLinkPermitDrp}
    Wait Until Element Is Visible       ${AirQualityLinkPermitSelect}    40 seconds
    Click Element                       ${AirQualityLinkPermitSelect}
    Sleep    2 seconds


    # Capture Link To Project
    Wait Until Element Is Visible       ${AirQualityLinkProjectCheck}    40 seconds
    Click Element                       ${AirQualityLinkProjectCheck}
    Wait Until Element Is Visible       ${AirQualityLinkProjectDrp}    40 seconds
    Click Element                       ${AirQualityLinkProjectDrp}
    Wait Until Element Is Visible       ${AirQualityLinkProjectSelect}    40 seconds
    Click Element                       ${AirQualityLinkProjectSelect}


    # Click Supporting Documents
    Wait Until Element Is Visible       ${AirQualitySupportingDoc}    10 seconds
    Click Element                       ${AirQualitySupportingDoc}

    # change to pop-up frame
    Unselect frame

    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible           ${SupportingDocPopName}



    #Enter URL
    Click Element                       ${SupportingDocAddLink}
    Clear Element Text                  ${SupportingDocAddLink}
    Input Text                          ${SupportingDocAddLink}    https://www.isometrix.com/
    Sleep    2 seconds

    # Enter Title
    Click Element                        ${SupportingDocAddTitle}
    Input Text                          ${SupportingDocAddTitle}    AutoTest

    # Add Link to Document Button
    Wait Until Element Is Visible       ${SupportingDocAddBtn}    10 seconds
    Click Element                       ${SupportingDocAddBtn}



    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds


    # Save
    Wait Until Element Is Visible       ${AirQualitySaveId}    40 seconds
    Click Element                       ${AirQualitySaveId}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Add Validation
    Wait Until Element Is Visible       ${AirQualityProcessEdit}    40 seconds
    Element Should Be Visible           ${AirQualityProcessEdit}

    # Monitoring Finding
    Sleep     5 seconds
    Wait Until Element is Visible       ${AirQualityMonitoringFindingDrp}    40 seconds
    Click Element                       ${AirQualityMonitoringFindingDrp}

#************************************************* FR3-Capture Dust Measurements ***************************************
FR3-Capture Dust Measurements
    Log To Console    Starting FR3-Capture Dust Measurements

    # Capture Measurement
    Wait Until Element Is Visible       ${AirQualityManagementDrp}    40 seconds
    Click Element                       ${AirQualityManagementDrp}

    #Add Measurement
    Wait Until Element Is Visible       ${AirQualityDustAdd}    40 seconds
    Click Element                       ${AirQualityDustAdd}

    #Capture Monitoring Point
    Wait Until Element Is Visible       ${AirQualityDustMonitorPtDrp}    40 seconds
    Click Element                       ${AirQualityDustMonitorPtDrp}
    Wait Until Element Is Visible       ${AirQualityDustMonitorPtSelect}    40 seconds
    Click Element                       ${AirQualityDustMonitorPtSelect}

    # Capture Measurement
    Wait Until Element Is Visible       ${AirQualityDustMeasurementIn}    40 seconds
    Click Element                       ${AirQualityDustMeasurementIn}
    Input Text                          ${AirQualityDustMeasurementIn}    12

    #Capture unit
    Wait until Element Is Visible       ${AirQualityDustUnitDrp}    40 seconds
    Click Element                       ${AirQualityDustUnitDrp}
    Wait Until Element Is Visible       ${AirQualityDustUnitSelect}    40 seconds
    Click Element                       ${AirQualityDustUnitSelect}

    #Capture Time
    Wait Until Element Is Visible       ${AirQualityDustUnitTime}    40 seconds
    Click Element                       ${AirQualityDustUnitTime}

    # Save
    Wait Until Element Is Visible       ${AirQualityDustSave}    40 seconds
    Click Element                       ${AirQualityDustSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds




#************************************************* FR4-Capture Air Quality Monitoring Findings**************************

FR4-Capture Air Quality Monitoring Findings
    Log To Console    Starting FR4-Capture Air Quality Monitoring Findings

    Wait Until Element Is Visible       ${AirQualityMonFindingAdd}    40 seconds
    Click Element                       ${AirQualityMonFindingAdd}

    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${AirQualityFindindProcessID}    40 seconds
    Click Element                       ${AirQualityFindindProcessID}

    # capture finding description
    Wait Until Element Is Visible       ${AirQualityFindingDesc}    40 seconds
    Click Element                       ${AirQualityFindingDesc}
    Input Text                          ${AirQualityFindingDesc}    auto test

    #Capture Finding Owner
    Wait Until Element Is Visible       ${AirQualityFindingOwnerDrp}    40 seconds
    Click Element                       ${AirQualityFindingOwnerDrp}
    Wait Until Element Is Visible       ${AirQualityFindingOwnerSearch}    40 seconds
    Click Element                       ${AirQualityFindingOwnerSearch}
    Input Text                          ${AirQualityFindingOwnerSearch}    a
    Press Keys                          ${AirQualityFindingOwnerSearch}    ENTER
    Wait Until Element Is Visible       ${AirQualityFindingOwnerSelect}    40 seconds
    Click Element                       ${AirQualityFindingOwnerSelect}

    #Capture Finding Classification
    Wait Until Element is Visible        ${AirQualityFindingClassDrp}    40 seconds
    Click Element                       ${AirQualityFindingClassDrp}
    Wait Until Element Is Visible       ${AirQualityFindingClassSelect}    40 seconds
    Click Element                       ${AirQualityFindingClassSelect}

    # Save
    Wait Until Element Is Visible       ${AirQualityFindingSave}    40 seconds
    Click Element                       ${AirQualityFindingSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #Close
    Sleep    5 seconds
    Wait Until Element Is Visible       ${AirQualityFindingClose}    40 seconds
    Click Element                       ${AirQualityFindingClose}

    # change to pop-up frame
    Sleep    4 seconds
    Unselect frame
    Wait Until Element Is Visible       ${AirQualityConfirmExit}    40 seconds
    Click Element                       ${AirQualityConfirmExit}

    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

#*************************************************  FR5-Edit Air Quality Monitoring  ***********************************

FR5-Edit Air Quality Monitoring
    Log To Console    Starting  FR5-Edit Air Quality Monitoring

    #Select Record
    Wait Until Element Is Visible       ${AirQualitySelect}    40 seconds
    Click Element                       ${AirQualitySelect}


    # Check on Process Flow
    Sleep    10 seconds
    Wait Until Element Is Visible       ${AirQualityFindindProcessID}    40 seconds
    Click Element                       ${AirQualityFindindProcessID}

    #capture Functional location
    Wait Until Element Is Visible       ${AirQualityFindingFLDrp}    40 seconds
    Click Element                       ${AirQualityFindingFLDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingFLSel}    40 seconds
    Click Element                       ${AirQualityFindingFLSel}

    #Capture Finding closure date
	${CloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+1 day
	Set Global Variable    ${CloseDate}
	Wait Until Element Is Visible       ${AirQualityFindingClosureDate}    40 seconds
	Click Element                       ${AirQualityFindingClosureDate}
	Input Text                          ${AirQualityFindingClosureDate}    ${CloseDate}

    #capture Risk Source
    Wait Until Element Is Visible       ${AirQualityFindingRiskSourceDrp}    40 seconds
    Click Element                       ${AirQualityFindingRiskSourceDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingRiskSourceSel}    40 seconds
    Click Element                       ${AirQualityFindingRiskSourceSel}
    Sleep   2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingRiskSourceDrp}    40 seconds
    Click Element                       ${AirQualityFindingRiskSourceDrp}

    #capture Relate permit
    Wait Until Element Is Visible       ${AirQualityFindingRelatPermitDrp}    40 seconds
    Click Element                       ${AirQualityFindingRelatPermitDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQaulityFindingRelatPermitSel}    40 seconds
    Click Element                       ${AirQaulityFindingRelatPermitSel}
    Sleep   2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingRelatPermitDrp}    40 seconds
    Click Element                       ${AirQualityFindingRelatPermitDrp}

    #capture Is Finding Related to group
    Wait Until Element Is Visible       ${AirQualityFindingRelateDrp}    40 seconds
    Click Element                       ${AirQualityFindingRelateDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingRelateSel}    40 seconds
    Click Element                       ${AirQualityFindingRelateSel}
    Wait Until Element Is Visible       ${AirQualityFindingRelateDrp}    40 seconds
    Click Element                       ${AirQualityFindingRelateDrp}

    #capture Relate permit
    Wait Until Element Is Visible       ${AirQualityFindingIndvDrp}    40 seconds
    Click Element                       ${AirQualityFindingIndvDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingIndvSel}    40 seconds
    Click Element                       ${AirQualityFindingIndvSel}
    Sleep   2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingIndvDrp}    40 seconds
    Click Element                       ${AirQualityFindingIndvDrp}

    #Individual factor description
    Wait Until Element Is Visible       ${AirQualityFindingFactorDesc}    40 seconds
    Click Element                       ${AirQualityFindingFactorDesc}
    Input Text                          ${AirQualityFindingFactorDesc}    auto test

    #capture Workplace factor
    Wait Until Element Is Visible       ${AirQualityFindingWrkPlaceDrp}    40 seconds
    Click Element                       ${AirQualityFindingWrkPlaceDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingWrkPlaceSel}    40 seconds
    Click Element                       ${AirQualityFindingWrkPlaceSel}
    Sleep   2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingWrkPlaceDrp}    40 seconds
    Click Element                       ${AirQualityFindingWrkPlaceDrp}

    #Capture workplace factor description
    Wait Until Element Is Visible       ${AirQualityFindingWrkPlaceDesc}    40 seconds
    Click Element                       ${AirQualityFindingWrkPlaceDesc}
    Input Text                          ${AirQualityFindingWrkPlaceDesc}    auto test

    #capture Organisational factor
    Wait Until Element Is Visible       ${AirQualityFindingOrgFactorDrp}    40 seconds
    Click Element                       ${AirQualityFindingOrgFactorDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingOrgFactorSel}    40 seconds
    Click Element                       ${AirQualityFindingOrgFactorSel}
    Sleep   2 seconds
    Wait Until Element Is Visible       ${AirQualityFindingOrgFactorDrp}    40 seconds
    Click Element                       ${AirQualityFindingOrgFactorDrp}
    sleep    1 seconds
    #Capture organisational factor description
    Wait Until Element Is Visible       ${AirQualityFindingOrgFactorDesc}    40 seconds
    Click Element                       ${AirQualityFindingOrgFactorDesc}
    Input Text                          ${AirQualityFindingOrgFactorDesc}    auto test

    # Save
    Wait Until Element Is Visible       ${AirQualityFindingSave}    40 seconds
    Click Element                       ${AirQualityFindingSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds











