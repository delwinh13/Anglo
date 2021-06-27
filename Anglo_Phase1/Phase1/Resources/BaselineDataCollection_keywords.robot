*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime
Resource     ../Repository/Common.robot
Resource     ../Repository/BaselineDataCollection_vars.robot
Resource     ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\BaselineDataCollection\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                      ${Usernameid}  ${Username Value}
    Input Text                      ${Passwordid}  ${Password Value}
    Screenshot      Credentials entered
    Click Element                   ${SubmitButtonid}
    Screenshot    Login
    Sleep     5
    Screenshot      Homepage

Navigate to Baseline Data Collection
    Log To Console   Navigate to Baseline Data Collection
    Select Frame                     ${iFrame}
    # Click Social Sustainability
    Wait Until Element Is Visible    ${SocialSustainabilityXpath}       40 seconds
    Click Element                    ${SocialSustainabilityXpath}
    # Click Baseline Data Collection
    Wait Until Element Is Visible    ${BaselineDataCollection}          30 seconds
    Click Element                    ${BaselineDataCollection}
    Sleep       2
    Wait Until Element Is Visible    ${BaselineDataCollectionAddbtn}    30 seconds
    Screenshot      Navigated to Baseline data collection

FR1 Capture Baseline Data Collection Main Scenario
    Log To Console   FR1 Capture Baseline Data Collection Main Scenario

    # Search Button
    Wait Until Element Is Enabled   ${BDCSearchID}                     60 seconds
    Click Element                   ${BDCSearchID}
    Sleep       3
    Screenshot      Search button clicked

    # Add Button
    Click Element                   ${BaselineDataCollectionAddbtn}
    Wait Until Element Is Visible   ${ProcessFlow}                     50 seconds
    Page Should Contain Element     ${DetailsTab}
    Page Should Contain Element     ${SupportDocsTab}
    Screenshot      Add button clicked

    # Process Flow
    Click Element                   ${ProcessFlow}
    Wait Until Element Is Visible   ${ProcessFlowAdd}                  10 seconds
    Screenshot      Process flow clicked - Add Phase

    # Site
    Click Element                   ${SiteDropDown}
    sleep   1
    Wait Until Element Is Visible   ${AngloAmericantreesdrpdwn}         20 seconds
    Click Element                   ${AngloAmericantreesdrpdwn}
    sleep   1
    Wait Until Element Is Visible   ${BulkCommtreesdrpdwn}              20 seconds
    Click Element                   ${BulkCommtreesdrpdwn}
    sleep   1
    Wait Until Element Is Visible   ${Kumbatreesdrpdwn}                 20 seconds
    Click Element                   ${Kumbatreesdrpdwn}
    sleep   1
    Wait Until Element Is Visible   ${SishenMinetreesdrpdwn}            20 seconds
    Click Element                   ${SishenMinetreesdrpdwn}
    sleep   1
    Wait Until Element Is Visible   ${BeneficPlanttreesdrpdwn}          20 seconds
    Click Element                   ${BeneficPlanttreesdrpdwn}
    sleep   1

    # Title
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input Text                      ${Title}                        Capture Baseline Data Collection Main Scenario ${CurrentDate}

    # Detail
    Input Text                      ${Detail}                       Detail Auto Test ${CurrentDate}

    # Scope
    Input Text                      ${Scope}                        Scope Auto Test ${CurrentDate}

    # Purpose
    Input Text                      ${Purpose}                      Purpose Auto Test ${CurrentDate}

    # Expected outcome
    Input Text                      ${ExpectedOutcome}              Expected outcome Auto Test ${CurrentDate}

    # Start Date
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${DataCollectionStartDate}        ${CurrentDate}

    # End Date
    ${EndDate}              Get Current Date        result_format=%d-%m-%Y          increment=+3 days
    Set Global Variable             ${EndDate}
    Input Text                      ${DataCollectionEndDate}        ${EndDate}

