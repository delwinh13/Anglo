*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/ProjectManagement_var.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
#Resource    Stakeholder_keywords.robot

*** Keywords ***
Launch IsoMetrix Application 2
    Open Browser  ${URL}  ${BROWSER}  alias=ProjectManagement
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix


Login with Valid Credentials 2
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

FR1- Capture Project Management Altenate Scenario
    Log To Console    Starting FR1- Capture Project Management Altenate Scenario

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Project Management
    Sleep    2 seconds
    Wait Until Page Contains Element    ${ProjectManagementID}    60 seconds
    Click Element                       ${ProjectManagementID}

    #Add new Record
    Wait Until Element Is Visible       ${ProjectManagementAddNew}    40 seconds
    Click Element                       ${ProjectManagementAddNew}



    #capture Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${ProjectManagememntProcessID}    40 seconds
    Click Element                       ${ProjectManagememntProcessID}

    # Capture Entity
    Wait Until Element is Visible       ${ProjectManagementEntityDrp}    40 seconds
    Click Element                       ${ProjectManagementEntityDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${ProjectManagementEntityXpath}    40 seconds
    Click Element                       ${ProjectManagementEntityXpath}
    Wait Until Element Is Visible       ${ProjectManagementEntityXpath2}    40 seconds
    Click Element                       ${ProjectManagementEntityXpath2}
    Wait Until Element Is Visible       ${ProjectManagementEntitySelect}    40 seconds
    Click Element                       ${ProjectManagementEntitySelect}
    Wait Until element Is Visible       ${ProjectManagementEntityCloseDrp}    40 seconds
    Click Element                       ${ProjectManagementEntityCloseDrp}

    #capture Project title
    ${CurrentDate}=  Get Current Date  result_format=%d-%m-%Y
    Wait Until Element Is Visible       ${ProjectManagementEntityProjectIn}    40 seconds
    Click Element                       ${ProjectManagementEntityProjectIn}
    Input Text                          ${ProjectManagementEntityProjectIn}    auto test ${CurrentDate}

    # Capture Project Description

    Wait Until Element Is Visible       ${ProjectManagementEntityProjetDesc}    40 seconds
    Click Element                       ${ProjectManagementEntityProjetDesc}
    Input Text                          ${ProjectManagementEntityProjetDesc}    auto test ${CurrentDate}

    # capture Theme
    Wait Until element is Visible       ${ProjectManagementThemeDrp}    40 seconds
    Click Element                       ${ProjectManagementThemeDrp}
    Wait until Element Is Visible       ${ProjectManagementThemeSelectMining}    40 seconds
    Click Element                       ${ProjectManagementThemeSelectMining}

    # validate Function is present
    Element Should Not Be Visible           ${ProjectManagementFunctionDrp}


    # capture Planned start date
    ${PlanStartDate}=  Get Current Date  result_format=%d-%m-%Y
    Set Global Variable    ${PlanStartDate}
    Wait until Element Is Visible       ${ProjectManagementPlanStart}    40 seconds
    Click Element                       ${ProjectManagementPlanStart}
    Input Text                          ${ProjectManagementPlanStart}    ${PlanStartDate}

    #Capture Planned Completion
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+1 day
    Set Global Variable    ${PlanCloseDate}

    Wait Until Element Is Visible       ${ProjectManagementPlanStop}    40 seconds
    Click Element                       ${ProjectManagementPlanStop}
    Input Text                          ${ProjectManagementPlanStop}    ${PlanCloseDate}
    #Click Element                       ${ProjectManagementPlanStop}

    # Capture Objectives and proposed activities
    Wait until Element Is Visible       ${ProjectManagementObjDesc}    40 seconds
    Click Element                       ${ProjectManagementObjDesc}
    Input Text                          ${ProjectManagementObjDesc}    auto test

    #Capture Due Deligence Notes
    Wait Until Element Is Visible       ${ProjectManagementDueDeligence}    40 seconds
    Click Element                       ${ProjectManagementDueDeligence}
    Input Text                          ${ProjectManagementDueDeligence}    auto test



    # Capture Project Originator
    Wait Until Element Is Visible       ${ProjectManagementOriginatorDrp}    40 seconds
    Click Element                       ${ProjectManagementOriginatorDrp}
    Wait Until Element Is Visible       ${ProjectManagenmentOriginatorSearch}    40 seconds
    Click Element                       ${ProjectManagenmentOriginatorSearch}
    Input Text                          ${ProjectManagenmentOriginatorSearch}    a
    Press Keys                          ${ProjectManagenmentOriginatorSearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementOriginatorSelect}    40 seconds
    Click Element                       ${ProjectManagementOriginatorSelect}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectmanagementValidateReview}    40 seconds
    Element Should Be Visible           ${ProjectmanagementValidateReview}

#************************************************* FR2- Review Registered Project ***************************************
FR2- Review Registered Project Altenate Scenario
    Log To Console    Starting FR2- Review Registered Project Altenate Scenario

    # Select Project Approval Tab
    Wait Until Element Is Visible       ${ProjectManagementProjApprovTab}    40 seconds
    Click Element                       ${ProjectManagementProjApprovTab}

    #Capture Business Unit Verification and Approval
    Wait Until element Is Visible       ${ProjectManagementBUApprovDrp}    40 seconds
    Click Element                       ${ProjectManagementBUApprovDrp}
    Wait Until Element Is Visible       ${ProjectManagementBUApprovSearch}    40 seconds
    Click Element                       ${ProjectManagementBUApprovSearch}
    Input Text                          ${ProjectManagementBUApprovSearch}    autotest
    Press Keys                          ${ProjectManagementBUApprovSearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementBUApprovSelect}    40 seconds
    Click Element                       ${ProjectManagementBUApprovSelect}
   # Click Element                       ${ProjectManagementBUApprovDrp}

    # Altenate Scenario Date and time Approve not visible
    Element Should Not Be Visible       ${ProjectManagementDateTimeApprov}
    #Group Approval
    Element Should Not Be Visible       ${ProjectManagementGroupApprov}

    #Capture Group approval And Verification
    Wait Until element Is Visible       ${ProjectManagementGroupVerifyDrp}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifyDrp}
    Wait Until Element Is Visible       ${ProjectManagementGroupVerifySearch}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifySearch}
    Input Text                          ${ProjectManagementGroupVerifySearch}    auto
    Press Keys                          ${ProjectManagementGroupVerifySearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementGroupVerifySelect}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifySelect}
    Click Element                       ${ProjectManagementGroupVerifyDrp}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectmanagementValidateReview}    40 seconds
    Element Should Be Visible           ${ProjectmanagementValidateReview}


FR2- Review Registered Project Main Scenario Business Unit Approval
    Log To Console    Starting FR2- Review Registered Project Main Scenario Business Unit Approval

    Sleep    1 seconds
    # Capture Business Unit Approval
    Wait Until Element Is Visible       ${ProjectManagementBUApproval}    40 seconds
    Click Element                       ${ProjectManagementBUApproval}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectmanagementValidateReview}    40 seconds
    Element Should Be Visible           ${ProjectmanagementValidateReview}

FR2- Review Registered Project Main Scenario Group Approval
    Log To Console    Starting FR2- Review Registered Project Main Scenario Group Approval

    Sleep    1 seconds
    Wait Until Element Is Visible       ${ProjectManagementGroupApprov}    40 seconds
    Click Element                       ${ProjectManagementGroupApprov}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectManagementProcessIdea}    40 seconds
    Element Should Be Visible           ${ProjectManagementProcessIdea}

FR3- Approve Project Altenate Scenario
    Log To Console    Starting FR3- Approve Project Altenate Scenario

    Wait Until Element Is Visible       ${ProjectMahagementEntityLevelDrp}    40 seconds
    Click Element                       ${ProjectMahagementEntityLevelDrp}
    #Select Park
    Wait Until Element is visible       ${ProjectManagementPark}    40 seconds
    Click Element                       ${ProjectManagementPark}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectManagementProcessParked}    40 seconds
    Element Should Be Visible           ${ProjectManagementProcessParked}

FR3- Approve Project Main Scenario
    Log To Console    Starting FR3- Approve Project Main Scenario

    Wait Until Element Is Visible       ${ProjectMahagementEntityLevelDrp}    40 seconds
    Click Element                       ${ProjectMahagementEntityLevelDrp}
    #Select Approv
    Sleep    1 seconds
    Wait Until Element is visible       ${ProjectManagementApprove}    40 seconds
    Click Element                       ${ProjectManagementApprove}

    Sleep    1 seconds
    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectManagementProcessApprov}    40 seconds
    Element Should Be Visible           ${ProjectManagementProcessApprov}

