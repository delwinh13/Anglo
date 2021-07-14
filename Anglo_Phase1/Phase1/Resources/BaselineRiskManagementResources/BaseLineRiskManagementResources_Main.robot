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

    # Click BaseLine Risk Monitoring
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineRiskLayer1ID}    40 seconds
    Click Element                       ${BaseLineRiskLayer1ID}


    # Add Baseline Risk Record
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

#************************************************* FR3-Capture Risk Assessment Team*************************************
FR3-Capture Risk Assessment Team
    Log To Console    Starting FR3-Capture Risk Assessment Team

    Wait Until element Is Visible       ${BaseLineRiskAsstAdd}    40 seconds
    Click Element                       ${BaseLineRiskAsstAdd}
    Screenshot    Baseline Change Log ${CurrentDate}

    Sleep    5 seconds
    #capture Full Name
    Wait until element Is Visible       ${BaseLineRiskAsstNameDrp}    40 seconds
    Click Element                       ${BaseLineRiskAsstNameDrp}
    sleep    1 seconds
    Wait until element Is Visible       ${BaseLineRiskAsstNameSrch}    40 seconds
    Click Element                       ${BaseLineRiskAsstNameSrch}
    Input Text                          ${BaseLineRiskAsstNameSrch}    a
    Press Keys                          ${BaseLineRiskAsstNameSrch}    ENTER
    Sleep    5 seconds
    Wait Until Element Is Visible       ${BaselineRiskAsstNameSel}    40 seconds
    Click Element                       ${BaselineRiskAsstNameSel}

    #Capture Experiance/role
    Wait Until Element Is Visible       ${BaseLineRiskAsstRoleDrp}    40 seconds
    Click Element                       ${BaseLineRiskAsstRoleDrp}
    Sleep    2 seconds
    Wait Until element Is Visible       ${BaseLineRiskAsstRoleSel}    40 seconds
    Click Element                       ${BaseLineRiskAsstRoleSel}

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskAsstSave}    40 seconds
    Click Element                       ${BaseLineRiskAsstSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    Screenshot    Risk Assessment Team ${CurrentDate}

#************************************************* FR3-Capture Risk Assessment Team*************************************
FR4- Capture Hazard Inventory
    Log To Console    Starting FR4- Capture Hazard Inventory

    Wait Until Element Is Visible       ${BaseLineRiskAsstClose}    40 seconds
    Click Element                       ${BaseLineRiskAsstClose}

    Sleep    10 seconds
    #select Hazard Inventory tab
    Wait Until Element is Visible       ${BaseLineRiskHazardTab}    40 seconds
    Click Element                       ${BaseLineRiskHazardTab}

    Sleep    2 seconds

    #Add record
    Wait Until Element Is Visible        ${BaseLineRiskHazardAdd}    40 seconds
    Click Element                       ${BaseLineRiskHazardAdd}
    Sleep    4 seconds

    #capture Hazard Classification
    Wait Until element is Visible       ${BaseLineRiskHazardClassDrp}    40 seconds
    Click Element                       ${BaseLineRiskHazardClassDrp}
    Sleep    10 seconds
    Wait Until element is Visible       ${BaseLineRiskHazardClassSel}    40 seconds
    Click Element                       ${BaseLineRiskHazardClassSel}

    #Capture Hazard description
    Wait Until element Is Visible       ${BaseLineRiskHazardDesc}    40 seconds
    Click Element                       ${BaseLineRiskHazardDesc}
    Input Text                          ${BaseLineRiskHazardDesc}    auto test

    #Capture Business area
    Wait until Element Is Visible       ${BaseLineRiskHazardBA}    40 seconds
    Click Element                       ${BaseLineRiskHazardBA}
    Sleep    5 seconds
    Wait Until Element Is Visible       ${BaseLinkRiskHazardBASel}    40 seconds
    Click Element                       ${BaseLinkRiskHazardBASel}

    #Capture Magnitude
    Wait Until Element Is Visible       ${BaseLineRiskHazardMag}    40 seconds
    Click Element                       ${BaseLineRiskHazardMag}
    Input Text                          ${BaseLineRiskHazardMag}    auto test

    #Capture Mechanism
    Wait Until Element Is Visible       ${BaselineRiskHazardMec}    40 seconds
    Click Element                       ${BaselineRiskHazardMec}
    Input Text                          ${BaselineRiskHazardMec}    auto test

    #Capture Assumption
    Wait Until Element Is Visible       ${BaseLineRiskHazardAssump}    40 seconds
    Click Element                       ${BaseLineRiskHazardAssump}
    Input Text                          ${BaseLineRiskHazardAssump}    auto test

    #Capture Issue
    Wait until Element Is Visible       ${BaseLineRiskHazardIssueDrp}    40 seconds
    Click Element                       ${BaseLineRiskHazardIssueDrp}
    Sleep    3 seconds
    Wait Until Element Is Visible       ${BaseLineRiskHazardIssueSel}    40 seconds
    Click Element                       ${BaseLineRiskHazardIssueSel}

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskHazardSave}    40 seconds
    Click Element                       ${BaseLineRiskHazardSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    sleep    2 seconds
    Screenshot    Hazard Inventory ${CurrentDate}


#*************************************************FR5-Capture Baseline WRAC*********************************************
FR5-Capture Baseline WRAC
    Log To Console    Starting FR5-Capture Baseline WRAC

    #Capture WRAC Tab
    Wait Until Element Is Visible       ${BaseLineRiskWRACTab}    40 seconds
    Click Element                       ${BaseLineRiskWRACTab}

    #Add new record
    Wait Until Element Is Visible       ${BaseLineRiskWRACAdd}    40 seconds
    Click Element                       ${BaseLineRiskWRACAdd}
    Sleep    10 seconds

    #Caprure process flow
    Wait Until Element Is Visible       ${BaseLineRiskWRACProcess}    40 seconds
    Click Element                       ${BaseLineRiskWRACProcess}

    #Capture Hazard Classification
    Wait Until element Is Visible       ${BaseLineRiskWRACClassDrp}    40 seconds
    Click Element                       ${BaseLineRiskWRACClassDrp}
    Sleep    2 seconds
    Wait Until element Is Visible       ${BaseLineRiskWRACClassSel}    40 seconds
    Click Element                       ${BaseLineRiskWRACClassSel}
    Sleep    1 seconds

    #Capture Description
    Wait Until Element Is Visible       ${BaseLineRiskWRACDescDrp}    40 seconds
    Click Element                       ${BaseLineRiskWRACDescDrp}
    Sleep    1 seconds
    Wait Until Element is Visible       ${BaseLineRiskWRACDescSel}    40 seconds
    Click Element                       ${BaseLineRiskWRACDescSel}

    #Capture Business Area
    Wait Until Element Is Visible       ${BaseLineRiskWRACBADrp}    40 seconds
    Click Element                       ${BaseLineRiskWRACBADrp}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineRiskWRACXpath}    40 seconds
    Click Element                       ${BaseLineRiskWRACXpath}
    Wait Until Element Is Visible       ${BaseLineRiskWRACBASel}    40 seconds
    Click Element                       ${BaseLineRiskWRACBASel}

    #capture description of unwanted event
    Wait Until Element is Visible       ${BaseLineRiskWRACDescEvent}    40 seconds
    Click Element                       ${BaseLineRiskWRACDescEvent}
    Input Text                          ${BaseLineRiskWRACDescEvent}    auto test

    # Capture functional ownership
    Wait Until Element Is Visible       ${BaseLineRiskWRACFunOwnDrp}    40 seconds
    Click Element                       ${BaseLineRiskWRACFunOwnDrp}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineRiskWRACFunOwnSel}    40 seconds
    Click Element                       ${BaseLineRiskWRACFunOwnSel}

    # capture likehood
    Wait Until Element is Visible       ${BaseLineRiskWRACLikeDrp}    40 seconds
    Click Element                       ${BaseLineRiskWRACLikeDrp}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineRiskWRACLikeSel}    40 seconds
    Click Element                       ${BaseLineRiskWRACLikeSel}

    # Consequences comment
    Click Element                       ${ConseqSafetyCmnt}
    Screenshot    consequence field ${CurrentDate}
    Input Text                          ${ConseqSafetyCmnt}    auto test

    Click Element                       ${ConseqHealthCmnt}
    Input Text                          ${ConseqHealthCmnt}    auto test

    Click Element                       ${ConseqEnvCmnt}
    Input Text                          ${ConseqEnvCmnt}    auto test

    Click Element                       ${ConseqCommCmnt}
    Input Text                          ${ConseqCommCmnt}    auto test

    Click Element                       ${ConseqLegalCmnt}
    Input Text                          ${ConseqLegalCmnt}    auto test

    Click Element                       ${ConseqMaterialCmnt}
    Input Text                          ${ConseqMaterialCmnt}    auto test

    Click Element                       ${ConseqRepCmnt}
    Input Text                          ${ConseqRepCmnt}    auto test

    #capture link to permit
    Wait Until Element Is Visible      ${BaseLineRiskWRACPermitDrp}    40 seconds
    Click Element                      ${BaseLineRiskWRACPermitDrp}
    Sleep    20 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACPermitSel}    60 seconds
    Click Element                      ${BaseLineRiskWRACPermitSel}
    Sleep    1 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACPermitDrp}    40 seconds
    Click Element                      ${BaseLineRiskWRACPermitDrp}
    Sleep    1 seconds

    #capture Stakeholder group
    scroll element into view           ${BaseLineRiskWRACStakeGrpDrp}
    Wait Until Element Is Visible      ${BaseLineRiskWRACStakeGrpDrp}    40 seconds
    Click Element                      ${BaseLineRiskWRACStakeGrpDrp}
    Sleep    1 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACStakeGrpSrch}
    Click Element                      ${BaseLineRiskWRACStakeGrpSrch}
    Input Text                         ${BaseLineRiskWRACStakeGrpSrch}    auto
    Press Keys                         ${BaseLineRiskWRACStakeGrpSrch}    ENTER
    Sleep    10 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACStakeGrpSel}    60 seconds
    Click Element                      ${BaseLineRiskWRACStakeGrpSel}
    Sleep    1 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACStakeGrpDrp}    40 seconds
    Click Element                      ${BaseLineRiskWRACStakeGrpDrp}
    Sleep    2 seconds

    #capture Stakeholder individual
    scroll element into view           ${BaselineRiskWRACStakeIndDrp}
    Wait Until Element Is Visible      ${BaselineRiskWRACStakeIndDrp}    40 seconds
    Click Element                      ${BaselineRiskWRACStakeIndDrp}
    Wait Until Element Is visible      ${BaseLineRiskWRACStakeIndSrch}    40 seconds
    Click Element                      ${BaseLineRiskWRACStakeIndSrch}
    Input Text                         ${BaseLineRiskWRACStakeIndSrch}    auto test
    Press Keys                         ${BaseLineRiskWRACStakeIndSrch}    ENTER
    Sleep    10 seconds
    Wait Until Element Is Visible      ${BaseLineRiskWRACStakeIndSel}    60 seconds
    Click Element                      ${BaseLineRiskWRACStakeIndSel}

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskWRACSave}    40 seconds
    Click Element                       ${BaseLineRiskWRACSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    sleep    2 seconds
    Screenshot    WRAC ${CurrentDate}

#Optional Scenario
    Wait Until Element Is Visible       ${BaseLineRiskImprvDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvDrp}
    Screenshot    WRAC Optional scenario ${CurrentDate}

#*************************************************FR6-Capture Possible Improvements or Additional Controls**************
FR6-Capture Possible Improvements or Additional Controls
    Log To Console    Starting FR6-Capture Possible Improvements or Additional Controls

    #Add New Record
    Wait Until Element Is Visible       ${BaseLineRiskImprvAdd}    40 seconds
    Click Element                       ${BaseLineRiskImprvAdd}
    Sleep    10 seconds

    #Capture process flow
    Wait Until Element Is Visible       ${BaseLineRiskImprvProcess}    40 seconds
    Click Element                       ${BaseLineRiskImprvProcess}

    #Capture Task type
    Wait Until Element Is Visible       ${BaseLineRiskImprvTaskDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvTaskDrp}
    Sleep    3 seconds
    Wait Until element is Visible       ${BaseLineRiskImprvTaskSel}    40 seconds
    Click Element                       ${BaseLineRiskImprvTaskSel}

    #Capture Type Of Action
    Wait Until Element Is Visible       ${BaseLineRiskImprvTypeDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvTypeDrp}
    Sleep    1 seconds
    Wait Until Element IS Visible       ${BaseLineRiskImprvTypeSel}    40 seconds
    Click Element                       ${BaseLineRiskImprvTypeSel}

    #Capture Description
    Wait Until Element Is Visible       ${BaseLineRiskImprvDesc}    40 seconds
    Click Element                       ${BaseLineRiskImprvDesc}
    Input Text                          ${BaseLineRiskImprvDesc}    auto test

    #Capture Entity
    Wait Until Element Is Visible       ${BaseLineRiskEntityDrp}    40 seconds
    Click Element                       ${BaseLineRiskEntityDrp}
    Sleep    10 seconds
    Wait Until Element Is Visible       ${BaseLineRiskEntityAnglo}    40 seconds
    Click Element                       ${BaseLineRiskEntityAnglo}
    Wait Until Element Is Visible       ${BaseLineRiskEntityBulk}    40 seconds
    Click Element                       ${BaseLineRiskEntityBulk}
    Wait Until Element Is Visible       ${BaseLineRiskEntityKumba}    40 seconds
    Click Element                       ${BaseLineRiskEntityKumba}
    Wait Until Element Is Visible       ${BaseLineRiskEntitySishen}    40 seconds
    Click Element                       ${BaseLineRiskEntitySishen}
#    Wait Until Element Is Visible       ${BaseLineRiskEntityBenefic}    40 seconds
#    Click Element                       ${BaseLineRiskEntityBenefic}

    #Capture responsible person
    Wait Until Element Is Visible       ${BaseLineRiskImprvRespDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvRespDrp}
    Wait Until element Is Visible       ${BaseLineRiskImprvRespSrch}    40 seconds
    Click Element                       ${BaseLineRiskImprvRespSrch}
    Input Text                          ${BaseLineRiskImprvRespSrch}    a
    Press Keys                          ${BaseLineRiskImprvRespSrch}    ENTER
    Sleep    3 seconds
    Wait Until Element Is Visible       ${BaseLineRiskImprvRespSel}    40 seconds
    Click Element                       ${BaseLineRiskImprvRespSel}

    #Capture agency
    Wait Until element Is Visible       ${BaseLineRiskImprvAgencyDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvAgencyDrp}
    Sleep    2 seconds
    Wait Until element is Visible       ${BaseLineRiskImprvAgencySel}    40 seconds
    Click Element                       ${BaseLineRiskImprvAgencySel}

    #capture Task Priority
    Wait Until element Is Visible       ${BaseLineRiskImprvPrioDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvPrioDrp}
    Sleep    2 seconds
    Wait Until element is Visible       ${BaseLineRiskImprvPrioSel}    40 seconds
    Click Element                       ${BaseLineRiskImprvPrioSel}

    #Capture Due date
    ${DueDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+1 day
    Set Global Variable    ${DueDate}
    Wait Until Element Is Visible       ${BaseLineRiskImprvDueDate}    40 seconds
    Click Element                       ${BaseLineRiskImprvDueDate}
    Input Text                          ${BaseLineRiskImprvDueDate}    ${DueDate}

    #capture Recuring action
    Wait Until element Is Visible       ${BaseLineRiskImprvRecurDrp}    40 seconds
    Click Element                       ${BaseLineRiskImprvRecurDrp}
    Sleep    2 seconds
    Wait Until element is Visible       ${BaseLineRiskImprvRecurSel}    40 seconds
    Click Element                       ${BaseLineRiskImprvRecurSel}

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskImprvSave}    40 seconds
    Click Element                       ${BaseLineRiskImprvSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    sleep    2 seconds
    Screenshot    Possible Improvements or Additional Controls ${CurrentDate}


FR8-Edit Baseline Risk Management (Layer 1)
    #Close
    Sleep    5 seconds
    Wait Until Element Is Visible       ${BaseLineRiskImprvClose}    40 seconds
    Click Element                       ${BaseLineRiskImprvClose}
    # change to pop-up frame
    Sleep    4 seconds
    Unselect frame
    Wait Until Element Is Visible       ${BaselineRiskWRACConfirm}    40 seconds
    Click Element                       ${BaselineRiskWRACConfirm}
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    #Close WRAC
    Sleep    20 seconds
    Wait Until Element Is Visible       ${BaseLineRiskWRACClose}    60 seconds
    Click Element                       ${BaseLineRiskWRACClose}
    # change to pop-up frame
    Sleep    4 seconds
    Unselect frame
    Wait Until Element Is Visible       ${BaselineRiskWRACConfirm}    40 seconds
    Click Element                       ${BaselineRiskWRACConfirm}
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BaseLineRiskProcess}    40 seconds
    Click Element                       ${BaseLineRiskProcess}
    #Element Should Be Visible           ${baseLineRiskProcessLogging}
    Sleep    2 seconds
    Screenshot    ProcessFlow In progress ${CurrentDate}
    Click Element                       ${BaseLineRiskProcess}

    #Capture Change Intoduction
    Wait Until Element Is Visible       ${BaseLineRiskRiskIntro}    40 seconds
    Click Element                       ${BaseLineRiskRiskIntro}
    Clear Element Text                  ${BaseLineRiskRiskIntro}
    Input Text                          ${BaseLineRiskRiskIntro}    auto test edit
    sleep    1 seconds
    Screenshot    Edit Baseline Risk record ${CurrentDate}
    Sleep    1 seconds

    # Save
    Wait Until Element Is Visible       ${BaseLineRiskSave}    40 seconds
    Click Element                       ${BaseLineRiskSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    Edit Baseline Risk record saved ${CurrentDate}



FR7-Sign off Baseline Change Log

    #Select BaseLine Change log report
    Wait Until element Is Visible       ${BaseLineChangeLogSel}    40 seconds
    Click Element                       ${BaseLineChangeLogSel}

    Sleep    15 seconds
    #Process flow
    Wait Until Element Is Visible       ${BaseLineChangeProcess}    40 seconds
    Click Element                       ${BaseLineChangeProcess}
    Sleep    2 seconds

    sleep    1 seconds
    Wait Until Element Is Visible       ${BaseLineChangeReasonDrpClose}    40 seconds
    Click Element                       ${BaseLineChangeReasonDrpClose}

    Wait Until Element Is Visible       ${BaseLineChangeRespDrp}    40 seconds
    Click Element                       ${BaseLineChangeRespDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${BaseLineChangeRespSrch2}
    Click Element                       ${BaseLineChangeRespSrch2}
    Input Text                          ${BaseLineChangeRespSrch2}    auto
    Press Keys                          ${BaseLineChangeRespSrch2}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BaseLineChangeRespSel2}    40 seconds
    Click Element                       ${BaseLineChangeRespSel2}


    #Change Complete status

    Wait Until Element Is Visible       ${BaseLineChangeDrp}    40 seconds
    Click Element                       ${BaseLineChangeDrp}
    Sleep    2 seconds
    Wait Until element Is Visible       ${BaseLineChangeComSel}    40 seconds
    Click Element                       ${BaseLineChangeComSel}
    Screenshot    signed-off details ${CurrentDate}

    # Save
    Wait Until Element Is Visible       ${BaseLineChangeSave}    40 seconds
    Click Element                       ${BaseLineChangeSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    Record saved ${CurrentDate}




















































