*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
Resource    ../../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
Resource  ../../Resources/Common_keywords.robot
#Resource    Stakeholder_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\FR-5 StakeholderEngagement\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

FR1 - Capture Engagements
    Log To Console    Starting FR1 - Capture Engagements

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Social Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${SocialSustainabilityXpath}    60 seconds
    Click Element                       ${SocialSustainabilityXpath}

    # Click Engagemet Management
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementManagementXpath}    40 seconds
    Click Element                       ${EngagementManagementXpath}

    # Add Stakeholder Engagement Record
    Wait Until Element Is Visible       ${EngagementManagementAddBtnID}    40 seconds
    Click Element                       ${EngagementManagementAddBtnID}


    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${EngagementManagementProcessId}    40 seconds
    Click Element                       ${EngagementManagementProcessId}


    #validate process is on AddPhase
    Wait Until Element Is Visible       ${EngagementManagementProcessAddPhase}    40 seconds
    Element Should Be Visible           ${EngagementManagementProcessAddPhase}



    # Capture Title
    Wait Until Element Is Visible       ${EngagementManagementTitleXpath}    40 seconds
    Click Element                       ${EngagementManagementTitleXpath}
    Input Text                          ${EngagementManagementTitleXpath}    Auto Test

    #Get the current date for the Non-Compliance date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}

    # Capture Engagement Date
    Wait Until Element Is Visible       ${EngagementManagementDateXpath}    40 seconds
    Click Element                       ${EngagementManagementDateXpath}
    Input Text                          ${EngagementManagementDateXpath}    ${CurrentDate}
    Click Element                       ${EngagementManagementTitleXpath}

    # Capture Business Unit
    Wait Until Element Is Visible       ${EngagementManagementBUDDID}    40 seconds
    Click Element                       ${EngagementManagementBUDDID}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUSelectID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUSelectID}

    # Validate Project field is not visible (Alternate Scenario 1)
    Element Should Not Be Visible       ${EngagementManagmentProjectDDID}

    # Select Link to Project Check Box
    Wait Until Element Is Visible       ${EngagementManagmentLinkProjXpath}    40 seconds
    Click Element                       ${EngagementManagmentLinkProjXpath}

    # Capture Functional Location
    Wait Until Element Is Visible       ${EngagementManagmentFLDDID}    40 seconds
    Click Element                       ${EngagementManagmentFLDDID}
    Wait Until Element Is Visible       ${EngagementManagmentFLOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentFLOptionID}

    # Capture Project
    Wait Until Element Is Visible       ${EngagementManagmentProjectDDID}    	40 seconds
    Click Element                       ${EngagementManagmentProjectDDID}
    Wait Until Element Is Visible       ${EngagementManagmentProjSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementManagmentProjSrchXpath}    a
    Press Keys                          ${EngagementManagmentProjSrchXpath}    ENTER
    Wait Until Element Is Visible       ${EngagementManagmentProjOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentProjOptXpath}
    Click Element                       ${EngagementManagmentProjectDDID}

    # Capture Function of Engagement
    Wait Until Element Is Visible       ${EngagementManagmentFuncDDID}    40 seconds
    Click Element                       ${EngagementManagmentFuncDDID}
    Wait Until Element Is Visible       ${EngagementManagmentFuncOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentFuncOptXpath}
    Click Element                       ${EngagementManagmentFuncDDID}

    # Capture Method of Engagement
    Wait Until Element Is Visible       ${EngagementManagmentMethodDDID}    40 seconds
    Click Element                       ${EngagementManagmentMethodDDID}
    Wait Until Element Is Visible       ${EngagementManagmentMethodOptID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentMethodOptID}

    # Alternate scenario 2

    # Select Confidential Checkbox
    Wait Until Element Is Visible       ${EngagementManagmentConfChkXpath}    40 seconds
    Click Element                       ${EngagementManagmentConfChkXpath}

    # Capture Responsible Person
    Wait Until Element Is Visible       ${EngagementManagmentRespPersonDDID}    40 seconds
    Click Element                       ${EngagementManagmentRespPersonDDID}
    Wait Until Element Is Visible       ${EngagementManagmentRespSrchXpath}    40 seconds
    Input Text                          ${EngagementManagmentRespSrchXpath}    Auto
    Press Keys                          ${EngagementManagmentRespSrchXpath}    ENTER
    Wait Until Element Is Visible       ${EngagementManagmentRespRsltID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentRespRsltID}

    # Capture Contact Inquiry
    Wait Until Element Is Visible       ${EngagementManagmentCntInqDDID}    40 seconds
    Click Element                       ${EngagementManagmentCntInqDDID}
    Wait Until Element Is Visible       ${EngagementManagmentCntInqOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentCntInqOptXpath}

    # Capture Description
    Wait Until Element Is Visible       ${EngagementManagmentDescXpath}    40 seconds
    Click Element                       ${EngagementManagmentDescXpath}
    Input Text                          ${EngagementManagmentDescXpath}    Test

    # Capture Outcome
    Wait Until Element Is Visible       ${EngagementManagmentLocDDID}    40 seconds
    Click Element                       ${EngagementManagmentLocDDID}
    Wait Until Element Is Visible       ${EngagementManagmentLocOptID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentLocOptID}

    # Click Save
    Wait Until Element Is Visible       ${EngagementManagmentSaveID}    40 seconds
    Click Element                       ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # validate the process is on planned
    Wait Until Element Is Visible       ${EngagementManagementProcessPlanCo}    40 seconds
    Element Should be Visible           ${EngagementManagementProcessPlanCo}
    Sleep    2 seconds


