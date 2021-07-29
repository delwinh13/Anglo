*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/BioDiversityMonitoring_var.robot
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



    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
FR3-Capture Biodiversity Measurement - Fauna
    # Click Environmental Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${EnvironmentalSustainabilityID}    60 seconds
    Click Element                       ${EnvironmentalSustainabilityID}

    # Click Biodiversity Monitoring
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BioDiversityMonitoringID}    40 seconds
    Click Element                       ${BioDiversityMonitoringID}


    # Add Biodiversity Monitoring Record
    Wait Until Element Is Visible       ${BioMonAdd}    40 seconds
    Click Element                       ${BioMonAdd}


    # Check on Process Flow
    Sleep    5 seconds
    Wait Until Element Is Visible       ${BioMonProcessID}    40 seconds
    Click Element                       ${BioMonProcessID}


    #validate process is on AddPhase
    Wait Until Element Is Visible       ${BioMonProcessAddPhase}    40 seconds
    Element Should Be Visible           ${BioMonProcessAddPhase}

    #Capture Business Unit
    Wait Until Element Is Visible       ${BioMonBUDrpXpath}    40 seconds
    Click Element                       ${BioMonBUDrpXpath}
    #Anglo
    Wait Until Element Is Visible       ${BioMonBUAnglo}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUAnglo}
    #Bulk
    Wait Until Element Is Visible       ${BioMonBUBulk}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUBulk}
    Wait Until Element Is Visible       ${BioMonBUKumba}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${BioMonBUKumba}
    #Komela
    Wait Until Element Is Visible       ${BioMonBUKolomela}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUKolomela}
    #Select Mining Operation
    Wait Until Element Is Visible       ${BioMonBUMining}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUMining}

    #Capture Monitoring Type
    Wait Until Element Is Visible       ${BioMonTypeDrp}    40 seconds
    Click Element                       ${BioMonTypeDrp}
    Wait Until Element Is Visible       ${BioMonTypeFauna}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonTypeFauna}



    #Wait Until Element Is Visible       ${BioMonTypeDrp2}    40 seconds
    #Click Element                       ${BioMonTypeDrp2}
    sleep    1 seconds
    #Capture Month And Year
    Wait Until Element Is Visible       ${BioMonMonthDrp}    40 seconds
    Click Element                       ${BioMonMonthDrp}
    Wait Until Element Is Visible       ${BioMonMonthSelect}    40 seconds
    Click Element                       ${BioMonMonthSelect}
    sleep    1 seconds
    Wait Until Element Is Visible       ${BioMonYearDrp}    40 seconds
    Click Element                       ${BioMonYearDrp}
    Wait Until Element Is Visible       ${BioMonYearSelect}    40 seconds
    Click Element                       ${BioMonYearSelect}

    #Capture Monitoring Point
    Wait Until Element Is Visible       ${BioMonMonitoringPtDrp}    40 seconds
    Click Element                       ${BioMonMonitoringPtDrp}
    Wait Until Element Is Visible       ${BioMonMonitoringPtSelect}    40 seconds
    Click Element                       ${BioMonMonitoringPtSelect}


    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #validate process is on Edit Phase
    Wait Until Element Is Visible       ${BioMonProcessEdit}    40 seconds
    Element Should Be Visible           ${BioMonProcessEdit}

    sleep    5 seconds
    #Capture Biodiversity measurement
    Wait Until element Is Visible       ${BioFaunaMeasureDrp}    40 seconds
    Click Element                       ${BioFaunaMeasureDrp}

    Sleep     5 seconds
    #add record
    Wait Until Element Is Visible       ${BioMonFaunaAdd}    40 seconds
    Click Element                       ${BioMonFaunaAdd}
    sleep    5 seconds
    #Add Parameter
    Wait Until Element Is Visible       ${BioMonFaunaParamDrp}    40 seconds
    Click Element                       ${BioMonFaunaParamDrp}
    Wait Until Element Is Visible       ${BioMonFaunaParamSrch}    40 seconds
    Click Element                       ${BioMonFaunaParamSrch}
    Input Text                          ${BioMonFaunaParamSrch}    a
    Press Keys                          ${BioMonFaunaParamSrch}    ENTER
    Wait Until Element Is Visible       ${BioMOnFaunaParamRum}    40 seconds
    Click Element                       ${BioMOnFaunaParamRum}
    Wait Until Element Is Visible       ${BioMonFaunaParamSel}    40 seconds
    Click Element                       ${BioMonFaunaParamSel}



    Log to Console    FR-3 Altenate Scenario
    #Capture monitering point
    Wait Until Element Is Visible       ${BioMonFaunaMonDrp}    40 seconds
    Click Element                       ${BioMonFaunaMonDrp}
    Wait Until Element Is Visible       ${BioMonfaunaMonCount}    40 seconds
    Click Element                       ${BioMonfaunaMonCount}

    Element Should Not Be Visible       ${BioMonFaunaRelocPtDrp}

    Log to Console    FR-3 Main Scenario
    #Capture monitering point
    Wait Until Element Is Visible       ${BioMonFaunaMonDrp}    40 seconds
    Click Element                       ${BioMonFaunaMonDrp}
    sleep    1 seconds
    Wait Until Element Is Visible       ${BioMonFaunaMonRescue}    40 seconds
    Click Element                       ${BioMonFaunaMonRescue}

    #Capture Monitering taken by
    Wait Until Element Is Visible       ${BioMonFaunaTakenByDrp}    40 seconds
    Click Element                       ${BioMonFaunaTakenByDrp}
    Wait Until element Is Visible       ${BioMonFaunaTakenBySrch}    40 seconds
    Click Element                       ${BioMonFaunaTakenBySrch}
    Input Text                          ${BioMonFaunaTakenBySrch}    a
    Press Keys                          ${BioMonFaunaTakenBySrch}    ENTER
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BioMonFaunaTakenBySel}    40 seconds
    Click Element                       ${BioMonFaunaTakenBySel}

    #Comments
    Wait Until Element Is Visible       ${BioMonFaunaComment}    40 seconds
    Click Element                       ${BioMonFaunaComment}
    Input Text                          ${BioMonFaunaComment}    auto test


    #Capture Relocation point
    Wait Until Element Is Visible       ${BioMonFaunaRelocPtDrp}    40 seconds
    Click Element                       ${BioMonFaunaRelocPtDrp}
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BioMonFaunaRelocPtSel}    40 seconds
    Click Element                       ${BioMonFaunaRelocPtSel}


    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

#************************************************* FR4-Capture Findings ************************************************
FR4-Capture Findings
    #Capture dropdown tab
    Wait Until Element Is Visible       ${BioMonFindingDrp}    40 seconds
    Click Element                       ${BioMonFindingDrp}

    #Add new record
    Wait Until Element Is Visible          ${BioMonFindingAdd}    40 seconds
    Click Element                       ${BioMonFindingAdd}

    sleep    10 seconds

    #Capture process flow
    Wait Until Element Is Visible       ${BioMonFindingProcess}    40 seconds
    Click Element                       ${BioMonFindingProcess}

    #Capture finding description
    Wait Until Element Is Visible       ${BioMonFindingDesc}    40 seconds
    Click Element                       ${BioMonFindingDesc}
    Input Text                          ${BioMonFindingDesc}    auto test

	#Capture functional location
    Log To Console    Capture location
    Wait Until Element Is Visible       ${BioMonFindingFLDrp}    40 seconds
    Click Element                       ${BioMonFindingFLDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BioMonFindingFLSel}    40 seconds
    Click Element                       ${BioMonFindingFLSel}



    #capture finding owner
    Log To Console    finding owner
    Wait Until Element Is Visible       ${BioMonFindingOwnDrp}    40 seconds
    Click Element                       ${BioMonFindingOwnDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BioMonFindingOwnSrch}    40 seconds
    Click Element                       ${BioMonFindingOwnSrch}
    Input Text                          ${BioMonFindingOwnSrch}    a
    Press Keys                          ${BioMonFindingOwnSrch}    ENTER
    Sleep    3 seconds
    Wait Until Element Is Visible       ${BioMonFindingOwnSel}    40 seconds
    Click Element                       ${BioMonFindingOwnSel}

    #Capture finding classification
    Log To Console    Capture Permit critically
    Wait Until Element Is Visible       ${BioMonFindingClassDrp}    40 seconds
    Click Element                       ${BioMonFindingClassDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BioMonFindingClassSel}    40 seconds
    Click Element                       ${BioMonFindingClassSel}


    # Click Save
    Wait Until Element Is Visible       ${BioMonFindingSave}    40 seconds
    Click Element                       ${BioMonFindingSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds






