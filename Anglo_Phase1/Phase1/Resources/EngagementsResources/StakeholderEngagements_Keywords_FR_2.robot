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
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\EngagementManagement\\StakeholderEngagementTeamAttendee\\${Date}

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


#************************************************* FR-3 Capture Individuals Attendees **********************************
FR2 - Capture Team Attendees
    Log To Console    Starting FR3 - Capture Team Attendees


     # Attendees tab
    Wait Until Element Is Visible       ${EngagementManagementAttendTab}    40 seconds
    Click Element                       ${EngagementManagementAttendTab}


    #Add new Team Attendee
    Sleep    20 seconds
    Wait Until Element is Visible       ${EngagementAddNewTeam}    40 seconds
    Click Element                       ${EngagementAddNewTeam}

    # Capture Attendee name
    Wait Until Element is Visible       ${EngagementTeamAttendDrp}    40 seconds
    Click Element                       ${EngagementTeamAttendDrp}
    Wait Until element Is Visible       ${EngagementTeamAttendSearch}    40 seconds
    Click Element                       ${EngagementTeamAttendSearch}
    Input Text                          ${EngagementTeamAttendSearch}    a
    Press Keys                          ${EngagementTeamAttendSearch}    ENTER
    Sleep    1 seconds
    Wait Until Element is Visible       ${EngagementTeamAttendeeAdd}    40 seconds
    Click Element                       ${EngagementTeamAttendeeAdd}

    # Click Save
    Wait Until Element Is Visible       ${EngagementAttendeeSave}    40 seconds
    Click Element                       ${EngagementAttendeeSave}
    Wait Until Element Is Not Visible   ${LoadingBarXpath}    40 seconds

    #Click in line edit
    Sleep     3 seconds
    Wait Until Element Is Visible        ${EngagementAttendeeInLineEdit}    40 seconds
    Click Element                        ${EngagementAttendeeInLineEdit}


    # Select Team Attendee record
    Sleep     5 seconds
    Wait Until Element is Visible       ${EngagementAttendSelect}    40 seconds
    Click Element                       ${EngagementAttendSelect}



    # Capture Process phase
    Sleep    50 seconds
    Wait Until Element Is Visible       ${EngagementTeamAttendProcessID}    60 seconds
    Click Element                       ${EngagementTeamAttendProcessID}

    # validate the process is on Edit Phase
    Wait Until Element Is Visible       ${EngagementTeamAttendProcessEdit}    40 seconds
    Element Should be Visible           ${EngagementTeamAttendProcessEdit}
    Sleep    2 seconds
    Screenshot    Team Attendee Add Phase

    #Sleep    3 seconds

    # Close Team attendee
    Wait Until Element Is Visible       ${EngagementTeamAttendClose}    40 seconds
    Click Element                       ${EngagementTeamAttendClose}

    # Check on Process Flow
    Sleep    20 seconds
    Wait Until Element Is Visible       ${EngagementManagementProcessId}    60 seconds
    Click Element                       ${EngagementManagementProcessId}

    # Attendees tab
    Wait Until Element Is Visible       ${EngagementManagementAttendTab}    40 seconds
    Click Element                       ${EngagementManagementAttendTab}

    # Individuals tab
    #Wait Until Element Is Visible       ${EngagementIndividualAttendeeTab}    40 seconds
    #Click Element                       ${EngagementIndividualAttendeeTab}

    Screenshot    Team Attendees Record