FR3- Approve Project Main Scenario 2
    Log To Console    Starting FR3- Approve Project Main Scenario 2

    Wait Until Element Is Visible       ${ProjectManagementPrjCompleteDrp}    40 seconds
    Click Element                       ${ProjectManagementPrjCompleteDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${ProjectManagementPrjCompleteSelect}    40 seconds
    Click Element                       ${ProjectManagementPrjCompleteSelect}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #validate process is on capture
    Wait Until Element Is Visible       ${ProjectManagementProcessComplete}    40 seconds
    scroll element into view            ${ProjectManagementProcessComplete}
    Element Should Be Visible           ${ProjectManagementProcessComplete}

#************************************************* FR8-Capture Project Actions    **************************************

FR8-Capture Project Actions
    Log To Console    Starting FR8-Capture Project Actions

    # Select Project action tab
    Sleep     3 seconds
    Wait Until Element is Visible       ${ProjectManagementActionTab}    40 seconds
    Click Element                       ${ProjectManagementActionTab}

    Sleep    5 seconds

    Wait Until Element Is Visible       ${ProjectActionAdd}    40 seconds
    Click Element                       ${ProjectActionAdd}


    # Capture Process phase
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProjectActionProcess}    40 seconds
    Click Element                       ${ProjectActionProcess}

    Sleep    3 seconds

    # Capture Type of action
    Wait Until Element Is Visible       ${EngagementActionTypeDrp}    40 seconds
    Click Element                       ${EngagementActionTypeDrp}
    Wait Until Element Is Visible       ${EngagementActionSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementActionSelect}

    # Capture Action description
    Wait Until Element Is Visible       ${EngagementActionDesc}    40 seconds
    Click Element                       ${EngagementActionDesc}
    Input Text                          ${EngagementActionDesc}    Auto Test

     # Capture Business Unit

    Wait Until Element Is Visible       ${EngagementActionEntityDrp}    40 seconds
    Click Element                       ${EngagementActionEntityDrp}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectActionsEntityXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${ProjectActionsEntityXpath}
    Wait Until Element Is Visible       ${ProjectActionsEntityXpath2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${ProjectActionsEntityXpath2}
    Wait Until Element Is Visible       ${ProjectActionsEntityXpath3}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${ProjectActionsEntityXpath3}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${ProjectActionsEntitySelect}     40 seconds
    Sleep    1 seconds
    Click Element                       ${ProjectActionsEntitySelect}

    #Capture Responsible person
    Wait Until Element Is Visible       ${EngagementActionRespDrp}    	40 seconds
    Click Element                       ${EngagementActionRespDrp}
    Wait Until Element Is Visible       ${ProjectActionsRespSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${ProjectActionsRespSearch}    a
    Press Keys                          ${ProjectActionsRespSearch}    ENTER
    Sleep    1 seconds
    Wait Until Element Is Visible       ${ProjectActionsRespSelect}    40 seconds
    #Sleep    1 seconds
    Click Element                       ${ProjectActionsRespSelect}
    Sleep    1 seconds
    #Click Element                       ${EngagementActionRespDrp}



     # Capture Action due date
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+1 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${EngagementActionDue}    40 seconds
    Click Element                       ${EngagementActionDue}
    Input Text                          ${EngagementActionDue}    ${PlanCloseDate}
   # Click Element                       ${EngagementManagementTitleXpath}

    # Capture Recuring Action
    Wait Until Element Is Visible       ${EngagementActionRecuring}    40 seconds
    Click Element                       ${EngagementActionRecuring}
    Wait Until Element Is Visible       ${ProjectActionRecuringSelect}    40 seconds
    Click Element                       ${ProjectActionRecuringSelect}

    # Click Save
    Wait Until Element Is Visible       ${ProjectActionSave}    40 seconds
    Click Element                       ${ProjectActionSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    #Screenshot    Action Save

#************************************************* FR11-View Linked Engagements     ************************************
FR11-View Linked Engagements
    Log To Console    Starting FR11-View Linked Engagements
    Sleep    2 seconds

    Wait Until Element Is Visible       ${ProjectActionClose}    40 seconds
    Click Element                       ${ProjectActionClose}

    Unselect frame
    Wait Until Element Is Visible       ${ProjectActionCloseYes}    40 seconds
    Click Element                       ${ProjectActionCloseYes}

    # Change to main frame
    Sleep    2 seconds
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     10 seconds
    #capture Process Flow

    Wait Until Element Is Visible       ${ProjectManagememntProcessID}    40 seconds
    Click Element                       ${ProjectManagememntProcessID}
    sleep    2 seconds

    Wait Until Element Is Visible       ${ProjectLinkEngTab}    40 seconds
    Click Element                       ${ProjectLinkEngTab}

FR11-View Linked Engagements 2
    #search record
    Wait Until Element Is Visible       ${ProjectLinkSearchBtn}    40 seconds
    Click Element                       ${ProjectLinkSearchBtn}

    sleep     5 seconds
    Log To Console    Search
    Wait Until Element Is Visible       ${ProjectLinkSearch}
    Click Element                       ${ProjectLinkSearch}
    Input Text                          ${ProjectLinkSearch}    auto test ${CurrentDate}
    Sleep    3 seconds
    Wait Until Element Is Visible       ${ProjectLinkSearchBtn2}
    Click Element                       ${ProjectLinkSearchBtn2}

    Sleep    4 seconds
    Wait Until Element is Visible       ${ProjectLinkSelectRec}    40 seconds
    Click Element                       ${ProjectLinkSelectRec}

    Sleep     3 seconds
    #capture Process Flow

    Wait Until Element Is Visible       ${ProjectEngagementProcess}    40 seconds
    Click Element                       ${ProjectEngagementProcess}


















