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

FR1 - Capture Engagements Altenate Scenerio 2
    Log To Console    Starting FR1 - Capture Engagements Altenate Scenario 2

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
    Sleep    2 seconds
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
    Wait Until Element Is Visible       ${EngagementManagementProcessPlanned}    40 seconds
    Element Should be Visible           ${EngagementManagementProcessPlanned}

#************************************************* FR-6 Capture Engagement Status **************************************
FR6 - Capture Engagements Executed Planned
    Log To Console    Starting FR6 - Capture Engagements Executed Planned
    Sleep    3 seconds
    #Change Status To Executed on time
    Wait Until Element is Visible       ${EngagementManagementEngStatus3}    40 seconds
    Click Element                       ${EngagementManagementEngStatus3}
    Wait Until Element Is Visible       ${EngagementStatusExecutedOnTime}    40 seconds
    Click Element                       ${EngagementStatusExecutedOnTime}

    # Click Save
    Wait Until Element Is Visible       ${EngagementManagmentSaveID}    40 seconds
    Click Element                       ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # validate the process is on Executed Confedential
    #Wait Until Element Is Visible       ${EngagementProcessExecutedPlanned}    40 seconds
    #Element Should be Visible           ${EngagementProcessExecutedPlanned}
    #Sleep    3 seconds

#************************************************* FR-6 Capture Engagement Cancel **************************************
FR7 - Capture Engagements Cancelled Planned
    Log To Console    Starting FR7 - Capture Engagements Cancelled Planned

    Sleep    10 seconds
    #Change Status To Cancelled
    Wait Until Element is Visible       ${EngagementManagementEngStatus2}    40 seconds
    Click Element                       ${EngagementManagementEngStatus2}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementStatusCancelled}    40 seconds
    Click Element                       ${EngagementStatusCancelled}


    # Click Save
    Wait Until Element Is Visible       ${EngagementManagmentSaveID}    40 seconds
    Click Element                       ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


    # validate the process is on Cancelled confidential
    #Wait Until Element Is Visible       ${EngagementProcessCancelledPlanned}    40 seconds
    #Element Should be Visible           ${EngagementProcessCancelledPlanned}
    #Sleep    3 seconds


