*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Schedule Emergency Drill.robot
Resource    ../../Repository/Emergency Drill Findings.robot
Resource    ../../Repository/View Emergency Drill Findings.robot

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
    CLICK ELEMENT                    ${Type}
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

FR4- Capture Emergency Drill Findings
    scroll element into view                 ${FindingsAddButton}
    sleep         3   seconds
    click element                       ${FindingsAddButton}
    sleep         5   sleep
    # Check on Process Flow
    Wait Until Element Is Visible       ${FindingsProcessFlow}  40 seconds
    click element       ${FindingsProcessFlow}
    sleep    3  seconds
    #validate process is on AddPhase
    Wait Until Element Is Visible         ${FindingsAddFlow}    40 seconds
    Element Should Be Visible             ${FindingsAddFlow}
    screenshot            Emergency Drills Findings in add phase
    input text               ${FindingDescriptionXpath}          test
    click element           ${FindingOwnerXpath}
    sleep               3   seconds
    input text           ${FindingOwnerDrpDwnXpath}        test
    press keys           ${FindingOwnerDrpDwnXpath}        ENTER
    click element         ${FindinOwnerDrpDwnValue}
    sleep  3  seconds
    click element         ${FindingClassificationXpath}
    sleep  3  seconds
    click element         ${FndingClassificationDrpDwn}
    sleep  3  seconds
    click element          ${FindingsSaveButton}
    sleep   5   seconds
    #validate process is on EditPhase
    Wait Until Element Is Visible         ${FindingsEditFlow}    40 seconds
    Element Should Be Visible             ${FindingsEditFlow}
    screenshot         Emergency Drills Findings in Edit phase
FR5- Capture Emergency Drill Finding Actions
     scroll element into view             ${EmergencyDrillFindActAddXpath}
     sleep  3  seconds
     click element              ${EmergencyDrillFindActAddXpath}
     sleep    3  seconds
     click element              ${IndividualFactors}
     sleep    3  seconds
     click element             ${IndividualFactValue}
     sleep      3 seconds
     click element             ${IndividualFactBackButton}
     input text                ${IndividualFactDescription}        test
     sleep       3 seconds
     click element            ${WorkplaceFactors}
     sleep         3 seconds
     click element            ${Workplace}
     click element            ${IndividualFactBackButton}
     input text               ${WorkplaceFactDescription}       test
     click element            ${OrganizationsFact}
     sleep      3 seconds
     click element      ${OrganizationsFactValue}
     click element        ${IndividualFactBackButton}
     sleep      3 seconds
     input text                  ${OrganizationsDescription}       test
     click element       ${FindingsSaveButton}
     sleep      5 seconds
     scroll element into view             ${EmergencyDrillFindActAddXpath}
     CLICK ELEMENT                        ${EmergencyDrillFindActAddXpath}
     sleep      5   seconds
     # Check on Process Flow
     Wait Until Element Is Visible       ${ActionprocessFlow}  40 seconds
     click element       ${ActionprocessFlow}
     sleep    3  seconds
      #validate process is on AddPhase
      Wait Until Element Is Visible         ${AddAction}    40 seconds
      Element Should Be Visible             ${AddAction}
      screenshot    Emergency Drills Finding Actions records in the Add Phase
      click element       ${ActionType}
      sleep      5  seconds
      CLICK ELEMENT        ${ActionTypeValue}
      INPUT TEXT            ${ActionDescription}     Test
      CLICK ELEMENT         ${Entity}
      Sleep    3 seconds
      Wait Until Element Is Visible        ${EntityBUDrpValueXpath}    40 seconds
      Sleep    3 seconds
      Click Element                       ${EntityBUDrpValueXpath}
      Wait Until Element Is Visible       ${EntityBUDrpValueBulkXpath}            40 seconds
      Sleep    3 seconds
      Click Element                      ${EntityBUDrpValueBulkXpath}
      Wait Until Element Is Visible       ${EntityBUDrpValueKumbaXpath}            40 seconds
      Sleep    3 seconds
      Click Element                       ${EntityBUDrpValueKumbaXpath}
      Wait Until Element Is Visible       ${EntityBUDrpValueSishenXpath}            40 seconds
      Sleep    3 seconds
      Click Element                       ${EntityBUDrpValueSishenXpath}
      CLICK ELEMENT                       ${Responsibleperson}
      SLEEP   3  seconds
      INPUT TEXT                          ${ResponsiblePersionDrpDown}              Test
      PRESS KEYS                           ${ResponsiblePersionDrpDown}            ENTER
      SLEEP     3  seconds
      CLICK ELEMENT                        ${ResponsiblePersonDrpDownValue}
      # Select Action Due Date
      Click Element                        ${CalenderButton}
      Sleep    2 seconds
      ${ActionDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
       Set Global Variable                 ${ActionDate}
       Wait Until Element Is Visible       ${CalenderButton}    10 seconds
       Click Element                       ${CalenderButton}
       Input Text                          ${ActionDuedate}     ${ActionDate}
       CLICK ELEMENT                           ${RecuringAction}
       SLEEP  3 seconds
       CLICK ELEMENT            ${RecuringNo}
       CLICK ELEMENT            ${DrillActionSaveBtn}
       #validate process is on Initiated Phase
       Wait Until Element Is Visible         ${InitiatedAction}    40 seconds
       Element Should Be Visible             ${InitiatedAction}
       screenshot         Emergency Drills Findings in initiatedphase