#    # Target number of surveys
#    Input Text                      ${TotalNoSurveys}               2

    # Owner
    Click Element                   ${Owner}
    sleep   1
    Wait Until Element Is Visible   ${OwnerSearch}                  10 seconds
    Input Text                      ${OwnerSearch}                  auto
    sleep   1
    Press Keys                      ${OwnerSearch}                  ENTER
    sleep   1
    Wait Until Element Is Visible   ${OwnerOption}                  10 seconds
    Click Element                   ${OwnerOption}
    sleep   1

    # Team
    scroll element into view        ${SavetoContinueBtn}
    sleep   1
    Click Element                   ${Team}
    sleep   1
    Wait Until Element Is Visible   ${TeamSearch}                   10 seconds
    Input Text                      ${TeamSearch}                   auto
    sleep   1
    Press Keys                      ${TeamSearch}                   ENTER
    sleep   1
    Wait Until Element Is Visible   ${TeamSearchOption}             10 seconds
    Click Element                   ${TeamSearchOption}
    sleep   1
    Click Element                   ${Team}

    # Linked Projects
    Click Element                   ${LinkedProjects}
    sleep   1
    Wait Until Element Is Visible   ${LinkedProjectsOption}         10 seconds
    Click Element                   ${LinkedProjectsOption}
    sleep   1
    Click Element                   ${LinkedProjects}

    # Linked Stakeholder Groups / Communities
    Click Element                   ${LinkedStakeholderGroup}
    sleep   1
    Input text                      ${LinkedStakeholderGroupSearch}   auto
    sleep   1
    Press Keys                      ${LinkedStakeholderGroupSearch}   ENTER
    sleep   1
    Wait Until Element Is Visible   ${LinkedStakeholderGroupOption}   30 seconds
    Click Element                   ${LinkedStakeholderGroupOption}
    sleep   1
    Click Element                   ${LinkedStakeholderGroup}
    sleep   1

    # Applicable survey to be used
    Click Element                   ${Survey}
    sleep   1
    Wait Until Element Is Visible   ${SurveyOption}                     30 seconds
    Click Element                   ${SurveyOption}
    sleep   1
    Click Element                   ${Survey}
    Screenshot    Info captured

    # Save Button
    Click Element                   ${Savebtn}
    Wait Until Element Is Visible   ${RecordSaved}                      60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved}                      60 seconds
    Page Should Contain Element     ${BDCRecordNo}
    Page Should Contain Element     ${ProcessFlowEdit}
    Page Should Contain Element     ${StatusPlanned}
    Page Should Contain Element     ${SurveyTab}
    Page Should Contain Element     ${ActionsTab}
    Screenshot    Record saved

FR1_BaselineDataCollection_Notification
    Log To Console    FR1_BaselineDataCollection_Notification

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
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Wait Until Element Is Visible           ${SystemMailFolder}         20 seconds
    sleep       5
    Click Element                           ${SystemMailFolder}
    Screenshot      Outlook SystemMail Folder
    #BaselineDataCollection - Logged Notification
    sleep       3
    Wait Until Element Is Visible           ${BDCLoggedSubject}          60 seconds
    Click Element                           ${BDCLoggedSubject}
    Screenshot      BaselineDataCollection Added Email Selection
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
    #Wait for BaselineDataCollection Record
    sleep       20
    Select Frame                            ${iFrame}
    Wait Until Element Is Enabled           ${ProcessFlow}           60 seconds
    Click Element                           ${ProcessFlow}
    Wait Until Page Contains Element        ${ProcessFlowCompleted}
    Screenshot      Baseline Data Collection Record Opened

OS1 Capture Baseline Data Collection Main Scenario
    # Change status to In Progress
    Log To Console   OS1 Capture Baseline Data Collection Main Scenario

    Click Element                   ${StatusDrpDwn}
    sleep   1
    Click Element                   ${StatusDDInProgress}
    sleep   1
    Screenshot    Status changed to In Progress

    Click Element                   ${Savebtn}
    Wait Until Element Is Visible   ${RecordSaved}                      60 seconds
    Page Should Contain Element     ${StatusInProgress}
    sleep   1
    Screenshot    Record saved - Status In Progress

OS2 Capture Baseline Data Collection Main Scenario
    # Navigate to Supporting Documents and Add
    Log To Console   OS2 Capture Baseline Data Collection Main Scenario

    Click Element                   ${SupportingDocuments}
    Wait Until Element Is Visible   ${SaveSupportingDocumentsbtn}       10 seconds
    Screenshot       Navigated to Supporting Documents
    Click Element                   ${LinkToDocument}
    unselect frame
    Wait Until Element Is Visible   ${URLAddBtn}                        10 seconds
    input text                      ${URLValue}   Tim@AutoTesting.com
    sleep   2
    input text                      ${URLTitle}   Testing
    Screenshot       Link info added
    Click Element                   ${URLAddBtn}
    sleep   5
    Screenshot       Link added
    Select Frame                    ${iFrame}
    Click Element                   ${SaveSupportingDocumentsbtn}
    Wait Until Element Is Visible   ${RecordSaved}                      30 seconds
    Wait Until Element Is Not Visible   ${RecordSaved}                  60 seconds
    sleep   1
    Screenshot       Supporting Documents added

FR2 Capture Baseline Data Collection Survey
    # Navigate to Survey Tab
    Log To Console   FR2 Capture Baseline Data Collection Survey

    # Survey Tab
    Click Element                   ${SurveyTab}
    sleep   1
    Wait Until Element Is Visible   ${SurveyNoResults}                  10 seconds
    Screenshot      Navigated to Survey Tab

    # Add Button
    Click Element                   ${SurveyAddbtn}
    sleep   1
    Wait Until Element Is Visible   ${SurveySaveAndStartSurveybtn}     10 seconds
    Screenshot    Survey add button clicked

    # Process Flow
    Click Element                   ${SurveyNameLabel}
    Click Element                   ${SurveyProcessFlowbtn}
    Wait Until Element Is Visible   ${SurveyProcessFlowAdd}            10 seconds
    Screenshot      Process flow clicked - Add Phase
    sleep   1

    # Survey Name
    Click Element                   ${SurveyName}
    sleep   1
    Wait Until Element Is Visible   ${SurveyNameOption}                40 seconds
    Click Element                   ${SurveyNameOption}
    sleep   1

    # Survey conducted by
    Click Element                   ${SurveyConductedBy}
    sleep   1
    Input Text                      ${SurveyConductedBySearch}          auto
    Press Keys                      ${SurveyConductedBySearch}          ENTER
    Wait Until Element Is Visible   ${SurveyConductedByOption}          40 seconds
    Sleep   1
    Click Element                   ${SurveyConductedByOption}

    # Geographic location
    Click Element                   ${GeographicLocation}
    Wait Until Element Is Visible   ${GeographicLocationOption}         40 seconds
    # Click Element   ${GeographicLocationOption1}   #South africa
    # sleep   1 seconds
    # Click Element   ${GeographicLocationOption2}   #Gauteng
    # sleep   1 seconds
    # Click Element   ${GeographicLocationOption3}   #centurion
    sleep   1
    Click Element                   ${GeographicLocationOption}
    sleep   1
    Screenshot      Survey info added

    # Save Button
    Click Element                   ${SurveySaveAndStartSurveybtn}
    Wait Until Element Is Visible   ${RecordSaved2}                      60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                  60 seconds
    Wait Until Element Is Visible   ${ExcludeFromResults}
    Page Should Contain Element     ${SurveyRecordNo}
    Page Should Contain Element     ${SurveyProcessFlowEdit}
    Page Should Contain Element     ${SurveyStatusNotStarted}
    Page Should Contain Element     ${SurveyTab}
    Page Should Contain Element     ${ActionsTab}
    Page Should Contain Element     ${SurveyLatXpath}
    Page Should Contain Element     ${SurveyLongXpath}
    Page Should Contain Element     ${SurveyChecklistSTART}
#    Mouse Over                      ${SurveyMapCSS}
#    sleep   1
#    Page Should Contain Element     ${SurveyMapCSS}
    Screenshot      Survey record saved

AS Capture Baseline Data Collection Survey
    # Click exclude from survey box
    Log To Console   AS Capture Baseline Data Collection Survey

    Element Should Not Be Visible   ${Reason}
    Element Should Not Be Visible   ${ExcludedByDD}
    Element Should Not Be Visible   ${DateExcluded}

    # Exclude from results
    Wait Until Element Is Visible   ${ExcludeFromResults}               40 seconds
    Click Element                   ${ExcludeFromResults}
    sleep   1
    Page Should Contain Element     ${Reason}
    Page Should Contain Element     ${ExcludedByDD}
    Page Should Contain Element     ${DateExcluded}

    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${Reason}                           Automation test ${CurrentDate}
    Screenshot      Exclude from Results ticked
    Sleep    1

    # Save Button
    Click Element                   ${SurveySavebtn}
    Wait Until Element Is Visible   ${RecordSaved2}                      60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                  60 seconds
    Screenshot      AS Exclude from Results ticked saved

