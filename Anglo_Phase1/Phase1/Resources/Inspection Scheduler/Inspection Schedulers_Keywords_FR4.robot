*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/InspectionSchedulers_var.robot
Resource  ../../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\ScreenShots\\Inspection Scheduler\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

#**********************  FR4-Capture Inspection Scheduler Recurrence************************
FR4-Edit Inspection Scheduler Recurrence
    Log To Console    Starting Capture Inspection Scheduler

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    #Click Inspection and Observation Management
    Wait Until Element Is Visible      ${InspectionandobservationXpath}    40 seconds
    Click Element                      ${InspectionandobservationXpath}
    Sleep     3 seconds

     #Click Inspection Scheduler
     Wait Until Element Is Visible    ${InspectionSchedulerbuttonXpath}    30 seconds
     Click Element                    ${InspectionSchedulerbuttonXpath}
     Sleep    3 seconds

     #Click addbutton
     Sleep    2 seconds
     Wait Until Element Is Visible    ${InspectionSchedulerSearchOptionsAddbttn}     20 seconds
     Click Element                    ${InspectionSchedulerSearchOptionsAddbttn}
     Sleep    2 seconds

     # Check on Process Flow
     Sleep    4 seconds
     Wait Until Element Is Visible         ${InspectionSchedulerProcessflow}    40 seconds
     Click Element                         ${InspectionSchedulerProcessflow}

     #validate process is on AddPhase
     Wait Until Element Is Visible       ${InspectionSchedulerValidateAddphase}    40 seconds
     Element Should Be Visible           ${InspectionSchedulerValidateAddphase}
     Sleep    3 seconds

     #Select Business unit
     Wait Until Element Is Visible    ${InspectionSchedulerBusinessUnitSelectIDDPD}     20 seconds
     Click Element                    ${InspectionSchedulerBusinessUnitSelectIDDPD}
     Sleep    3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBusinessUnitSelectDPDANGLo}      20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDANGLo}
     Sleep    2 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBusinessUnitSelectDPDBULK}      20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDBULK}
     Sleep    2 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBusinessUnitSelectDPDKumba}     20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDKumba}
     Sleep    3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBUsinessUnitSelectDPDSunshine}     20 seconds
     click Element                     ${InspectionSchedulerBUsinessUnitSelectDPDSunshine}
     Sleep    3 seconds


     # Select Functional location
     Wait Until Element Is Visible     ${InspectionSchedulerFunctionallocationSelectDPD}      20 seconds
     Click Element                     ${InspectionSchedulerFunctionallocationSelectDPD}
     Sleep    3 seconds
     Wait Until Element Is Visible      ${InspectionSchedulerFunctionallocationSelect}      60 seconds
     Click Element                      ${InspectionSchedulerFunctionallocationSelect}
     Sleep  3 seconds

     #Select any option besides Critical control monitoring type” for the Inspection type_MS
     Wait Until Element Is Visible     ${InspectionSchedulerInspectionTypeID}     20 seconds
     Click Element                     ${InspectionSchedulerInspectionTypeID}
     Sleep    2  Seconds
     Wait Until Element Is Visible     ${InspectionSchedulerInspectionTypeSelectID}     20 seconds
     Click Element                     ${InspectionSchedulerInspectionTypeSelectID}
     Sleep  3  Seconds

     #Select Checklist
     Sleep    2    seconds
     Wait Until Element Is Visible      ${InspectionSchedulerCheckListTobeDoneDPD}       20seconds
     Click Element                     ${InspectionSchedulerCheckListTobeDoneDPD}
     Sleep     2 Seconds
     Wait Until Element is Visible     ${InspectionSchedulerCheckListTobeDoneSelect}    20 seconds
     Click Element                     ${InspectionSchedulerCheckListTobeDoneSelect}
     Sleep    3 seconds
     Wait Until Element Is Visible      ${InspectionSchedulerCheckListTobeDoneDPD}     20seconds
     Click Element                     ${InspectionSchedulerCheckListTobeDoneDPD}
     Sleep    3 seconds

     #Input Name of Inspection
     Wait Until Element Is Visible      ${InspectionSchedulerNameofInspection}     20 seconds
     Input Text                         ${InspectionSchedulerNameofInspection}     Automation
     Sleep    2 seconds

     #Input Purpose
     Wait Until Element Is Visible     ${InspectionSchedulerPurpose}     20 seconds
     Input Text                        ${InspectionSchedulerPurpose}     Automation purpose
     Sleep  2 seconds

     #Save & Continue
     Sleep    2    seconds
     Wait Until Element Is Visible     ${InspectionSchedulerSave&Continue}     20 seconds
     Click Element                     ${InspectionSchedulerSave&Continue}
     Sleep    5    seconds
     Screenshot    Record Saved
     Screenshot    Active
     Sleep    2 seconds

     #Click on Add button On SubModule of Scheduler Recurrence
     Sleep    5 Seconds
     Wait Until Element Is Visible     ${InspectionSchedulerrecurrenceAddBttn}     30 seconds
     Click Element                     ${InspectionSchedulerrecurrenceAddBttn}
     Sleep    20 seconds


     #Click On process flow
     Wait Until Element Is Visible    ${InspectionSchedulerRecurrenceProcessflow}    40 seconds
     Click Element                    ${InspectionSchedulerRecurrenceProcessflow}
     Sleep    2 Seconds

     #Validate Add phase
     Wait Until Element Is Visible    ${InspectionSchedulerRecurrenceAddphaseenabled}    20 seconds
     Element Should Be Visible       ${InspectionSchedulerRecurrenceAddphaseenabled}
     Sleep   2  seconds
     Screenshot  Edit Phase

     #Input details
     Wait Until Element Is Visible     ${ISRecurrenceResponsiblepersonDPD}      20 seconds
     Click Element                     ${ISRecurrenceResponsiblepersonDPD}
     Sleep  3    seconds
     Wait Until Element Is Visible     ${ISRecurrenceResponsiblepersonDPDSearch}    30 seconds
     Input Text                        ${ISRecurrenceResponsiblepersonDPDSearch}     Admin
     Press Keys                        ${ISRecurrenceResponsiblepersonDPDSearch}     ENTER
     Sleep    3    seconds
     Wait Until Element Is Visible     ${ISRecurrenceResponsiblepersonSelect}     20 seconds
     Click Element                     ${ISRecurrenceResponsiblepersonSelect}
     Sleep   3    seconds
     Wait Until Element Is Visible      ${ISRecurrenceownerDPD}     20 seconds
     Click Element                      ${ISRecurrenceownerDPD}
     Sleep    3    seconds
     Wait until Element Is Visible      ${ISrecurrenceOwnerSearch}     20    seconds
     Input Text                         ${ISrecurrenceOwnerSearch}      Admin
     Press Keys                         ${ISrecurrenceOwnerSearch}      ENTER
     Sleep    2    seconds
     Wait Until Element Is Visible       ${ISRecurrenceOwnerSelect}     20    seconds
     Click Element                       ${ISRecurrenceOwnerSelect}
     Sleep    2    seconds
     Wait Until Element Is Visible      ${ISRecurrenceTeam}       20    Seconds
     Click Element                      ${ISRecurrenceTeam}
     Sleep    2    seconds
     Wait Until Element Is Visible     ${ISRecurrenceInputSearch}     20    Seconds
     Input Text                        ${ISRecurrenceInputSearch}     Admin
     Press Keys                        ${ISRecurrenceInputSearch}     ENTER
     Sleep    8  Seconds
     Wait Until Element Is Visible     ${ISRecurrenceTeamSelect}       30    Seconds
     Click Element                     ${ISRecurrenceTeamSelect}
     Sleep  5 Seconds
     Wait Until Element Is Visible      ${ISRecurrenceTeam}       20    Seconds
     Click Element                      ${ISRecurrenceTeam}
     Sleep    2    seconds

     #RecurrenceDateStart
     ${PlanCloseDate}                    Get Current Date  result_format=%d-%m-%Y
     Set Global Variable                  ${PlanCloseDate}
     Input Text                           ${ISRecurrenceStartDateInputselect}     ${PlanCloseDate}
     Sleep    2  seconds

     #Recurrence Frequency_MS
     Wait Until Element Is Visible        ${ISRecurrenceFrequenceyDPD}    30    seconds
     Click Element                        ${ISRecurrenceFrequenceyDPD}
     Sleep    2  seconds
     Wait Until Element Is Visible        ${ISRecurrenceFrequencySelectOnceOff}    20    seconds
     Click Element                        ${ISRecurrenceFrequencySelectOnceOff}
     Sleep    2  Seconds
     Wait Until Element Is Visible        ${ISRecurrenceSchedulerSaveBttn}    20    seconds
     Click Element                        ${ISRecurrenceSchedulerSaveBttn}
     Sleep    5    seconds
     screenshot    recordsaved

    #LinKDocument_Optional Scenario
     Wait Until Element Is Visible       ${ISRecurrenceSchedulerlinkdoc}    10 seconds
     Click Element                       ${ISRecurrenceSchedulerlinkdoc}
     Sleep    5 seconds
     # change to pop-up frame
     Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible             ${SupportingDocPopName}
    #Enter URL
    Wait Until Element Is Visible         ${ISRecurrenceSchedulerURLLINK}    30 seconds
    Click Element                         ${ISRecurrenceSchedulerURLLINK}
    Clear Element Text                    ${ISRecurrenceSchedulerURLLINK}
    Input Text                            ${ISRecurrenceSchedulerURLLINK}    https://www.isometrix.com/
    Sleep    2   seconds
    # Enter Title
    Wait Until Element Is Visible        ${ISRecurrenceSchedulerTittleDoc}     20  Seconds
    Click Element                        ${ISRecurrenceSchedulerTittleDoc}
    Input Text                           ${ISRecurrenceSchedulerTittleDoc}      Autotest
    Sleep    2 seconds
    Wait Until Element Is Visible         ${ISRecurrenceSchedulerDOCAddbttn}    10 seconds
    Click Element                         ${ISRecurrenceSchedulerDOCAddbttn}
    Sleep    2 seconds
    # Change to main frame
     Wait Until Element Is Visible        ${iFrame}    40 seconds
     Select Frame                         ${iFrame}
     Sleep     3 seconds
     Wait Until Element Is Visible         ${ISSaveSupportingDocumentsbttn}     20 Seconds
     Click Element                         ${ISSaveSupportingDocumentsbttn}
     Sleep    2 seconds

     #Checking Saving record_MS
     Wait Until Element IS Visible        ${ISRecurrenceRecordvalidation}     20   Seconds
     Element Should Be Visible            ${ISRecurrenceRecordvalidation}
     Sleep  2 seconds
     ScreenShot  ScheduleddateSubModule

     #Validate Final phase
     Wait Until Element Is Visible    ${InspectionSchedulerRecurrenceFinalphaseenabled}    20 seconds
     Element Should Be Visible        ${InspectionSchedulerRecurrenceFinalphaseenabled}
     Sleep   2  seconds
     Screenshot  Final Phase

