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
#************************************FR1-Capture Inspection Scheduler MS*******************
FR1-Capture Inspection Scheduler
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


     #Select any  Critical control monitoring type??? for the Inspection type_AS1
     Wait Until Element Is Visible      ${InspectionSchedulerInspectionTypeID}     30 seconds
     Click Element                      ${InspectionSchedulerInspectionTypeID}
     Sleep    3 seconds
     Wait Until Element Is Visible      ${InspectionSchedulerInspectiontypeCM}      20 seconds
     Click Element                       ${InspectionSchedulerInspectiontypeCM}
     Sleep  3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerControls}     20 seconds
     Element Should be Visible         ${InspectionSchedulerControls}
     Sleep    3 seconds
     Screenshot    Controls

     #Select any option besides Critical control monitoring type??? for the Inspection type_MS
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
     Wait Until Element Is Visible    ${InspectionSchedulerSave&Continue}     20 seconds
     Click Element                    ${InspectionSchedulerSave&Continue}
     Sleep    5    seconds
     Screenshot    Record Saved
     Screenshot    Active

#*******************************FR1-Capture Inspection Scheduler AS**********************************
FR1-Capture Inspection Scheduler_AS
    Log To Console    Starting Capture Inspection Scheduler

    #Wait Until Element Is Visible        ${iFrame}    40 seconds
    #Select Frame                         ${iFrame}
    #Sleep     3 seconds

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
     Wait Until Element Is visible    ${InspectionSchedulerSearchOptionsAddbttn}     20 seconds
     Click Element                    ${InspectionSchedulerSearchOptionsAddbttn}
     Sleep    2 seconds

     # Check on Process Flow
     Sleep    4 seconds
     Wait Until Element Is Visible         ${InspectionSchedulerProcessflow}    40 seconds
     Click Element                         ${InspectionSchedulerProcessflow}

     #validate process is on AddPhase
     Sleep  1 seconds
     Wait Until Element Is Visible       ${InspectionSchedulerValidateAddphase}    40 seconds
     Element Should Be Visible           ${InspectionSchedulerValidateAddphase}
     Sleep    3 seconds

     #Select Business unit
     Wait Until Element Is Visible    ${InspectionSchedulerBusinessUnitSelectIDDPD}     20 seconds
     Click Element                    ${InspectionSchedulerBusinessUnitSelectIDDPD}
     Sleep    3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBusinessUnitSelectDPDANGLo}     20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDANGLo}
     Sleep    2 seconds
     Wait Until Element Is visible     ${InspectionSchedulerBusinessUnitSelectDPDBULK}     20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDBULK}
     Sleep    2seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBusinessUnitSelectDPDKumba}    20 seconds
     Click Element                     ${InspectionSchedulerBusinessUnitSelectDPDKumba}
     Sleep    3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerBUsinessUnitSelectDPDSunshine}    20 seconds
     click Element                     ${InspectionSchedulerBUsinessUnitSelectDPDSunshine}
     Sleep    3 seconds

     # Select Functional location
     Wait Until Element Is Visible     ${InspectionSchedulerFunctionallocationSelectDPD}     20 seconds
     Click Element                     ${InspectionSchedulerFunctionallocationSelectDPD}
     Sleep    3 seconds
     Wait Until Element Is Visible      ${InspectionSchedulerFunctionallocationSelect}      60 seconds
     Click Element                      ${InspectionSchedulerFunctionallocationSelect}
     Sleep  3 seconds

     #Select any  Critical control monitoring type??? for the Inspection type
     Wait Until Element Is Visible      ${InspectionSchedulerInspectionTypeID}     30 seconds
     Click Element                      ${InspectionSchedulerInspectionTypeID}
     Sleep    3 seconds
     Wait Until Element Is Visible      ${InspectionSchedulerInspectiontypeCM}      20 seconds
     Click Element                       ${InspectionSchedulerInspectiontypeCM}
     Sleep  3 seconds
     Wait Until Element Is Visible     ${InspectionSchedulerControls}     20 seconds
     Element Should be Visible         ${InspectionSchedulerControls}
     Sleep    3 seconds
     Screenshot    Controls

     #Select Checklist
     Wait Until Element Is Visible      ${InspectionSchedulerCheckListTobeDoneDPD}     20seconds
     Click Element                     ${InspectionSchedulerCheckListTobeDoneDPD}
     Sleep    3 seconds
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
     Wait Until Element Is Visible      ${InspectionSchedulerPurpose}     20 seconds
     Input Text                         ${InspectionSchedulerPurpose}     Automation purpose
     Sleep  2 seconds

     #Save & Continue
     Sleep 2    seconds
     Wait Until Element Is visible      ${InspectionSchedulerSave&Continue}     20 seconds
     Click Element                      ${InspectionSchedulerSave&Continue}
     Sleep 5    seconds