FR3-Capture the Survey
    Log To Console   FR3 Capture the Survey

    # START Button
    Wait Until Element Is Visible    ${SurveyChecklistSTART}             40 seconds
    Sleep   2
    Click Element                    ${SurveyChecklistSTART}
    sleep   2

    # Social Demo Survey
#    Wait Until Element Is Enabled    ${SocialDemoSurveyCheclist}         60 seconds

    # Blasting Question 1
    Wait Until Element Is Visible    ${BlastingQues1}                    60 seconds
    Click Element                    ${BlastingQues1}
    sleep   1
    Wait Until Element Is Visible    ${BlastingQues1Option}              30 seconds
    Click Element                    ${BlastingQues1Option}
    sleep   1

    # Blasting Question 3
    Click Element                    ${BlastingQues3}
    Sleep    1
    Wait Until Element Is Visible    ${BlastingQues3option}              30 seconds
    Click Element                    ${BlastingQues3option}

    # Noise Question 2
    scroll element into view         ${NoiseQues3option}
    sleep   1
    Click Element                    ${NoiseQues2option}

    # Save Current Section
    Click Element                    ${SaveCurrentSectionbtn}
    sleep   2
    Wait Until Element Is Not Visible   ${ChecklistLoadingData}          60 seconds
    Wait Until Element Is Visible    ${SaveCurrentSectionRecord}         30 seconds
    Screenshot    Screen 1 survey answers

    # Close Checklist
    Click Element                    ${CloseCheckSaveCurrent}
    sleep   2
    Wait Until Element Is Not Visible   ${ChecklistLoadingData}          60 seconds
    Page Should Contain Element      ${ChecklistCONTINUE}
    Page Should Contain Element      ${ChecklistInProgress}
    Page Should Contain Element      ${SurveyStatusInProgress}

    # FR3-Capture the Survey - OS3
    Click Element                    ${ChecklistCONTINUE}
    sleep   2
    Wait Until Element Is Enabled    ${SocialDemoSurveyCheclist}         60 seconds

    # FR3-Capture the Survey - OS1
    Click Element                    ${SurveyNextbtn}
    sleep   1
    Page Should Contain Element      ${SurveyPreviousbtn}
    Page Should Contain Element      ${SurveyFinishbtn}
    Click Element                    ${SurveyPreviousbtn}
    sleep   1
    Click Element                    ${SurveyNextbtn}
    sleep   1
    Wait Until Element Is Visible   ${SurveyFinishbtn}                   30 seconds

    # FR3-Capture the Survey - OS2
    # Health section
    Click Element                   ${ChronicConditionsdrpdwn}
    sleep   1
    Wait Until Element Is Visible   ${ChronicConditionsYesdrpdwn}        30 seconds
    Click Element                   ${ChronicConditionsYesdrpdwn}
    sleep   1
    Click Element                   ${ListOfConditionsdrpdwn}
    Wait Until Element Is Visible   ${ConditionAsthma}                   30 seconds
    Click Element                   ${ConditionAsthma}
    Click Element                   ${ListOfConditionsdrpdwn}
    Screenshot      Screen 2 survey answers
    Sleep   1
    Click Element                   ${SurveyFinishbtn}
    sleep   1
    Screenshot   Survey answered and finish button clicked
    Wait Until Element Is Visible   ${Viewbtn}                           30 seconds
    Page Should Contain Element     ${ChecklistComplete}
    Page Should Contain Element     ${SurveyStatusComplete}
    Screenshot   Survey completed
    Click Element                   ${CloseSurvey}
    sleep   2
    Wait Until Element Is Visible   ${Savebtn}                           30 seconds
    sleep   2

