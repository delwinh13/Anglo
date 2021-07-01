*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
Resource    ../../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource  ../../Resources/Common_keywords.robot
Resource    ../../Repository/BaseLineRiskManagement_var.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
#Resource    Stakeholder_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime

    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\BaseLineRisManagement\\BaseLineRiskManagementMain\\${Date}


Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

FR1-Capture Scope Detail
    Log To Console    Starting FR1-Capture Scope Detail
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Risk management
    Sleep    2 seconds
    Wait Until Page Contains Element    ${RiskManagementID}    60 seconds
   # scroll element into view
    Click Element                       ${RiskManagementID}

    # Click Air Quality Monitoring
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineRiskLayer1ID}    40 seconds
    Click Element                       ${BaseLineRiskLayer1ID}


    # Add Stakeholder Air Quality Record
    Wait Until Element Is Visible       ${BaseLineRiskAddNew}    40 seconds
    Click Element                       ${BaseLineRiskAddNew}

    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BaseLineRiskProcess}    40 seconds
    Click Element                       ${BaseLineRiskProcess}
    Element Should Be Visible           ${baseLineRiskProcessLogging}
    Sleep    2 seconds
    Screenshot    ProcessFlow Logging phase ${CurrentDate}
    Click Element                       ${BaseLineRiskProcess}
    Screenshot    Methodology and risk matrix ${CurrentDate}


    #Capture Business Unit

    Wait Until Element Is Visible       ${BaseLineRiskBUDrp}    40 seconds
    Click Element                       ${BaseLineRiskBUDrp}
    Wait Until Element Is Visible       ${BaseLineRiskBUAnglo}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BaseLineRiskBUAnglo}
    Wait Until Element Is Visible       ${BaseLineRiskBUBulk}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BaseLineRiskBUBulk}
    Wait Until Element Is Visible       ${BaseLineRiskBUKumba}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${BaseLineRiskBUKumba}
    Wait Until Element Is Visible       ${BaseLineRiskBUSishenSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BaseLineRiskBUSishenSelect}

    #Capture Title
    Wait Until Element Is Visible       ${BaseLineRiskTitle}    40 seconds
    Click Element                       ${BaseLineRiskTitle}
    Input Text                          ${BaseLineRiskTitle}    auto test

    #Capture Intoduction
    Wait Until Element Is Visible       ${BaseLineRiskRiskIntro}    40 seconds
    Click Element                       ${BaseLineRiskRiskIntro}
    Input Text                          ${BaseLineRiskRiskIntro}    auto test

    #Capture Objectives
    Wait Until Element Is Visible       ${BaseLineRiskObjective}    40 seconds
    Click Element                       ${BaseLineRiskObjective}
    Input Text                          ${BaseLineRiskObjective}    auto test


    #Capture Bounderies
    Wait Until Element Is Visible       ${BaseLineRiskBounderies}    40 seconds
    Click Element                       ${BaseLineRiskBounderies}
    Input Text                          ${BaseLineRiskBounderies}    auto test

    #Capture Assumptions
    Wait Until Element Is Visible       ${BaseLineRiskAssump}    40 seconds
    Click Element                       ${BaseLineRiskAssump}
    Input Text                          ${BaseLineRiskAssump}    auto test

    #Capture Assumptions
    Wait Until Element Is Visible       ${BaseLineRiskMethod}    40 seconds
    Click Element                       ${BaseLineRiskMethod}
    Input Text                          ${BaseLineRiskMethod}    auto test

#************************************************* FR-1 Optional scenario **********************************************
    # Click Process map
    Wait Until Element Is Visible       ${BaseLineRiskProcessMap}    10 seconds
    Click Element                       ${BaseLineRiskProcessMap}

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
    Click Element                       ${SupportingDocAddTitle}
    Input Text                          ${SupportingDocAddTitle}    AutoTest

    # Add Link to Document Button
    Wait Until Element Is Visible       ${SupportingDocAddBtn}    10 seconds
    Click Element                       ${SupportingDocAddBtn}

    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskSave}    40 seconds
    Click Element                       ${BaseLineRiskSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #Process flow
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineRiskProcess}    40 seconds
    Click Element                       ${BaseLineRiskProcess}
    Sleep    2 seconds

    # Add Validation
    Wait Until Element Is Visible       ${BaseLineRiskProcessRead}    40 seconds
    Element Should Be Visible           ${BaseLineRiskProcessRead}
    Screenshot    Read-only-phase ${CurrentDate}

