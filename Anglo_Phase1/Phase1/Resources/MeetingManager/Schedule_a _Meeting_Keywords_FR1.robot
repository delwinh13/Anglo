*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/MeetingManager_Var.robot
Resource  ../../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\ScreenShots\\MeetingManager\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

#***********Schedule_a_meeting_FR1**************

Schedule_a_meeting_FR1
    Log To Console     Meeting Manager

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    Wait Until Element Is Visible    ${MeetingManagerInterface}    20 seconds
    Click Element                    ${MeetingManagerInterface}
    Sleep    2 seconds

    Wait Until Element Is Visible       ${MeetingAddBttn}      20 seconds
    Click Element                       ${MeetingAddBttn}
    Sleep    2  seconds

    Wait Until Element IS Visible      ${MeetingManagerProcessflow}    30 seconds
    Click Element                       ${MeetingManagerProcessflow}
    Sleep    3 seconds

    Wait Until Element Is Visible        ${MeetingManagerAddPhase}    30 seconds
    Element Should Be Visible            ${MeetingManagerAddPhase}
    Sleep    2 seconds

    Wait Until Element Is Visible         ${MeetingBusUnitDPD}     20 seconds
    Click Element                         ${MeetingBusUnitDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${MeetingExpandAnglo}     20 seconds
    Click Element                         ${MeetingExpandAnglo}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${MeetingExpandBulk}     20 seconds
    Click Element                         ${MeetingExpandBulk}
    Sleep    2 seconds
    Wait Until Element Is Visible          ${MeetingExpandKumba}     20 seconds
    Click Element                          ${MeetingExpandKumba}
    Sleep    2 seconds
    Wait Until Element Is Visible          ${MeetingSelectSeshine}     20 seconds
    Click Element                          ${MeetingSelectSeshine}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${MeetingBusUnitDPD}     20 seconds
    Click Element                         ${MeetingBusUnitDPD}
    Sleep    2 seconds


    Wait Until Element Is Visible         ${MeetingRiskDisciplineDPD}     20 seconds
    Click Element                         ${MeetingRiskDisciplineDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${MeetingRiskDisciSelectAll}    20 seconds
    Click Element                         ${MeetingRiskDisciSelectAll}
    Sleep    2 seconds

    Wait Until Element Is Visible          ${MeetingTypeDPD}     20 seconds
    Click Element                          ${MeetingTypeDPD}
    Sleep    2 seconds

    Wait Until Element Is Visible          ${MeetingTypeSelect}    30 seconds
    Click Element                          ${MeetingTypeSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible         ${Meetingvenue}      20 seconds
    Input Text                            ${Meetingvenue}       AutotestSeminar
    Sleep    2 seconds

    Wait Until Element is Visible          ${MeetingFuncLocationDPD}    30 seconds
    Click Element                          ${MeetingFuncLocationDPD}
    Sleep    2 seconds

    Wait Until Element Is Visible           ${MeetingFuncLocationselect}    45 seconds
    Click Element                           ${MeetingFuncLocationselect}
    Sleep    2 seconds

    #Start Date
    ${PlanCloseDate}                     Get Current Date    result_format=%d-%m-%Y
    Set Global Variable                  ${PlanCloseDate}
    Input Text                            ${meetingDate}          ${PlanCloseDate}
    Sleep    3  seconds

    Wait Until Element Is Visible         ${MeetingStartDate}     30 seconds
    Click Element                         ${MeetingStartDate}
    Sleep    3 seconds

    Wait Until Element Is Visible          ${MeetingEndDate}     20 seconds
    Click Element                          ${MeetingEndDate}
    Sleep    3 seconds

    Wait Until Element Is Visible          ${MeetingChairpersonDPD}    20 seconds
    Click Element                          ${MeetingChairpersonDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible          ${MeetingChairpersonSelectsearch}    30 seconds
    Input Text                             ${MeetingChairpersonSelectsearch}     aaron swarts
    Press Keys                             ${MeetingChairpersonSelectsearch}      ENTER
    Sleep  2 seconds
    Wait Until Element IS Visible          ${MeetingChairpersonName}     30 seconds
    Click Element                          ${MeetingChairpersonName}
    Sleep    2 seconds

    Wait Until Element Is Visible           ${MeetingOrginalMinutesDPD}    30 seconds
    Click Element                           ${MeetingOrginalMinutesDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible           ${MeetingOriginalSelectSearch}     20 seconds
    Click Element                           ${MeetingOriginalSelectSearch}
    Input Text                              ${MeetingOriginalSelectSearch}     Anglo
    Press Keys                              ${MeetingOriginalSelectSearch}     ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible          ${MeetingOrginalSelect}     30 seconds
    ClicK Element                          ${MeetingOrginalSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible            ${Meetinglinktoteams}     20 seconds
    Click Element                            ${Meetinglinktoteams}
    Input Text                               ${Meetinglinktoteams}     Autotest
    Sleep    2 seconds

    Wait Until Element Is Visible            ${MeetingSupportingDoctab}    20 seconds
    Click Element                            ${MeetingSupportingDoctab}
    Sleep    2 seconds

    #***Optional Scenario

    Wait Until ELement Is Visible            ${MSupportdocLink}     20 seconds
    Click Element                            ${MSupportdocLink}
    Sleep    5 seconds
    # change to pop-up frame
    Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible                ${MSupportLinkPOPUP}    20 seconds
    Sleep    2    seconds
    Wait Until Element Is Visible             ${MSupportEnterURl}    20 seconds
    Click Element                             ${MSupportEnterURl}
    Clear Element Text                        ${MSupportEnterURl}
    Input Text                                ${MSupportEnterURl}       https://www.isometrix.com/
    Sleep    2 seconds
    Wait Until Element Is Visible             ${MsupportEnterTittle}     20 seconds
    Click Element                             ${MsupportEnterTittle}
    Clear Element Text                        ${MsupportEnterTittle}
    Input Text                                ${MsupportEnterTittle}       Autotest
    Sleep    2 seconds

    Wait Until Element Is Visible            ${MSupportDOCADDBttn}     20 seconds
    Click Element                            ${MSupportDOCADDBttn}
    Sleep    2 seconds

    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    Wait Until Element Is Visible             ${MSupportSaveDOCBttn}     20 seconds
    Click Element                             ${MSupportSaveDOCBttn}
    Sleep    2 seconds

    Wait Until Element Is Visible           ${MeetingManagerEditphase}    40 seconds
    Element Should Be Visible               ${MeetingManagerEditphase}
    Sleep    2 seconds

    Wait Until Element IS Visible           ${MeetingManagerTab}    30 seconds
    Click Element                           ${MeetingManagerTab}
    Sleep    2 seconds
    Screenshot    Meeting Agenda