FR4-Capture Actions
    Log To Console   FR4-Capture Actions

    # Actions Tab
    Wait Until Element Is Visible   ${ActionsTab}                        40 seconds
    Sleep   1
    Click Element                   ${ActionsTab}
    sleep   1
    Wait Until Element Is Visible   ${ActionsAddbtn}                     30 seconds
    Screenshot   Actions tab clicked

    # Actions Add Button
    Click Element                   ${ActionsAddbtn}
    sleep   1
    Wait Until Element Is Enabled   ${ActionsProcessFlowbtn}             30 seconds

    # Process Flow
    Click Element                   ${ActionsProcessFlowbtn}
    sleep   1
    Page Should Contain Element     ${ActionsPFAdd}

    # Task Type
    Click Element                   ${ActionsTaskType}
    sleep   1
    Wait Until Element Is Visible   ${ActionsTaskTypeAdHoc}              30 seconds
    Click Element                   ${ActionsTaskTypeAdHoc}

    # Type of Action
    Click Element                   ${ActionsTypeOfAction}
    sleep   1
    Wait Until Element Is Visible   ${TypeOfActionCorrective}            30 seconds
    Click Element                   ${TypeOfActionCorrective}

    # Description
    Input text                      ${ActionDescription}                 Testing

    # Entity
    Click Element                   ${Entity}
    sleep   1
    Wait Until Element Is Visible   ${AngloAmericanGrouptree}            30 seconds
    Click Element                   ${AngloAmericanGrouptree}
    sleep   0.5
    Wait Until Element Is Visible   ${AngloAmericanplctree}              30 seconds
    Click Element                   ${AngloAmericanplctree}
    sleep   0.5
    Wait Until Element Is Visible   ${AngloAmericanplctree2}             30 seconds
    Click Element                   ${AngloAmericanplctree2}
    sleep   0.5
    Wait Until Element Is Visible   ${AngloAmericanplcOption}            30 seconds
    Click Element                   ${AngloAmericanplcOption}
    sleep   1

    # Responsible Person
    Click Element                   ${ResponsiblePerson}
    Wait Until Element Is Visible    ${ResponsiblePersonSearch}          30 seconds
    Input text                      ${ResponsiblePersonSearch}           auto
    Press Keys                      ${ResponsiblePersonSearch}           ENTER
    Wait Until Element Is Visible   ${ResponsiblePersonOption}           30 seconds
    Click Element                   ${ResponsiblePersonOption}

    # Action Due Date
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y          increment=+3 days
    Set Global Variable             ${CurrentDate}
    Input Text                      ${ActionDueDate}                     ${CurrentDate}
    sleep   1

    # Recurring Action
    Click Element                   ${RecurringAction}
    Wait Until Element Is Visible    ${RecurringActionOptionNo}          30 seconds
    Click Element                   ${RecurringActionOptionNo}
    Screenshot   Actions details added

    # Save Button
    Click Element                    ${ActionsSavebtn}
    Screenshot   Actions Saved clicked
    Wait Until Element Is Visible    ${RecordSaved2}                     30 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                  60 seconds
    Page Should Contain Element      ${ActionsPFInitiated}
    Screenshot   Actions saved
    sleep   1

FR5-Update Status to Complete
    Log To Console   FR5-Update Status to Complete

    # Navigate to BDC - Details Tab
    Wait Until Element Is Visible    ${ActionsCloseIcon}                 40 seconds
    Click Element                    ${ActionsCloseIcon}
    sleep   2
    Switch Window
    Wait Until Element Is Visible    ${ActionsCloseIconConfirmYes}       30 seconds
    Click Element                    ${ActionsCloseIconConfirmYes}
    sleep   2
    Select Frame                     ${iFrame}
    Wait Until Element Is Visible    ${DetailsTab}                       30 seconds
    Screenshot    Navigated back to Details tab

    # Change status to - Completed
    Click Element                    ${ProcessFlow}
    Wait Until Element Is Visible    ${ProcessFlowEdit}                  10 seconds
    Click Element                    ${StatusDrpDwn}
    Wait Until Element Is Visible    ${BDCStatusDDComplete}              30 seconds
    Click Element                    ${BDCStatusDDComplete}
    sleep   1
    Click Element                    ${Savebtn}
    Wait Until Element Is Visible    ${RecordSaved}                      30 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                  60 seconds
    Page Should Contain Element      ${StatusCompleted}
    Page Should Contain Element      ${ProcessFlowCompleted}
    Screenshot    Record saved