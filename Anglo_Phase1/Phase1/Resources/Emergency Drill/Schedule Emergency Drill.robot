*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Schedule Emergency Drill.robot


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

FR1- Schedule Emergency Drill
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
        #Emergency Drill EMAIL
   Open Browser                            ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    #Sign In Button
    Click Element                           ${SignInBtn}
    Wait Until Element Is Visible           ${EmailField}               20 seconds
    Input Text                              ${EmailField}               ${outlookusername}
    Wait Until Element Is Visible           ${EmailNext}                20 seconds
    Click Element                           ${EmailNext}
    Wait Until Element Is Visible           ${EmailPasswordField}       20 seconds
    Input Text                              ${EmailPasswordField}       ${outlookpassword}
    Wait Until Element Is Visible           ${EmailSignInBtn}           20 seconds
    Click Element                           ${EmailSignInBtn}
    Screenshot      Office Emails
    #Outlook Folder
    Wait Until Element Is Visible           ${Outlook}                  20 seconds
    Click Element                           ${Outlook}
    Screenshot      Outlook Folder
    sleep       15
    #Switch to Tab
    Switch Window    Mail - Sushmitha Ravella - Outlook
    Screenshot      Outlook Mail Folder
    sleep       30
    Wait Until Element Is Visible           ${EmergencyDrillSubject}          60 seconds
    Click Element                           ${EmergencyDrillSubject}
    Screenshot      Suggestion
    #Link Back to Record
    Click Element                           ${EmailLinkBacktoRecord}
    sleep       10
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Screenshot      IsoMetrix Tab Opened
    sleep       10
    Wait Until Element Is Enabled           ${IsoMetrixSignInXpath}           60 seconds
    Click Element                           ${IsoMetrixSignInXpath}
    Wait Until Element Is Visible           ${Usernameid}
    Input Text                              ${Usernameid}    ${Username Value}
    Input Text                              ${Passwordid}    ${Password Value}
    Click Element                           ${SubmitButtonid}
    # Check on Process Flow
    Sleep     40 seconds
        Select Frame                            ${iFrame}
    Wait Until Element Is Visible        ${ProcessFlow}   40 seconds
     click element                        ${ProcessFlow}
     Sleep     3 seconds
     Wait Until Element Is Visible         ${ProcessFlowInProgress}    40 seconds
   Element Should Be Visible                 ${ProcessFlowInProgress}
   Screenshot       EmergencYy Drill in Progress
   SCROLL ELEMENT INTO VIEW                ${DrillCompletedWithNoFindings}
   SCREENSHOT                  Drill completed with no findings and Cancel the drill fields are displayed and automatically populated to No

    # Click Supporting Documents Tab
  WAIT UNTIL ELEMENT IS VISIBLE                      ${SupportingDocXpath}                      40 seconds
  Click Element                                      ${SupportingDocXpath}
#Click Supporting Document Link
  Wait Until element Is visible                               ${SupportingDocLinkDoc}      40 seconds
   Click Element                                               ${SupportingDocLinkDoc}
    Sleep    10 seconds
# change to pop-up frame
  Unselect frame

# validate pop up  name
  Sleep     10 seconds
  Element Should Be Visible            ${SupportingDocAddLink}                                 40 seconds

#Enter URL
  Click Element                       ${SupportingDocAddLink}
  Clear Element Text                  ${SupportingDocAddLink}
  Input Text                          ${SupportingDocAddLink}        https://www.isometrix.com/
  Sleep     10 seconds

# Enter Title
  Click Element                        ${SupportingDocAddTitle}
  Input Text                          ${SupportingDocAddTitle}             AutoTest

# Add Link to Document Button
  Wait Until Element Is Visible       ${SupportingDocAddBtn}                10 seconds
  Click Element                        ${SupportingDocAddBtn}
  Sleep     3 seconds
  Select Frame                            ${iFrame}
  Wait Until Element Is Visible       ${SupportingDocSave}                40 seconds
  Click Element                       ${SupportingDocSave}
  sleep       5  seconds

FR2- Complete Emergency Drill with no Findings
        click element            ${DrillCompletedWithNoFinding}
        sleep       3 seconds
        click element             ${DrillCompleteWithYes}
        click element             ${SaveButton}
        sleep       5 seconds
        # Check on Process Flow
         #validate process is on Complete Phase
  Wait Until Element Is Visible         ${WorkflowCompleted}    40 seconds
   Element Should Be Visible             ${WorkflowCompleted}
   screenshot         Record is saved and moves to the Completed phase
   screenshot         Findings Finding Actions Previous findings for matching type and business unit are hidden
   scroll element into view      ${Status}
   screenshot           Status defaults to Completed
   scroll element into view     ${DateCompleted}
   screenshot   Completed by field is displayed and is automatically populated with the logged in user
   screenshot  Date completed is displayed and automatically populated with current date