#************************************************* FR5 - Capture Actions ***********************************************
FR5 - Capture Actions
    Log To Console    Starting FR4 - Capture Actions


    # Individuals tab
    Wait Until Element Is Visible       ${EngagementActionTab}    40 seconds
    Click Element                       ${EngagementActionTab}


    # Select Individuals Attendee record
    Sleep     3 seconds
    Wait Until Element is Visible       ${EngagementAddNewAction}    40 seconds
    Click Element                       ${EngagementAddNewAction}



    # Capture Process phase
    Sleep    10 seconds
    Wait Until Element Is Visible       ${EngagementActionProcess}    40 seconds
    Click Element                       ${EngagementActionProcess}

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
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath2}
    Wait Until Element Is Visible       ${EngagementActionEntityXpath2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementActionEntityXpath2}
    Wait Until Element Is Visible       ${EngagementActionEntityXpath3}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${EngagementActionEntityXpath3}
    Wait Until Element Is Visible       ${EngagementActionEntityXpath4}     40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementActionEntityXpath4}
    #Click Element                       ${EngagementActionEntityXpath3}
#    Wait Until Element Is Visible       ${EngagementActionEntitySelect}     40 seconds
#    Sleep    1 seconds
#    Click Element                       ${EngagementActionEntitySelect}

    #Capture Responsible person
    Wait Until Element Is Visible       ${EngagementActionRespDrp}    	40 seconds
    Click Element                       ${EngagementActionRespDrp}
    Wait Until Element Is Visible       ${EngagementActionRespsearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementActionRespsearch}    a
    Press Keys                          ${EngagementActionRespsearch}    ENTER
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EngagementActionRespSelect}    40 seconds
    #Sleep    1 seconds
    Click Element                       ${EngagementActionRespSelect}
    Click Element                       ${EngagementActionRespDrp}



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
    Wait Until Element Is Visible       ${EngagementActionRecuringSelect}    40 seconds
    Click Element                       ${EngagementActionRecuringSelect}

    # Click Save
    Wait Until Element Is Visible       ${EngagementActionSave}    40 seconds
    Click Element                       ${EngagementActionSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    Action Save

    # Close Team attendee
   # Wait Until Element Is Visible       ${EngagementGroupClose}    40 seconds
   # Click Element                       ${EngagementGroupClose}












