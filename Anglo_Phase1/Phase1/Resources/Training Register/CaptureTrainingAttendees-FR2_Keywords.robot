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

#***********FR2-Capture Training Attendees**************
FR2-Capture Training Attendees
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

    #*********Alternare Scenario_Select External******
    #Select External instructor
    Wait Until Element Is Visible     ${TrainingInternal/ExternalDPD}    20 seconds
    Click Element                     ${TrainingInternal/ExternalDPD}
    Sleep   2 seconds
    Wait Until Element Is Visible     ${TrainingSelectExternal}    20 seconds
    Click Element                     ${TrainingSelectExternal}
    Sleep    2 seconds
    Wait Until Element Is Visible     ${TrainingRegisterTrainingProviderDPD}    20 seconds
    Click Element                     ${TrainingRegisterTrainingProviderDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible      ${TrainingRegisterTrainerSelect}    20 seconds
    Click Element                     ${TrainingRegisterTrainerSelect}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${TrainingRegisterExternalInstructor}    20 seconds
    Input Text                          ${TrainingRegisterExternalInstructor}     Autotest
    Sleep    2 seconds
    #Wait Until Element Is Visible      ${TrainingRegisterTotalCost}     20 seconds
    #Input Text                         ${TrainingRegisterTotalCost}     30000
    #Sleep    2 seconds
    Screenshot    Totalcost

    #*********************************Main scenario
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
    Screenshot    Training Attendees

    #addattendees
    Wait Until Element Is Visible         ${TrainingRegitserAttendeesAddbttn}     20 seconds
    Click Element                         ${TrainingRegitserAttendeesAddbttn}
    Sleep    2 seconds

    #Training attendees module
    Wait Until Element Is Visible         ${TREmployementTypeDPD}    20 seconds
    Click Element                         ${TREmployementTypeDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${TREmployementTypeSelect}    20 seconds
    Click Element                         ${TREmployementTypeSelect}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${TREmployementTypeDPD}    20 seconds
    Click Element                         ${TREmployementTypeDPD}
    Sleep    2 seconds
    Wait Until Element Is Visible         ${TRTraineeNameDPD}    20 seconds
    Click Element                         ${TRTraineeNameDPD}
    Sleep    2 seconds
    Wait Until Element IS Visible         ${TRTraineeNameInputSearch}    20 seconds
    Input Text                            ${TRTraineeNameInputSearch}     A
    Press Keys                            ${TRTraineeNameInputSearch}     ENTER
    Sleep    5 seconds
    Wait Until Element Is Visible        ${TRTraineeNameSelect}     60 seconds
    Click Element                        ${TRTraineeNameSelect}
    Sleep    2 seconds
    Wait Until Element Is Visible        ${TRTraineeAttendeesSavebttn}    20 seconds
    Click Element                        ${TRTraineeAttendeesSavebttn}
    Sleep    6 seconds
    Screenshot    RecordSaved

    Wait Until Element Is Visible        ${TRTraineescore}     60 seconds
    Input Text                           ${TRTraineescore}        100
    Sleep  2 seconds
    Wait Until Element Is Visible        ${TRTrainingResultDPD}    20 seconds
    Click Element                        ${TRTrainingResultDPD}
    Sleep    2 seconds

    #*********AlternateScenario2********************
    Wait Until Element Is Visible     ${TRTrainingResultNotyet}    30 seconds
    Click Element                     ${TRTrainingResultNotyet}
    Sleep    2 seconds

    #********MainScenario*****************************
    Wait Until Element Is Visible        ${TRTrainingResultDPD}    20 seconds
    Click Element                        ${TRTrainingResultDPD}
    Sleep    2 seconds

    Wait Until Element Is Visible        ${TRTrainingResultselect}    30 seconds
    Click Element                        ${TRTrainingResultselect}
    Sleep     2 seconds
    Screenshot    certificatesTaB

    #*****OptionalSceanrio***************
    Wait Until Element Is Visible     ${TRCertificateTab}    20 seconds
    Click Element                     ${TRCertificateTab}
    Sleep    2 seconds

    #*******************LinKDocument_Optional Scenario*******************************
    Wait Until Element Is Visible       ${certificatelink}     10 seconds
    Click Element                       ${certificatelink}
    Sleep    5 seconds
    # change to pop-up frame
    Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible             ${SupportingDocPopUpName}
    #Enter URL
    Wait Until Element Is Visible         ${CertificateURLLINK}    30 seconds
    Click Element                         ${CertificateURLLINK}
    Clear Element Text                    ${CertificateURLLINK}
    Input Text                            ${CertificateURLLINK}     https://www.isometrix.com/
    Sleep    2   seconds
    # Enter Title
    Wait Until Element Is Visible        ${certificatetittle}      20  Seconds
    Click Element                        ${certificatetittle}
    Input Text                           ${certificatetittle}       Autotest
    Sleep    2 seconds
    Wait Until Element Is Visible         ${certificateAddpopup}    10 seconds
    Click Element                         ${certificateAddpopup}
    Sleep    2 seconds
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible         ${certificateSaveSupportingdoc}     20 Seconds
    Click Element                         ${certificateSaveSupportingdoc}
    Sleep    2 seconds

    Wait Until Element Is Visible       ${Training TAB}     20 seconds
    Click Element                       ${Training TAB}
    Sleep    2 seconds

    Wait Until Element Is Visible     ${TRTraineeAttendeesSavebttn}    20 seconds
    Click Element                     ${TRTraineeAttendeesSavebttn}
    Sleep    3 seconds

    #**************AlternateScenario***************************
    Wait Until Element IS Visible       ${AddStakeHolder}     20    seconds
    Click Element                       ${AddStakeHolder}
    Sleep  5 seconds

   # Switch Window
    Select Window       NEW
    Sleep       10
    Screenshot      Stakeholder Individual New Tab Opened

    # Select Frame
    Select Frame                            ${iFrame}
    Sleep       5

    # Process Flow
    Sleep    2 seconds
    Wait Until Element Is Visible           ${StakeholderIndividualProcessflow}    60 seconds
    Click Element                           ${StakeholderIndividualProcessflow}

    # Add Phase
    Wait Until Page Contains Element        ${StakeholderIndAddphase}
    Screenshot      Stakeholder Individual Add Phase


    # First Name
    Input Text                              ${StakeHolderFirstName}                 Auto Test

    # Last Name
    Input Text                              ${StakeHolderLastName}                robot

    # Known As
    Input Text                              ${StakeHolderKnownas}                 Autotest
    Screenshot      Stakeholder Individual Full Name Autopopulated

    # Title
    #Wait Until Element Is Visible           ${StakeHolderTittleDPD}     20 Seconds
    #Click Element                           ${StakeHolderTittleDPD}
    #Wait Until Element Is Visible           ${StakeholderTittleSelect}     40 seconds
    #Click Element                           ${StakeholderTittleSelect}

    # Status
    Page Should Contain Element            ${StakeholderActiveXpath}
    Screenshot      Stakeholder Individual Title_Status - Active

    # Stakeholder categories
    Click Element                           ${StakeHoldersCategoriesDPD}
    Sleep       2
    Wait Until Element Is Visible           ${StakeHoldersExpandXpath}          60 seconds
    Click Element                           ${StakeHoldersExpandXpath}
    Wait Until Element Is Visible           ${StakeholderEmplyeeXpath}         30 seconds
    Click Element                           ${StakeholderEmplyeeXpath}
    Click Element                           ${StakeHoldersCategoriesDPD}

    # Applicable business units
    Wait Until Element Is Visible           ${StakeHoldersAppBusiUnitsDPD}     60 seconds
    Click Element                           ${StakeHoldersAppBusiUnitsDPD}
    Wait Until Element Is Visible           ${StakeholdersAppBusExpandxpath}        40 seconds
    Click Element                           ${StakeholdersAppBusExpandxpath}
    Wait Until Element is Visible           ${StakeholdersAppBusExpand1xpath}    30 seconds
    Click Element                           ${StakeholdersAppBusExpand1xpath}
    Wait Until Element Is Visible           ${StakeholdersAppBusExpand2xpath}     30 seconds
    Click Element                           ${StakeholdersAppBusExpand2xpath}
    Wait Until Element Is Visible           ${StakeholderAppBusSelectXpath}       40 seconds
    Click Element                           ${StakeholderAppBusSelectXpath}
    Sleep  2 seconds
    Wait Until Element Is Visible           ${StakeHoldersAppBusiUnitsDPD}     20 seconds
    Click Element                           ${StakeHoldersAppBusiUnitsDPD}

    # Responsible owners
    Click Element                           ${StakeholderRespOwnersDPD}
    Wait Until Element Is Visible           ${StakeholdersResownersInputSearch}            40 seconds
    Sleep    1
    Input Text                              ${StakeholdersResownersInputSearch}            a
    Press Keys                              ${StakeholdersResownersInputSearch}            ENTER
    Wait Until Element Is Visible           ${StakeholderResOwnersSelect}             40 seconds
    Sleep    1
    Click Element                           ${StakeholderResOwnersSelect}
    Click Element                           ${StakeholderRespOwnersDPD}

    # Accountable owner
    Click Element                           ${StakeholderAccOwnerDPD}
    Wait Until Element Is Visible           ${StakeholderAccOwnerInputsearch}            40 seconds
    Sleep    1
    Input Text                              ${StakeholderAccOwnerInputsearch}             a
    Press Keys                              ${StakeholderAccOwnerInputsearch}            ENTER
    Wait Until Element Is Visible           ${StakeHolderAccOwnerSelect}                 40 seconds
    Sleep    1
    Click Element                           ${StakeHolderAccOwnerSelect}
    Click Element                           ${StakeholderAccOwnerDPD}

    # Save to continue
    Wait Until Element Is Visible           ${StakeholdersSaveBttn}
    Click Element                           ${StakeholdersSaveBttn}
    Screenshot      Stakeholder Individual Record Saved

    #Close Browser Tab
    Close Window
    Sleep       2
    Select Window       MAIN
    Screenshot      Training Tab Visible.png
    # Select Frame
    Select Frame                            ${iFrame}

   #*****OptionalSceanrio***************
   Wait Until Element Is Visible     ${TRCertificateTab}    20 seconds
   Click Element                     ${TRCertificateTab}
   Sleep    2 seconds

   #*******************LinKDocument_Optional Scenario*******************************
    Wait Until Element Is Visible       ${certificatelink}     10 seconds
    Click Element                       ${certificatelink}
    Sleep    5 seconds
    # change to pop-up frame
    Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible             ${SupportingDocPopName}
    #Enter URL
    Wait Until Element Is Visible         ${CertificateURLLINK}    30 seconds
    Click Element                         ${CertificateURLLINK}
    Clear Element Text                    ${CertificateURLLINK}
    Input Text                            ${CertificateURLLINK}     https://www.isometrix.com/
    Sleep    2   seconds
    # Enter Title
    Wait Until Element Is Visible        ${certificatetittle}      20  Seconds
    Click Element                        ${certificatetittle}
    Input Text                           ${certificatetittle}       Autotest
    Sleep    2 seconds
    Wait Until Element Is Visible         ${certificateAddpopup}    10 seconds
    Click Element                         ${certificateAddpopup}
    Sleep    2 seconds
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible         ${certificateSaveSupportingdoc}     20 Seconds
    Click Element                         ${certificateSaveSupportingdoc}
    Sleep    2 seconds





