#****UC INS 04-01: Edit Inspection Scheduler Recurrence MS **********
     #Edit Input details
     Sleep    3 seconds
     Wait Until Element Is Visible     ${ISRecurrenceResponsiblepersonDPD}      20 seconds
     Click Element                     ${ISRecurrenceResponsiblepersonDPD}
     Sleep  3    seconds
     Wait Until Element Is Visible     ${ISRecurrenceResponsiblepersonDPDSearch}    30 seconds
     Input Text                        ${ISRecurrenceResponsiblepersonDPDSearch}     Admin
     Press Keys                        ${ISRecurrenceResponsiblepersonDPDSearch}     ENTER
     Sleep    3    seconds
     Wait Until Element Is Visible     ${ISRecurrenceEditInputResponsiblepersonselect}     20 seconds
     Click Element                     ${ISRecurrenceEditInputResponsiblepersonselect}
     Sleep   3    seconds
     ScreenShot    ResponsiblepersonSelect

#*****UC INS 04-02: Mark an Inspection Scheduler Recurrence as inactive_MS*************
     #Edit Active/Inactive Status
     Wait Until Element Is Visible    ${ISRecurrenceEditActive/InactiveDPD}    20 seconds
     Click Element                    ${ISRecurrenceEditActive/InactiveDPD}
     Sleep    2 seconds
     Wait Until Element IS Visible     ${ISrecurrenceSchedulerInactiveSelect}    10 seconds
     Click Element                     ${ISrecurrenceSchedulerInactiveSelect}
     Sleep    2 seconds
     Input Text                        ${ISRecurrenceSchedulerReason}    Automationregressiontest
     Sleep    2    seconds

      #Save Record
     Wait Until Element Is Visible       ${ISRecurrenceSchedulerSaveBttn}    20    seconds
     Click Element                       ${ISRecurrenceSchedulerSaveBttn}
     Sleep    5    seconds
     Screenshot   Record is saved and no longer create new inspection records






















