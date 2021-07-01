*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Hygiene_Monitoring_vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\HygieneMonitoring\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered Hygiene_Monitoring_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Set up Hygiene Monitoring
    Log To Console    Starting FR1 - Set up Hygiene Monitoring

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneButton}
    Click Element                       ${HygieneButton}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneMonitoringButton}
    Click Element                       ${HygieneMonitoringButton}
    Sleep     3 seconds
    Screenshot      Search page of Hygiene Monitoring module opens

    # Click on Add Button
    Wait Until Element Is Visible       ${HygieneMonitoringAddButton}
    Click Element                       ${HygieneMonitoringAddButton}
    Sleep     3 seconds

#   # Start Date
#    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
#    Set Global Variable             ${CurrentDate}
#    Input Text                      ${MSDSDate}        ${CurrentDate}

     #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
    Click Element                       ${ProcessflowButton}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${ProcessflowAddPhase}
    Sleep    5 seconds
    Screenshot      Hygiene Monitoring add page opens in the Add Phase

    #Capture Business Unit
    Wait Until Element Is Visible       ${BusinessUnitDropdown}    10 seconds
    Click Element                       ${BusinessUnitDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BUAAGOption}    10 seconds
    Click Element                       ${BUAAGOption}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BUBCOOption}    10 seconds
    Click Element                       ${BUBCOOption}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BUKOption}    10 seconds
    Click Element                       ${BUKOption}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BUSMOption}    10 seconds
    Click Element                       ${BUSMOption}
    Sleep    5 seconds

    #Capture GeographicLocation
    Wait Until Element Is Visible       ${GeographicLocationDropdown}    10 seconds
    Click Element                       ${GeographicLocationDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${SouthAfricaDaimondButton}    10 seconds
    Click Element                       ${SouthAfricaDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${GautengDaimondButton}    10 seconds
    Click Element                       ${GautengDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${CenturionDaimondButton}    10 seconds
    Click Element                       ${CenturionDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${KIOHeadOfficeSelection}    10 seconds
    Click Element                       ${KIOHeadOfficeSelection}
    Sleep    1 seconds

    #Capture ResponsiblePersonDropdown

    Click Element                        ${ResponsiblePersonDropdown}
    Sleep    10 seconds
    Input text                           ${ResponsiblePersonSearchbox}    admin
    Press Keys                           ${ResponsiblePersonSearchbox}    ENTER
    Wait Until Element Is Visible        ${AdministratorSelection}               10 seconds
    Click Element                        ${AdministratorSelection}

    #Capture MonitoredHEGSEGDropdown
    Wait Until Element Is Visible       ${MonitoredHEGSEGDropdown}    10 seconds
    Click Element                       ${MonitoredHEGSEGDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${MHEGSEGSelection}    10 seconds
    Click Element                       ${MHEGSEGSelection}
    Sleep    1 seconds
    #AlternateScenario:1  Do not select “Person” for Type of monitoring
    #No fields are triggered

    #Capture TimeOfMonitoringDropdown
    Wait Until Element Is Visible       ${TimeOfMonitoringDropdown}    10 seconds
    Click Element                       ${TimeOfMonitoringDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${AreaSelection}    40 seconds
    Click Element                       ${AreaSelection}
    Sleep    5 seconds
    Screenshot      No fields are triggered

    #Capture TimeOfMonitoringDropdown
    Wait Until Element Is Visible       ${TimeOfMonitoringDropdown}    20 seconds
    Click Element                       ${TimeOfMonitoringDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${PersonSelection}    20 seconds
    Click Element                       ${PersonSelection}
    Sleep    1 seconds

    #AlternateScenario:2
    #Capture SamplingTypeDropdown
    Wait Until Element Is Visible       ${SamplingTypeDropdown}    10 seconds
    Click Element                       ${SamplingTypeDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${ManualSelection}    10 seconds
    Click Element                       ${ManualSelection}
    Sleep    5 seconds
    Screenshot      No fields are triggered

    Wait Until Element Is Visible       ${SamplingTypeDropdown}    10 seconds
    Click Element                       ${SamplingTypeDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${SystemGenaratedSelection}    10 seconds
    Click Element                       ${SystemGenaratedSelection}
    Sleep    1 seconds

    #Capture SchedulingTypeDropdown
    Wait Until Element Is Visible       ${SchedulingTypeDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${SchedulingTypeDropdown}
    Wait Until Element Is Visible       ${MultipleSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${MultipleSelection}

     #Capture HazmatClass
    Wait Until Element Is Visible       ${MonitoringFrequencyDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${MonitoringFrequencyDropdown}
    Wait Until Element Is Visible       ${DailySelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${DailySelection}

    #Capture OccupationalExposureSampletimeperion

    Wait Until Element Is Visible       ${OESTPTimefield}    10 seconds
    Sleep    1 seconds
    Click Element                       ${OESTPTimefield}

    #Capture ScheduleEvery
    Wait Until Element Is Visible       ${ScheduleEvery}    10 seconds
    Input Text                          ${ScheduleEvery}        10

    #Capture StakeHolderClassificationDropdown
    Wait Until Element Is Visible       ${StakeHolderClassificationDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${StakeHolderClassificationDropdown}
    Wait Until Element Is Visible       ${ContractorSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${ContractorSelection}
    Wait Until Element Is Visible       ${StakeHolderClassificationDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${StakeHolderClassificationDropdown}

    #Capture SamplingMethodDropdown
    Wait Until Element Is Visible       ${SamplingMethodDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${SamplingMethodDropdown}
    Wait Until Element Is Visible       ${HEGSEGSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${HEGSEGSelection}

    #Capture MonitoringReferenceTextbox
    Wait Until Element Is Visible       ${SampleSizeTextbox}    10 seconds
    Input Text                          ${SampleSizeTextbox}        10

    #Capture SampleSizePercentageDropDown
    Wait Until Element Is Visible       ${SampleSizePercentageDropDown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${SampleSizePercentageDropDown}
    Wait Until Element Is Visible       ${SampleSizeSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${SampleSizeSelection}

    #Capture MonitoringReferenceTextbox
    Wait Until Element Is Visible       ${MonitoringReferenceTextbox}    10 seconds
    Input Text                          ${MonitoringReferenceTextbox}        you143

    #Capture ${MonitoringStarDate}
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${MonitoringStarDate}        ${CurrentDate}

    #Capture MonitoringEndDate
    Click Element                        ${MonitoringEndDate}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${MonitoringEndDate}    40 seconds
    Click Element                       ${MonitoringEndDate}
    Input Text                          ${MonitoringEndDateSelection}     ${PlanCloseDate}

    #Capture SampleSizePercentageDropDown
    Wait Until Element Is Visible       ${ShiftDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${ShiftDropdown}
    Wait Until Element Is Visible       ${ShiftSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${ShiftSelection}

   #Clck on Save button
    Wait Until Element Is Visible       ${SaveButtonXpath}    20 seconds
    Click Element                       ${SaveButtonXpath}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhase}    50 seconds
    Element Should Be Visible           ${ProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Scheduled Phase Monitoring Results Findings and Executive Summary panels are also displayed

    #Email Notification
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
    Switch Window    Mail - Bala Sivarathri - Outlook
    #System Mail folder
    Wait Until Element Is Visible           ${SystemMailFolder}         20 seconds
    sleep       5
    Click Element                           ${SystemMailFolder}
    Screenshot      Outlook SystemMail Folder
    #StakeIndividual - Logged Notification
    sleep       3
    Wait Until Element Is Visible           ${HygieneMonitoringAddedSubject}          60 seconds
    Click Element                           ${HygieneMonitoringAddedSubject}
    Screenshot      Hygiene Monitoring Group Added Email Selection
    #Link Back to Record
    Click Element                           ${EmailLinkBacktoRecord}
    sleep       5
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Screenshot      IsoMetrix Tab Opened
    Wait Until Element Is Enabled           ${IsoMetrixSignInXpath}           60 seconds
    Click Element                           ${IsoMetrixSignInXpath}
    Wait Until Element Is Visible           ${Usernameid}
    Input Text                              ${Usernameid}    ${Username Value}
    Input Text                              ${Passwordid}    ${Password Value}
    Click Element                           ${SubmitButtonid}
    #Wait for Hygiene Monitoring Record
    sleep       20
    Select Frame                            ${iFrame}
    Wait Until Element Is Enabled           ${ProcessflowButton}           60 seconds
    Click Element                           ${ProcessflowButton}
    Wait Until Page Contains Element        ${ProcessflowEditPhase}
    Screenshot      HygieneMonitoring Group Record Opened

FR2 - Add Chemical Register Actions
    Log To Console    Starting FR2 - Add Chemical Register Actions

    # Click on Attendees Tab
    Wait Until Element Is Visible       ${AttendeesTabXpath}    40 seconds
    Click Element                       ${AttendeesTabXpath}
    Sleep    10 seconds
    Screenshot    Default attendance status field is displayed and defaulted to Present


    # Click on Add Button
    Wait Until Element Is Visible        ${AAddButton}    10 seconds
    Click Element                        ${AAddButton}

    # Click Name DropDown
    Wait Until Element Is Visible        ${NameXpath}    10 seconds
    Click Element                        ${NameXpath}
    Sleep    2 seconds
    #Enter a in selection dropdown
    Click Element                        ${NameSearchXpath}
    Sleep    2 seconds
    Input text                           ${NameSearchXpath}    AARON COLIN
    Press Keys                           ${NameSearchXpath}    ENTER
    Wait Until Element Is Visible        ${NameSelectOptionXpath}               40 seconds
    Click Element                        ${NameSelectOptionXpath}

    # Click on Save button
    Wait Until Element Is Visible        ${SaveButtonXpath}    10 seconds
    Click Element                        ${SaveButtonXpath}
    Sleep    10 seconds


    # Click on Inline Edit Button
    Wait Until Element Is Visible        ${InlineEditButtonXpath}    10 seconds
    Click Element                        ${InlineEditButtonXpath}
    Sleep    10 seconds

    # Click on Add Button
    Wait Until Element Is Visible        ${AAddButton}    10 seconds
    Click Element                        ${AAddButton}

    #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButtonXpath1}    20 seconds
    Click Element                       ${ProcessflowButtonXpath1}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhaseXpath1}    20 seconds
    Element Should Be Visible           ${ProcessflowAddPhaseXpath1}
    Sleep    5 seconds
    Screenshot    A new row is displayed in the Add phase Email address and Attendee’s business unit fields are rea

    # Click Name DropDown
    Wait Until Element Is Visible        ${NameXpath}    10 seconds
    Click Element                        ${NameXpath}
    Sleep    5 seconds
    #Enter a in selection dropdown
    Click Element                        ${NameSearchXpath}
    Sleep    10 seconds
    Input text                           ${NameSearchXpath}    AARON COLIN
    Press Keys                           ${NameSearchXpath}    ENTER
    Wait Until Element Is Visible        ${NameSelectOptionXpath}               40 seconds
    Click Element                        ${NameSelectOptionXpath}

    # Click on Save button
    Wait Until Element Is Visible        ${SaveButtonXpath1}    10 seconds
    Click Element                        ${SaveButtonXpath1}

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase

    # Click on Close button
    Wait Until Element Is Visible        ${AtCloseButtonXpath}    10 seconds
    Click Element                        ${AtCloseButtonXpath}
    Sleep    5 seconds

FR3 - Capture Meeting Agenda Template
    Log To Console    Starting FR3 - Capture Meeting Agenda Template

    # Click on Agenda Tab
    Wait Until Element Is Visible       ${AgendaTabXpath}   40 seconds
    Click Element                       ${AgendaTabXpath}
    Sleep    10 seconds
    Screenshot    Meeting Agenda Template editable grid is displayed

    Wait Until Element Is Visible       ${InlineEditItemButton}   40 seconds
    Click Element                       ${InlineEditItemButton}
    Sleep    10 seconds

    # Click on Add Button
    Wait Until Element Is Visible        ${AgAddButton}    10 seconds
    Click Element                        ${AgAddButton}

    #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${AgProcessflowButtonXpath1}    20 seconds
    Click Element                       ${AgProcessflowButtonXpath1}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${AgProcessflowAddPhaseXpath1}    20 seconds
    Element Should Be Visible           ${AgProcessflowAddPhaseXpath1}
    Sleep    5 seconds
    Screenshot    A new row is displayed in the Add phase


    #Enter text in agendatextbox
    Click Element                        ${AgendaOrderXpath}
    Input text                           ${AgendaOrderXpath}    12
    Sleep    5 seconds

    #Enter text in agendaitem
    Click Element                        ${AgendaItemXpath}
    Input text                           ${AgendaItemXpath}    agenda2
    Sleep    5 seconds

    # Click on Save button
    Wait Until Element Is Visible        ${AgendaSaveButtonXpath}    10 seconds
    Click Element                        ${AgendaSaveButtonXpath}

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${AgProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${AgProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase
