*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
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

FR1 - Capture Engagements Optional Scenario 5
    Log To Console    Starting FR1 - Capture Engagements Optional Scenario 5

    Wait Until Element Is Visible        ${iFrame}    60 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Social Sustainability
    Sleep    10 seconds
    Wait Until Page Contains Element    ${SocialSustainabilityXpath}    120 seconds
    Click Element                       ${SocialSustainabilityXpath}

    # Click Engagemet Management
    Sleep    10 seconds
    Wait Until Element Is Visible       ${EngagementManagementXpath}    120 seconds
    Click Element                       ${EngagementManagementXpath}


    # Add Stakeholder Engagement Record
    sleep    10 seconds
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
    #kumba
    Click Element                       ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible       ${EngagementManagementBUDrpSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUDrpSelect}
    Wait Until Element Is Visible       ${EngagementManagementBUSelectID2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUSelectID2}

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




    #Grievances
    Wait Until Element Is Visible         ${EngagementManagementGrivBtn}    40 seconds
    Click Element                         ${EngagementManagementGrivBtn}


#************************************************* Grievance tab *******************************************************
    #Switch window frame
    Switch Window       NEW
    Sleep               5
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame        ${iFrame}

    # Check on Process Flow
    Sleep    10 seconds
    Wait Until Element Is Visible       ${EngagementGrievanceProcessID}    120 seconds
    Click Element                       ${EngagementGrievanceProcessID}

    # Capture Grievance  on type of Event
    Wait Until Element Is Visible       ${EngagementGrievanceEventDrp}    40 seconds
    Click Element                       ${EngagementGrievanceEventDrp}
    Sleep    2 seconds
    Wait until Element Is Visible       ${EngagementGrievanceEventSelect}    40 seconds
    Click Element                       ${EngagementGrievanceEventSelect}

    # Capture Event Title
    Wait Until Element Is Visible       ${EngagementGrievanceTitleInput}    40 seconds
    Click Element                       ${EngagementGrievanceTitleInput}
    Input Text                          ${EngagementGrievanceTitleInput}    Auto Test ${CurrentDate}

    # Capture Event Description
    Wait Until Element Is Visible       ${EngagementGrievanceEventDesc}    40 seconds
    Click Element                       ${EngagementGrievanceEventDesc}
    Input Text                          ${EngagementGrievanceEventDesc}    Auto Test Kavi

    # Capture Business Unit

    Wait Until Element Is Visible       ${EngagementGrievanceBUSelectXpath}    40 seconds
    Click Element                       ${EngagementGrievanceBUSelectXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible       ${EngagementManagementBUDrpSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUDrpSelect}
    Wait Until Element Is Visible       ${EngagementManagementBUSelectID2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUSelectID2}

    # Capture Functional Location
    Wait Until Element Is Visible       ${EnaggementGrievanceFLXpath}    40 seconds
    Click Element                       ${EnaggementGrievanceFLXpath}
    Wait Until Element Is Visible       ${EngagementGrievanceFLSishen}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLSishen}
    Wait Until Element Is Visible       ${EngagementGrievanceFLMining}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLMining}
    Wait Until Element Is Visible       ${EngagementGrievanceFLCommon}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLCommon}
    Wait Until Element Is Visible       ${EngagementGrievanceFLDrilling}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLDrilling}
    Wait Until Element Is Visible       ${EngagementGrievanceFLRotary}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLRotary}
    Wait Until Element Is Visible       ${EngagementGrievanceFLAtlas}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLAtlas}
    Wait Until Element Is Visible       ${EngagementGrievanceFLAtlasSel}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceFLAtlasSel}

    # Capture Date of Event
    Wait Until Element Is Visible       ${EngagementGrievanceDateXpath}   40 seconds
    Click Element                       ${EngagementGrievanceDateXpath}
    Input Text                          ${EngagementGrievanceDateXpath}    ${CurrentDate}
    #Click Element                       ${EngagementManagementTitleXpath}

    # Capture Time of event
    Wait Until Element Is Visible       ${EngagementGrievanceTimeEventXpath}    40 seconds
    Click Element                       ${EngagementGrievanceTimeEventXpath}
    Input Text                          ${EngagementGrievanceTimeEventXpath}    10

    # Capture Immediate Action taken
    Wait Until Element Is Visible       ${EngagementGrievanceActionInput}    40 seconds
    Click Element                       ${EngagementGrievanceActionInput}
    Input Text                          ${EngagementGrievanceActionInput}    Auto Test Action


    # Capture Validator

    Wait Until Element Is Visible       ${EngagementGrievanceValidatorXpath}    	40 seconds
    Click Element                       ${EngagementGrievanceValidatorXpath}
    Wait Until Element Is Visible       ${EngagementGrievanceValidatorSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementGrievanceValidatorSearch}    a
    Press Keys                          ${EngagementGrievanceValidatorSearch}    ENTER
    Wait Until Element Is Visible       ${EngagementGrievanceValidatorSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceValidatorSelect}
    #Click Element                       ${EngagementGrievanceValidatorXpath}
    Sleep    2 seconds


    # Capture Responsible Supervisor

    Wait Until Element Is Visible       ${EngagementGrievanceRespSupXpath}    	40 seconds
    Click Element                       ${EngagementGrievanceRespSupXpath}
    Wait Until Element Is Visible       ${EngagementGrievanceRespSupSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementGrievanceRespSupSearch}    a
    Press Keys                          ${EngagementGrievanceRespSupSearch}    ENTER
    Wait Until Element Is Visible       ${EngagementGrievanceRespSupSelectID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceRespSupSelectID}
    #Click Element                       ${EngagementGrievanceRespSupXpath}







    # Save Grievance
    Wait Until Element Is Visible       ${EngagementGrievanceSaveBtnID}    40 seconds
    Click Element                       ${EngagementGrievanceSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #Close Window and return to main window
    Sleep    5 seconds
    Close Window
#************************************************* Details Tab *********************************************************



    Sleep               5
    Switch Window       MAIN
    Select Frame        ${iFrame}

    Sleep               10
    # Capture Grievance
    Wait Until Element Is Visible       ${EngagementManagementGrievanceDrp}    40 seconds
    Click Element                       ${EngagementManagementGrievanceDrp}
    Wait Until Element Is Visible       ${EngagementManagementGrievanceInput}    40 seconds
    Sleep    2 seconds
    Input Text                          ${EngagementManagementGrievanceInput}    Auto Test ${CurrentDate}
    Press Keys                          ${EngagementManagementGrievanceInput}    ENTER
    Wait Until Element Is Visible       ${EngagementGrievanceAddAll}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementGrievanceAddAll}
    Click Element                       ${EngagementManagementGrievanceDrp}


    # Click Save
    Wait Until Element Is Visible       ${EngagementManagmentSaveID}    40 seconds
    Click Element                       ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds



   # validate the process is on planned
    Wait Until Element Is Visible       ${EngagementManagementProcessPlanCo}    40 seconds
    Element Should be Visible           ${EngagementManagementProcessPlanCo}








