*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Schedule Emergency Drill.robot
Resource    ../../Repository/Cancel Emergency Drill.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Emergency Drills\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredSchedule Emergency Drill.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      10 seconds

#FR1- Schedule Emergency Drill
      Log To Console    FR1- Schedule Emergency Drill
    # Click AngloMaintenanceButton
    Mouse over                          ${AngloMainMenuXpath}
    Wait Until Page Contains Element       ${AngloandingPage}    20 seconds
    Click Element                          ${AngloandingPage}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3    seconds
    CLICK ELEMENT     ${EmergencyDrillXpath}
    SLEEP     5   Seconds
    SCREENSHOT    Emergency Drills search page opens
    CLICK ELEMENT     ${EmergencyAddButton}
    SLEEP     5   Seconds
    # Check on Process Flow
    Wait Until Element Is Visible       ${ProcessFlow}  40 seconds
    click element       ${ProcessFlow}
    sleep    3  seconds
    #validate process is on AddPhase
    Wait Until Element Is Visible         ${PlanningPhase}    40 seconds
    Element Should Be Visible             ${PlanningPhase}
    screenshot            Emergency Drills add page in the Planning phase
    SCROLL ELEMENT INTO VIEW               ${SupportingDocXpath}
    SCREENSHOT          Supporting Documents tab shows at bottom of page
    CLICK ELEMENT       ${BusinessUnitDrpDown}
    Wait Until Element Is Visible        ${FunctionalBUDrpValueXpath}    40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueBulkXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${FunctionalBUDrpValueBulkXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueSishenXpath}
    SLEEP     3  seconds
    CLICK ELEMENT                      ${FunctionalLocation}
    SLEEP     30  seconds
    CLICK ELEMENT                       ${FunLocation}
    SLEEP      3   seconds
    CLICK ELEMENT                       ${ResponsibleSuperviser}
    SLEEP      3  seconds
    INPUT TEXT          ${ResponsibleSupviserInputValue}                              Test
    Press Keys         ${ResponsibleSupviserInputValue}                                ENTER
    SLEEP     3 seconds
    CLICK ELEMENT                ${ResponsibleSupviserValue}
    SLEEP     3   seconds
    CLICK ELEMENT                 ${EmergencyCoordinator}
    SLEEP     3   seconds
    INPUT TEXT                  ${EmergencyCoordinValue}            Test
    Press Keys                    ${EmergencyCoordinValue}          ENTER
    CLICK ELEMENT                ${EmergencyCoordinatordrpDwn}
    # Select Emergency Drill date
    ${CurrentDate}                  Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${EmergencyDrillDate}        ${CurrentDate}
    CLICK ELEMENT                 ${Type}
    SLEEP      5  seconds
    CLICK ELEMENT               ${DrillType}
    CLICK ELEMENT                ${TypeDropDownClick}
    CLICK ELEMENT                ${SaveButton}
    SLEEP     10  seconds
    # Check on Process Flow
    #validate process is on AddPhase
    Wait Until Element Is Visible         ${ProcessFlowInProgress}    40 seconds
    Element Should Be Visible             ${ProcessFlowInProgress}
    screenshot            Emergency Drills add page in the In Progress phase and status also chaged to in progress
    SCROLL ELEMENT INTO VIEW                 ${SupportingDocXpath}
    SCREENSHOT           Findings,Finding Actions and Previous findings for matching type and business unit tabs are displayed
FR3- Cancel Emergency Drill
     scroll element into view   ${CancelDrillXpath}
     sleep       3 seconds
     click element            ${CancelDrillXpath}
     sleep       3 seconds
     click element             ${CancelDrillYesXpath}
     click element             ${SaveButton}
     sleep       5 seconds
     # Check on Process Flow
     #validate process is on CancellPhase
     Wait Until Element Is Visible         ${CancelPhase}    40 seconds
     Element Should Be Visible             ${CancelPhase}
     screenshot         Record is saved and moves to the Completed phase
     screenshot         Findings Finding Actions Previous findings for matching type and business unit are hidden
     scroll element into view      ${Status}
     screenshot           Status defaults to Cancelled
     scroll element into view       ${EmergencyDateCompleted}
     screenshot           Cancelled by field is read only and automatically populated with the logged in user
     screenshot           Date cancelled is displayed and automatically populated with current date
