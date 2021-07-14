*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/TrainingRegister_var.robot
Resource  ../../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\ScreenShots\\Training Register\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

#***********FR3-Add Training Register Actions**************
FR3-Add Training Register Actions
    Log To Console    Training and Suggestions

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    #Click TrainingandRegister label
    Wait Until Element Is Visible      ${TrainingAndSuggestionslabelbutton}    20 seconds
    Click Element                      ${TrainingAndSuggestionslabelbutton}
    Sleep    2 seconds

    #Click Training Register
    Wait Until Element Is Visible      ${TrainingRegisterlabelbutton}  20 seconds
    Click Element                      ${TrainingRegisterlabelbutton}
    Sleep    2 seconds

    #Add new Training Record
    Wait Until Element Is Visible       ${TrainingRegisternewADDbttn}    10 seconds
    Click Element                       ${TrainingRegisternewADDbttn}
    Sleep    2 seconds

    Wait Until page does not contain       ${Loadingvariablepermis}       30 seconds

    #Processflow
    Wait Until Element Is Visible       ${TrainingRegisterProcessFlow}    20  seconds
    Click Element                       ${TrainingRegisterProcessFlow}
    Sleep    2 seconds
    Wait Until Element Is Visible        ${TrainingRegisterAddPhase}    20 seconds
    Element Should Be Visible            ${TrainingRegisterAddPhase}
    Sleep    2 seconds

    #Input detials
    Wait Until Element Is Visible     ${TrainingRegisterBusinessUnitDPD}    30 seconds
    Click Element                     ${TrainingRegisterBusinessUnitDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible     ${TrainingRegisterBusinessUnitDPDAnglo}    20 seconds
    Click Element                     ${TrainingRegisterBusinessUnitDPDAnglo}
    Sleep    2 seconds
    Wait Until Element Is Visible     ${TrainingRegisterBusinessUnitDPDBulk}    20 seconds
    Click Element                     ${TrainingRegisterBusinessUnitDPDBulk}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${TrainingRegisterBusinessUnitDPDKumba}    20 seconds
    Click Element                      ${TrainingRegisterBusinessUnitDPDKumba}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${TrainingRegisterBusinessUnitDPDSishen}    20 seconds
    Click Element                      ${TrainingRegisterBusinessUnitDPDSishen}
    Sleep     2 seconds
    Wait Until Element Is Visible      ${TrainingCourseDPD}      20 seconds
    Click Element                      ${TrainingCourseDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible     ${TrainingCourseSelect1}    20 seconds
    Click Element                      ${TrainingCourseSelect1}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${TrainingCourseSelect2}    20 seconds
    Click Element                      ${TrainingCourseSelect2}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${TrainingCourseDescription}    20 seconds
    Element Should Be Visible           ${TrainingCourseDescription}
    Sleep    2 seconds

    #Start Date
    ${PlanCloseDate}                     Get Current Date    result_format=%d-%m-%Y
    Set Global Variable                  ${PlanCloseDate}
    Input Text                           ${TrainingStartDate}     ${PlanCloseDate}
    Sleep    3  seconds

    #End date
    ${ExpiryDate}                        Get Current Date    result_format=%d-%m-%Y         increment=+3 day
    Set Global Variable                  ${ExpiryDate}
    Input Text                           ${TrainingEndDate}     ${ExpiryDate}
    Sleep    2  seconds

     #Internal& External Instructor
    Wait Until Element Is Visible         ${TrainingInternal/ExternalDPD}    20 seconds
    Click Element                         ${TrainingInternal/ExternalDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible          ${TrainingSelectInternal}    20 seconds
    Click Element                          ${TrainingSelectInternal}
    Sleep    2 seconds

    #Cousre language
    Wait Until Element Is Visible         ${TrainingCourseLang}    20 seconds
    Click Element                         ${TrainingCourseLang}
    Input Text                            ${TrainingCourseLang}     English
    Sleep    2 seconds

    #InternalInstructor
    Wait Until Element Is Visible         ${TrainingInternalInstructorDPD}     20 seconds
    Click Element                         ${TrainingInternalInstructorDPD}
    Sleep    2 seconds
    #Wait Until Element Is Visible         ${TrainingInternalInstructorSelect}     20 seconds
    #Click Element                         ${TrainingInternalInstructorSelect}
    #Sleep    2 seconds
    Wait Until Element Is Visible         ${TrainingInternalInstructorInputSearch}     30    seconds
    Input Text                            ${TrainingInternalInstructorInputSearch}       A
    Press Keys                            ${TrainingInternalInstructorInputSearch}      ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible         ${TrainingInternalInstructorSelectDPD}    40 seconds
    Click Element                         ${TrainingInternalInstructorSelectDPD}
    Sleep   2 seconds

    #Click on link to project
    Wait Until Element Is Visible           ${TrainingRegisterlinktoProject}    20 seconds
    Click Element                           ${TrainingRegisterlinktoProject}
    Sleep    2 seconds

    #Project Select
    Wait Until Element Is Visible            ${TrainingRegisterProjectDPD}      20 seconds
    Click Element                            ${TrainingRegisterProjectDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible             ${TrainingRegisterProjectSelect}    20 seconds
    Click Element                            ${TrainingRegisterProjectSelect}
    Sleep    2 seconds
    Wait Until Element Is Visible           ${TrainingRegisterProjectDPD}    20 seconds
    Click Element                           ${TrainingRegisterProjectDPD}
    Sleep    2 seconds

    #Save Button
    Wait Until Element Is Visible           ${TrainingRegisterSaveBttn}    20 seconds
    Click Element                           ${TrainingRegisterSaveBttn}
    Sleep    2 seconds

    #Validate Edit phase and take training submoduletabs screenshots
    Wait Until Element Is Visible           ${TrainingRegisterEditPhase}     20 seconds
    Element Should Be Visible               ${TrainingRegisterEditPhase}
    Sleep    2 seconds
    Screenshot    ActionsTab

    Wait Until page does not contain       ${Loadingvariablepermis}       30 seconds

    #Actions Tab
    Wait Until Element Is Visible     ${ActionsTAB}     30    seconds
    Click Element                     ${ActionsTAB}
    Sleep    5 seconds



    #ActionsAdd
    Wait Until Element Is Visible     ${ActionsAddBttn}     40 seconds
    Click Element                     ${ActionsAddBttn}
    Sleep    2 seconds

    Wait Until page does not contain       ${Loadingvariablepermis}       30 seconds

    #ActionsTypeSelect
    Wait Until Element Is Visible     ${ActionsTaskTypeDPD}    30 seconds
    Click Element                     ${ActionsTaskTypeDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible     ${ActionsTaskTypeSelect}     30 seconds
    Click Element                     ${ActionsTaskTypeSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible     ${ActionsTypeofActionDPD}    20 seconds
    Click Element                     ${ActionsTypeofActionDPD}
    Sleep    2 seconds

    Wait Until Element Is Visible     ${ActionsTypeofactionsSelect}    20 seconds
    Click Element                     ${ActionsTypeofactionsSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible     ${ActionsDescription}    20 seconds
    Click Element                     ${ActionsDescription}
    Input Text                        ${ActionsDescription}      Autotest
    Sleep    2 seconds

    Wait Until Element Is Visible     ${ActionsEntityDPD}    20 seconds
    Click Element                     ${ActionsEntityDPD}
    Sleep    3 seconds
    Wait Until Element Is Visible      ${ActionsEntityExpandAnglo}    60 Seconds
    Click Element                      ${ActionsEntityExpandAnglo}
    Sleep  3 seconds
    Wait Until Element Is Visible      ${ActionsEntityExpandBulk}    50 seconds
    Click Element                      ${ActionsEntityExpandBulk}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${ActionsEntityExpandKumba}    50 seconds
    Click Element                      ${ActionsEntityExpandKumba}
    Sleep    2 seconds
    Wait Until Element iS Visible      ${ActionsEntityExpandSelect}    50 seconds
    Click Element                      ${ActionsEntityExpandSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible      ${ActionsRespPersonDPD}     40 seconds
    Click Element                      ${ActionsRespPersonDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${ActionsResPersonSearchInput}     40 seconds
    Input Text                          ${ActionsResPersonSearchInput}     anglo
    Press Keys                         ${ActionsResPersonSearchInput}      ENTER
    Sleep     2 seconds
    Wait Until Element Is Visible      ${ActionsRespersonSelect}    30 seconds
    Click Element                      ${ActionsRespersonSelect}
    Sleep    2 seconds

    Wait Until Element Is Visible      ${ActionsAgencyDPD}    30 seconds
    Click Element                      ${ActionsAgencyDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ActionsAgencySelect}    30 seconds
    Click Element                       ${ActionsAgencySelect}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${ActionsAgencyDPD}    30 seconds
    Click Element                      ${ActionsAgencyDPD}
    Sleep    2 seconds

    Wait Until Element Is Visible       ${ActionsTaskpriorityDPD}    30 seconds
    Click Element                       ${ActionsTaskpriorityDPD}
    Sleep    2 seconds
    Wait Until Element IS Visible       ${ActionsTaskPrioritySelect}    30 seconds
    Click Element                       ${ActionsTaskPrioritySelect}
    Sleep    2 seconds


    ${ExpiryDate}                        Get Current Date    result_format=%d-%m-%Y         increment=+3 day
    Set Global Variable                  ${ExpiryDate}
    Input Text                           ${ActionsDueDate}     ${ExpiryDate}
    Sleep    2  seconds

    Wait Until Element Is Visible      ${ActionsSAPWorkCheckBox}    20 seconds
    Click Element                     ${ActionsSAPWorkCheckBox}
    Screenshot    SAPMODULE
    Click Element                     ${ActionsSAPWorkCheckBox}     #Uncheck
    Sleep  2 seconds

    Wait Until Element Is Visible      ${ActionsReplicateActionsCheck}    30 seconds
    Click Element                      ${ActionsReplicateActionsCheck}
    Sleep    3 seconds

    Screenshot    Multiple Users

    Wait Until Element Is Visible      ${ActionsReplicateActionsCheck}    30 seconds
    Click Element                      ${ActionsReplicateActionsCheck}
    Sleep    3 seconds


    Wait Until Element Is Visible      ${ActionsRecurringDPD}     30 seconds
    Click Element                      ${ActionsRecurringDPD}
    Sleep    2 seconds
    Wait Until Element IS Visible       ${ActionsRecurringSelect}    30 seconds
    Click Element                       ${ActionsRecurringSelect}
    Sleep    2 seconds


    Wait Until Element Is Visible     ${ActionsSaveBttn}     30 seconds
    Click Element                     ${ActionsSaveBttn}
    Sleep    2 seconds
    ScreenShot      Record Saved




