#************************************************* FR2-Capture Baseline Change Log *************************************
FR2-Capture Baseline Change Log
    Log To Console    Starting FR2-Capture Baseline Change Log

    Wait Until Element Is Visible       ${BaseLineChangeAdd}    40 seconds
    scroll element into view            ${BaseLineChangeAdd}
    Click Element                       ${BaseLineChangeAdd}

    Sleep    5 seconds
    #Process flow
    Wait Until Element Is Visible       ${BaseLineChangeProcess}    40 seconds
    Click Element                       ${BaseLineChangeProcess}
    Sleep    2 seconds

    # Add Validation
    Wait Until Element Is Visible       ${BaseLineChangeProcessAdd}    40 seconds
    Element Should Be Visible           ${BaseLineChangeProcessAdd}
    Screenshot    FR-2 Add phase ${CurrentDate}

    #Capture Change Date
    Wait Until Element Is Visible       ${BaseLineChangeDate}    40 seconds
    Click Element                       ${BaseLineChangeDate}
    Input Text                          ${BaseLineChangeDate}    ${CurrentDate}

#************************************************* FR2-Capture Baseline Change Log Alt 1 *******************************
    # capture Event Management
    Wait Until Element Is Visible      ${BaseLineChangeReasonDrp}    40 seconds
    Click Element                      ${BaseLineChangeReasonDrp}
    Sleep    3 seconds
    Wait Until element Is Visible      ${BaseLineChangeReasonEvent}    40 seconds
    Click Element                      ${BaseLineChangeReasonEvent}
    Sleep    1 seconds
    Wait until Element Is Visible      ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                      ${BaseLineChangeReasonDrpClose}

    Wait Until Element Is Visible       ${BaseLinechangeLinkEventDrp}    40 seconds
    Element Should Be Visible           ${BaseLinechangeLinkEventDrp}
    Click Element                       ${BaseLinechangeLinkEventDrp}

    sleep    10 seconds
    Wait Until Element Is Visible       ${BaseLineChangeLinkEventSelect}    60 seconds
    Click Element                       ${BaseLineChangeLinkEventSelect}
    Screenshot    Link to event ${CurrentDate}

    Sleep    2 seconds
#************************************************* FR2-Capture Baseline Change Log Alt 2 *******************************
    #Capture audit review
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDeSel}    40 seconds
    Click Element                       ${BaseLineChangeReasonDeSel}
    sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeReasonDrp}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrp}
    sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeAudit}    40 seconds
    Click Element                       ${BaseLineChangeAudit}

    sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}

    Wait Until Element Is Visible       ${BaseLineChangeLinkAuditDrp}    40 seconds
    Element Should Be Visible           ${BaseLineChangeLinkAuditDrp}
    Sleep    2 seconds
    Screenshot    Link to Audit ${CurrentDate}

#************************************************* FR2-Capture Baseline Change Log Alt 3 *******************************
    #Capture Stakeholder Engagements
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDeSel}    40 seconds
    Click Element                       ${BaseLineChangeReasonDeSel}
    sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeReasonDrp}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrp}
    sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeStake}    40 seconds
    Click Element                       ${BaseLineChangeStake}

    sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}

    Wait Until Element Is Visible       ${BaseLineChangeLinkStakeDrp}    40 seconds
    Element Should Be Visible           ${BaseLineChangeLinkStakeDrp}
    Click Element                       ${BaseLineChangeLinkStakeDrp}

    sleep    10 seconds
    Wait Until Element Is Visible       ${BaseLineChangeLinkStakeSel}    60 seconds
    Click Element                       ${BaseLineChangeLinkStakeSel}
    Screenshot    Link to stakeholder Engagements ${CurrentDate}

#************************************************* FR2-Capture Baseline Change Log Main ********************************

    #Capture Anual, Change New hazard
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDeSel}    40 seconds
    Click Element                       ${BaseLineChangeReasonDeSel}
    sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeReasonDrp}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrp}
    sleep    2 seconds
    Wait Until element Is Visible       ${BaseLineChangeChange}    40 seconds
    Click Element                       ${BaseLineChangeAnnual}
    #Wait Until element Is Visible       ${BaseLineChangeStake}    40 seconds
    Click Element                       ${BaseLineChangeChange}
    #Wait Until element Is Visible       ${BaseLineChangeStake}    40 seconds
    Click Element                       ${BaseLineChangeHazard}

    sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}

    Wait Until Element Is Visible       ${BaseLineChangeRespDrp}    40 seconds
    Click Element                       ${BaseLineChangeRespDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeRespSrch}
    Click Element                       ${BaseLineChangeRespSrch}
    Input Text                          ${BaseLineChangeRespSrch}    a
    Press Keys                          ${BaseLineChangeRespSrch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeRespSelect}    40 seconds
    Click Element                       ${BaseLineChangeRespSelect}

        # Save
    Wait Until Element Is Visible       ${BaseLineChangeSave}    40 seconds
    Click Element                       ${BaseLineChangeSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

        # Add Validation
    Wait Until Element Is Visible       ${BaseLineChangeProcessEdit}    40 seconds
    Element Should Be Visible           ${BaseLineChangeProcessEdit}
    Screenshot    BaseLine Change-Log edit phase ${CurrentDate}



















