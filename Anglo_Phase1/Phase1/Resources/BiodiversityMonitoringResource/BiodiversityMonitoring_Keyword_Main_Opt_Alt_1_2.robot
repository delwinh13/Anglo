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

FR1- Capture Biodiversity Monitoring
    Log To Console    FR1- Capture Biodiversity Monitoring

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

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
    Wait Until Element Is Visible       ${BioMonTypeSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonTypeSelect}

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

    #Supporting document

    #Click Supporting Document Link
    Wait Until element Is visible       ${BioMonSupportingDoc}    40 seconds
    Click Element                       ${BioMonSupportingDoc}
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


    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #validate process is on Edit Phase
    Wait Until Element Is Visible       ${BioMonProcessEdit}    40 seconds
    Element Should Be Visible           ${BioMonProcessEdit}

#************************************************* FR1- Capture Biodiversity Monitoring Altenate Scenario 1 ************


    #Capture Link to environment permit check
    Wait Until element Is Visible       ${BioMonEnvPermitChk}    40 seconds
    Click Element                       ${BioMonEnvPermitChk}

    #capture environment permit
    Wait Until element Is Visible       ${BioMonEnvPermitDrp}    40 seconds
    Click Element                       ${BioMonEnvPermitDrp}
    Wait until Element Is Visible       ${BioMonEnvPermitSelect}    40 seconds
    Click Element                       ${BioMonEnvPermitSelect}

    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


#************************************************* FR1- Capture Biodiversity Monitoring Altenate Scenario 2 ************

    #Capture Business Unit
    Wait Until Element Is Visible       ${BioMonBUDrpXpath}    40 seconds
    Click Element                       ${BioMonBUDrpXpath}

    scroll element into view            ${BioMonBuSishen}
    Click Element                       ${BioMonBuSishen}


    Wait Until element Is Visible       ${BioMonLinkProjectChk}    40 seconds
    Click Element                       ${BioMonLinkProjectChk}


    Wait Until Element Is Visible       ${BioMonLinkProjectDrp}    40 seconds
    Click Element                       ${BioMonLinkProjectDrp}
    sleep    2 seconds
    Wait Until element Is Visible       ${BioMonLinkProjectSelect}    40 seconds

    Click Element                       ${BioMonLinkProjectSelect}

    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

#************************************************* FR5-Edit Biodiversity Monitoring ************************************
FR5-Edit Biodiversity Monitoring
    Wait Until Element Is Visible       ${BioMonYearDrp}    40 seconds
    Click Element                       ${BioMonYearDrp}
    Wait Until Element Is Visible       ${BioMonYearSelect2}    40 seconds
    Click Element                       ${BioMonYearSelect2}
    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

#************************************************* FR2-Capture Biodiversity Measurement - Flora ************************

FR2-Capture Biodiversity Measurement - Flora
    Log To Console    FR2-Capture Biodiversity Measurement - Flora

    #Select Biodiversity Monitoring Measurement Dropdown
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BioMeasureDrp}    40 seconds
    Click Element                       ${BioMeasureDrp}

    Sleep    5 seconds

    Wait Until Element Is Visible       ${BioMonFloraAdd}    40 seconds
    Click Element                       ${BioMonFloraAdd}
    Sleep    8 seconds

    #Add Parameter
    Wait Until Element Is Visible       ${BioMonFloraParamDrp}    40 seconds
    Click Element                       ${BioMonFloraParamDrp}
    Sleep    2 seconds
    Wait Until element Is Visible       ${BioMonFloraParamSrch}    40 seconds
    Click Element                       ${BioMonFloraParamSrch}
    Input Text                          ${BioMonFloraParamSrch}    a
    Press Keys                          ${BioMonFloraParamSrch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible        ${BioMonFloraParamXpath}    40 seconds
    Click Element                       ${BioMonFloraParamXpath}
    Wait until Element Is Visible       ${BioMonFloraSelect}    40 seconds
    Click Element                       ${BioMonFloraSelect}



    #Add Monitoring on
    Wait Until Element Is Visible       ${BioMonFloraMonDrp}    40 seconds
    Click Element                       ${BioMonFloraMonDrp}
    Wait Until Element Is Visible       ${BioMonFloraMonSelect}    40 seconds
    Click Element                       ${BioMonFloraMonSelect}

    #Add Total Number
    Wait Until Element Is Visible       ${BioMonFloraMonNum}    40 seconds
    Click Element                       ${BioMonFloraMonNum}
    Input Text                          ${BioMonFloraMonNum}    12

    #Add Monitoring Taken by
    Wait Until element is Visible       ${BioMonFloraMonDrp2}    40 seconds
    Click Element                       ${BioMonFloraMonDrp2}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BioMonFloraMonSrch}    40 seconds
    Click Element                       ${BioMonFloraMonSrch}
    Input Text                          ${BioMonFloraMonSrch}    a
    Press Keys                          ${BioMonFloraMonSrch}    ENTER
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BioMonFloraMonSelect2}    40 seconds
    Click Element                       ${BioMonFloraMonSelect2}

    #Add Comment
     Wait Until Element Is Visible      ${BioMonFloraComment}    40 seconds
     Click Element                      ${BioMonFloraComment}
     Sleep    2 seconds
     Input Text                         ${BioMonFloraComment}    auto
     Sleep    1 seconds

    # Click Save
    Wait Until Element Is Visible       ${BioMonFloraMonSave}    40 seconds
    Click Element                       ${BioMonFloraMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds













