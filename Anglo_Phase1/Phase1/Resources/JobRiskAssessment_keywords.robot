*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime
Resource     ../Repository/Common.robot
Resource     ../Repository/JobRiskAssessment_vars.robot
Resource     ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\JobRiskAssessment\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                      ${Usernameid}  ${Username Value}
    Input Text                      ${Passwordid}  ${Password Value}
    Screenshot      Credentials entered
    Click Element                   ${SubmitButtonid}
    Screenshot    Login
    Sleep     5
    Screenshot      Homepage

Navigate to Job Risk Assessment
    Log To Console   Navigate to Job Risk Assessment
    Select Frame                     ${iFrame}
    # Click Risk Management
    Wait Until Element Is Visible    ${RiskManagementXpath}            40 seconds
    Click Element                    ${RiskManagementXpath}
    # Click Layer 3 - Job Risk Assessment
    Wait Until Element Is Visible    ${Layer3JobRiskAssessment}        30 seconds
    Click Element                    ${Layer3JobRiskAssessment}
    Sleep       2
    Wait Until Element Is Visible    ${JRAAddbtn}                      30 seconds
    Screenshot      Navigated to Job Risk Assessment

FR1 Capture Job Risk Assessment
    Log to Console  FR1 Capture Job Risk Assessment

    # Search Button
    Wait Until Element Is Enabled   ${JRASearchID}                     60 seconds
    Click Element                   ${JRASearchID}
    Sleep       3
    Screenshot      Search button clicked

    # Add Button
    Click Element                   ${JRAAddbtn}
    Wait Until Element Is Not Visible   ${JRARecordLoadingXpath}       60 seconds
    Wait Until Element Is Visible   ${ProcessFlow}                     50 seconds
    Page Should Contain Element     ${JRASectionAGenPersonInfoTab}
    Page Should Contain Element     ${JRAActiveDefault}
    Screenshot      Add button clicked

    # Process Flow
    Click Element                   ${ProcessFlow}
    Wait Until Element Is Visible   ${ProcessFlowAdd}                  10 seconds
    Screenshot      Process flow clicked - Add Phase

    # Entity
    Click Element                   ${JRAEntityDD}
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

    # Functional location
    Click Element                   ${JRAFunctionalLocationDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAFunctionalLocationSelect}      60 seconds
    Click Element                   ${JRAFunctionalLocationSelect}

    # Process / activity
    Click Element                   ${JRAProcessDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAPlantExpand}                   20 seconds
    Click Element                   ${JRAPlantExpand}
    sleep   1
    Wait Until Element Is Visible   ${JRAProcessSelect}                 20 seconds
    Click Element                   ${JRAProcessSelect}
    sleep   1

    # Job / task title
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${JRAJobTitle}                      FR1 Capture Job Risk Assessment_MS ${CurrentDate}

    # Job / task scope and objectives
    Input text                      ${JRAJobScope}                      FR1 Capture Job Risk Assessment_MS ${CurrentDate}
    Scroll element into view        ${JRATopEventDD}
    sleep   1

    # Top events
    Click Element                   ${JRATopEventDD}
    sleep   1
    Wait Until Element Is Visible   ${JRATopEventSelect}                   20 seconds
    Click Element                   ${JRATopEventSelect}
    sleep   1
    Click Element                   ${JRATopEventDD}

    # JRA team leader
    Click Element                   ${JRATeamLeaderDD}
    sleep   1
    Wait Until Element Is Visible   ${JRATeamLeadSearch}                  10 seconds
    Input Text                      ${JRATeamLeadSearch}                  auto
    sleep   1
    Press Keys                      ${JRATeamLeadSearch}                  ENTER
    sleep   1
    Wait Until Element Is Visible   ${JRATeamLeadOption}                  10 seconds
    Click Element                   ${JRATeamLeadOption}
    sleep   1

    # JRA recorded by
    Click Element                   ${JRARecordedByDD}
    sleep   1
    Wait Until Element Is Visible   ${JRARecordedBySearch}                  10 seconds
    Input Text                      ${JRARecordedBySearch}                  auto
    sleep   1
    Press Keys                      ${JRARecordedBySearch}                  ENTER
    sleep   1
    Wait Until Element Is Visible   ${JRARecordedByOption}                  10 seconds
    Click Element                   ${JRARecordedByOption}
    sleep   1

    # Date JRA conducted
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${JRAConducted}                     ${CurrentDate}
    sleep   1

    # Alternate scenario1 = Select “No” on Is there an existing procedure for the task to be assessed? field
    # Is there an existing procedure for the task to be assessed?
    Click Element                   ${JRAExistProceDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAExistProceNo}                   20 seconds
    Click Element                   ${JRAExistProceNo}
    Element Should Not Be Visible     ${JRALinkProcedure}
    sleep   1
    Screenshot      Upload or link to procedure control is not displayed.
    # Main scenario = Select “Yes” on Is there an existing procedure for the task to be assessed? field.
    Click Element                   ${JRAExistProceDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAExistProceYes}                   20 seconds
    Click Element                   ${JRAExistProceYes}
    Screenshot      Upload or link to procedure control is displayed

    # Upload or link to procedure
    Click Element                   ${JRALinkProcedure}
    unselect frame
    Wait Until Element Is Visible   ${URLAddBtn}                        10 seconds
    input text                      ${URLValue}                         www.isometrix.com
    sleep   1
    input text                      ${URLTitle}                         Auto Testing
    Screenshot       Link info added
    Click Element                   ${URLAddBtn}
    sleep   2
    Screenshot       Link added
    Select Frame                    ${iFrame}

    # List equipment / tools required for task
    Scroll element into view        ${JRAListEquipTask}
    sleep   1
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${JRAListEquipTask}                      FR1 Capture Job Risk Assessment_MS ${CurrentDate}

    # Alternate scenario2 = Select “No” on Do the task activities impact on other people / work? field.
    # Do the task activities impact on other people / work?
    Click Element                   ${JRATaskImpactDD}
    sleep   1
    Wait Until Element Is Visible   ${JRATaskImpactNo}                   20 seconds
    Click Element                   ${JRATaskImpactNo}
    Element Should Not Be Visible     ${JRAImpactPPL}
    sleep   1
    Screenshot      Impacted people_work field is not displayed
    # Main scenario = Select “Yes” on Do the task activities impact on other people / work? field
    Click Element                   ${JRATaskImpactDD}
    sleep   1
    Wait Until Element Is Visible   ${JRATaskImpactYes}                   20 seconds
    Click Element                   ${JRATaskImpactYes}
    Screenshot      Impacted people_work field is displayed

    # Click here to save and add task / activity steps
    Click Element                   ${JRAClickHeretoSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved}                      60 seconds
    Page Should Contain Element     ${ProcessFlowReadOnly}
    Page Should Contain Element     ${JRASectionBJRAPTOTaskInfoTab}
    Page Should Contain Element     ${JRASectionCWorkExecSpecTab}
    FOR  ${i}     IN RANGE  1  4
    Click Element                   ${JRATabRightArrow}
    END
    Sleep       1
    Page Should Contain Element     ${JRAActionsTab}
    Page Should Contain Element     ${JRASupportDocsTab}
    sleep   1
    FOR  ${i}     IN RANGE  1  4
    Click Element                   ${JRATabLeftArrow}
    END
    Sleep       1
    Screenshot    Record saved - Read - only phase
    Page Should Contain Element     ${JRAReadOnlyModeLabel}
    Page Should Contain Element     ${JRARefNoField}
    Page Should Contain Element     ${JRAStatusActive}
    Page Should Contain Element     ${JRACurrentVersion1}

FR2 Capture Change Log
    Log to Console  FR2 Capture Change Log

    Scroll element into view        ${JRAClickHeretoSaveBtn}
    sleep   1
    Page Should Contain Element     ${JRAChangeLogSubMod}
    # Add Button
    Click Element                   ${ChangeAddBtn}
    Wait Until Element Is Not Visible   ${JRARecordLoadingXpath}       60 seconds
    Wait Until Element Is Visible   ${ChangePF}                     50 seconds
    Page Should Contain Element     ${ChangeSaveAddRiskTeamBtn}
    Screenshot      Change Log Add button clicked

    # Process Flow
    Click Element                   ${ChangePF}
    Wait Until Element Is Visible   ${ChangePFAdd}                  10 seconds
    Screenshot      Change Log Process flow clicked - Add Phase

    # Date of change
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${ChangeDateChange}                     ${CurrentDate}
    sleep   1

    # Reasons for review include
    # Alternate scenario 1: Select “Event” under Reasons for review include field.
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangeReasonsEvent}                   60 seconds
    Click Element                   ${ChangeReasonsEvent}
    Click Element                   ${ChangeReasonsDD}

    # Link to event
    Page Should Contain Element     ${ChangeLinktoEventDD}
    Click Element                   ${ChangeLinktoEventDD}
    sleep   5
    Wait Until Element Is Visible   ${ChangeLinktoEventSelect}              60 seconds
    Click Element                   ${ChangeLinktoEventSelect}
    Screenshot     Link to event visible

    # Alternate scenario 2: Select “Audit review” under Reasons for review include field.
    sleep   2
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Click Element                   ${ChangeReasonsDDDeselect}
    sleep   1
    Click Element                   ${ChangeReasonsValidationCls}
    Element Should Not Be Visible     ${ChangeLinktoEventDD}
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangeReasonsAuditReview}                   60 seconds
    Click Element                   ${ChangeReasonsAuditReview}
    Click Element                   ${ChangeReasonsDD}
    sleep   1

    # Link to audit
    Page Should Contain Element     ${ChangeLinktoAuditDD}
    Screenshot     Link to audit visible

    # Alternate scenario 3: Select “Stakeholder engagement” under Reasons for review include field.
    sleep   2
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Click Element                   ${ChangeReasonsDDDeselect}
    sleep   1
    Click Element                   ${ChangeReasonsValidationCls}
    Element Should Not Be Visible     ${ChangeLinktoAuditDD}
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangeReasonsStakeEngage}                   60 seconds
    Click Element                   ${ChangeReasonsStakeEngage}
    Click Element                   ${ChangeReasonsDD}
    sleep   1

    # Link to stakeholder engagement
    Page Should Contain Element     ${ChangeLinkStakeEngageDD}
    Click Element                   ${ChangeLinkStakeEngageDD}
    sleep   5
    Wait Until Element Is Visible   ${ChangeLinkStakeEngageSelect}              60 seconds
    Click Element                   ${ChangeLinkStakeEngageSelect}
    Screenshot     Link to stakeholder engagement visible

    # Main scenario: 2.	Select “Annual review” or “Change” or “New hazard / risk identified” under Reasons for review include field
    sleep   2
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Click Element                   ${ChangeReasonsDDDeselect}
    sleep   1
    Click Element                   ${ChangeReasonsValidationCls}
    Element Should Not Be Visible     ${ChangeLinkStakeEngageDD}
    Click Element                   ${ChangeReasonsDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangeReasonsAnnual}                   60 seconds
    Click Element                   ${ChangeReasonsAnnual}
    Click Element                   ${ChangeReasonsChange}
    Click Element                   ${ChangeReasonsNewHazard}
    Click Element                   ${ChangeReasonsDD}
    sleep   1

    # Comments
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ChangeComments}                      FR2 Capture Change Log ${CurrentDate}

    # Person responsible for Sign off
    Click Element                   ${ChangePersonSignOffDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangePersonSignSearch}                  30 seconds
    Input Text                      ${ChangePersonSignSearch}                  auto
    sleep   1
    Press Keys                      ${ChangePersonSignSearch}                  ENTER
    sleep   1
    Wait Until Element Is Visible   ${ChangePersonSignOption}                  30 seconds
    Click Element                   ${ChangePersonSignOption}
    sleep   1

    # Save to add Risk Team
    Click Element                   ${ChangeSaveAddRiskTeamBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Page Should Contain Element     ${ChangePFEdit}
    Page Should Contain Element     ${ChangeCompletedDDNo}
    Page Should Contain Element     ${JRATeamAddBtn}
    Screenshot     Change Log Record Saved

    # Close Change Log Record
    Click Element                   ${ChangeCloseBtn}
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    Wait Until Element Is Visible   ${ChangeSubModRecord}                   60 seconds
    sleep   1
    Scroll element into view        ${JRAWarningLabel}
    sleep   1

    # Process Flow
    Click Element                   ${ProcessFlow}
    Wait Until Element Is Visible   ${ProcessFlowEdit}                         10 seconds
    Screenshot      Process flow clicked - Edit Phase

FR3 Capture JRA Team
    Log to Console  FR3 Capture JRA Team

    Scroll element into view        ${ChangeSubModInLineEdit}
    sleep   1
    Click Element                   ${ChangeSubModRecord}
    sleep   1
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    sleep   1

    # Process Flow
    Click Element                   ${ChangePF}
    Wait Until Element Is Visible   ${ChangePFEdit}                  10 seconds
    Screenshot      Change Log Process flow clicked - Edit Phase

    # JRA Team Add Button
    Scroll element into view        ${ChangeExternalStakeText}
    sleep   1
    Click Element                   ${JRATeamAddBtn}
    Wait Until Element Is Visible   ${JRATeamBlankRecord}                  30 seconds

    # Full Name
    Click Element                   ${JRATeamFullNameDD}
    sleep   1
    Wait Until Element Is Visible   ${JRATeamFullNameSearch}                  30 seconds
    Input Text                      ${JRATeamFullNameSearch}                  auto
    sleep   1
    Press Keys                      ${JRATeamFullNameSearch}                  ENTER
    sleep   1
    Wait Until Element Is Visible   ${JRATeamFullNameOption}                  30 seconds
    Click Element                   ${JRATeamFullNameOption}
    sleep   1

    # Experience / Role
    Click Element                   ${JRATeamExpRoleDD}
    sleep   2
    Wait Until Element Is Visible   ${JRATeamExpRoleOption}                  30 seconds
    Click Element                   ${JRATeamExpRoleOption}

    # Team Save All Button
    Click Element                   ${JRATeamSaveAllBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    sleep   1

    # Team In-line Edit Button
    Click Element                   ${JRATeamInLineEditBtn}
    sleep   2
    Wait Until Element Is Visible   ${JRATeamAddedRecord}                         60 seconds

    # Open Teams Record
    Click Element                   ${JRATeamAddedRecord}
    sleep   1
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    Wait Until Element Is Visible   ${JRATeamRecordNo}                         60 seconds
    Page Should Contain Element     ${JRATeamRecordNo}

    # Teams Process Flow
    Click Element                   ${JRATeamPF}
    Wait Until Element Is Visible   ${JRATeamPFEdit}                  10 seconds
    Screenshot      JRA Teams Process flow clicked - Edit Phase

    # Teams Close Button
    Click Element                   ${JRATeamCloseBtn}
    sleep   2
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    sleep   2
    Wait Until Element Is Visible   ${JRATeamAddedRecord}                         60 seconds

    # Close Change Log Record
    Click Element                   ${ChangeLogCloseBtn}
    sleep   2
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    Wait Until Element Is Visible   ${ChangeSubModRecord}                   60 seconds
    sleep   1
    Scroll element into view        ${JRAWarningLabel}
    sleep   1

    # Process Flow
    Click Element                   ${ProcessFlow}
    Wait Until Element Is Visible   ${ProcessFlowEdit}                         10 seconds
    Screenshot      Process flow clicked - Edit Phase

FR4 Capture Task Information
    Log to Console  FR4 Capture Task Information

    # Section B - JRA / PTO Task Information Tab
    Click Element                   ${JRASectionBJRAPTOTaskInfoTab}
    sleep   2
    Wait Until Element Is Visible   ${TaskInfoNoResults}                         30 seconds
    Screenshot      Task Information Visible

    # Task Information Add Button
    Click Element                   ${TaskInfoAddBtn}
    sleep   1
    Wait Until Page Does Not Contain        ${TaskInfoRecordLoading}          30 seconds
    Wait Until Element Is Visible   ${TaskInfoPF}                             60 seconds

    # Process Flow
    Click Element                   ${TaskInfoPF}
    Wait Until Element Is Visible   ${TaskInfoPFAdd}                          10 seconds
    Screenshot      Task Information Process flow clicked - Add Phase

    # Order
    Input Text                      ${TaskInfoOrder}                            1

    # Task / activity step description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${TaskInfoTaskStep}                      FR4 Capture Task Information ${CurrentDate}

    # Optional scenario:
    # Supporting Documents
    Click Element                   ${TaskInfoSupportDocsPanel}
    sleep   1
    Wait Until Element Is Visible   ${TaskInfoSuppDocsLinkXpath}            20 seconds
    Click Element                   ${TaskInfoSuppDocsLinkXpath}
    #Alert should be present
    Switch Window
    Sleep       1
    Wait Until Element Is Visible   ${TaskInfoSuppDocsURLXpath}             20 seconds
    Clear Element Text              ${TaskInfoSuppDocsURLXpath}
    Input Text                      ${TaskInfoSuppDocsURLXpath}             www.isomertix.com
    Input Text                      ${TaskInfoSuppDocsURLTitleXpath}        Isometrix
    Click Element                   ${TaskInfoSuppDocsAddXpath}
    Screenshot       Supporting Documents Link Added
    sleep       1
    Select Frame                            ${iFrame}

    # Save Button
    Click Element                   ${TaskInfoSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Page Should Contain Element     ${TaskInfoPFEdit}
    Page Should Contain Element     ${TaskInfoHazardsPanel}
    Page Should Contain Element     ${TaskInfoHazardsAddBtn}

    # Close Task Information
    Click Element                   ${TaskInfoCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          60 seconds
    sleep   2
    Click Element                   ${JRASectionBJRAPTOTaskInfoTab}
    sleep   2
    Wait Until Element Is Visible   ${TaskInfoAddedRecord}                  60 seconds
    Screenshot       Task Information Record in Sub Module

    # Section C - Work Execution Specification Tab
    Click Element                   ${JRASectionCWorkExecSpecTab}
    sleep   2
    Wait Until Element Is Visible   ${TaskInfoWorkExecutionTasksRecord}     30 seconds
    Screenshot      Work Execution Tasks Record visible

    # Section B - JRA / PTO Task Information Tab
    Click Element                   ${JRASectionBJRAPTOTaskInfoTab}
    sleep   2
    Wait Until Element Is Visible   ${TaskInfoAddedRecord}                  30 seconds
    Click Element                   ${TaskInfoAddedRecord}
    sleep   1
    Wait Until Page Does Not Contain        ${TaskInfoRecordLoading}          30 seconds
    Wait Until Element Is Visible   ${TaskInfoHazardsAddBtn}                  30 seconds

FR5 Capture Hazard
    Log to Console  FR5 Capture Hazard

    # Hazard Add Button
    Click Element                   ${TaskInfoHazardsAddBtn}
    sleep   1
    Wait Until Page Does Not Contain        ${TaskInfoRecordLoading}          30 seconds
    Wait Until Element Is Visible   ${HazardPF}                             60 seconds
    Wait Until Element Is Visible   ${HazardSaveAddUnwantEvent}             60 seconds

    # Process Flow
    Click Element                   ${HazardPF}
    Wait Until Element Is Visible   ${HazardPFAdd}                          10 seconds
    Screenshot      Hazard Process flow clicked - Add Phase

    # Hazard
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${HazardText}                           FR5 Capture Hazard ${CurrentDate}

    # Hazard classification
    Click Element                   ${HazardClassDD}
    sleep   1
    Wait Until Element Is Visible   ${HazardClassOption}                    10 seconds
    Click Element                   ${HazardClassOption}

    # Save to add unwanted events
    Click Element                   ${HazardSaveAddUnwantEvent}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Page Should Contain Element     ${HazardPFEdit}
    Page Should Contain Element     ${UnwantedEventsAddBtn}
    sleep   2
    Screenshot      Hazard Record Created and Process flow - Edit Phase

FR6 Capture Unwanted Events
    Log to Console  FR6 Capture Unwanted Events

    # Unwanted Events Add Button
    Click Element                   ${UnwantedEventsAddBtn}
    sleep   1
    Wait Until Page Does Not Contain        ${TaskInfoRecordLoading}        30 seconds
    Wait Until Element Is Visible   ${UnwantedEventsPF}                     60 seconds
    Wait Until Element Is Visible   ${UnwantedEventsSaveAddControls}        60 seconds

    # Process Flow
    Click Element                   ${UnwantedEventsPF}
    Wait Until Element Is Visible   ${UnwantedEventsPFAdd}                  10 seconds
    Screenshot      Unwanted Events Process flow clicked - Add Phase

    # Unwanted event
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${UnwantedEventText}                    FR6 Capture Unwanted Events ${CurrentDate}

    # Save to add controls
    Click Element                   ${UnwantedEventsSaveAddControls}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Page Should Contain Element     ${UnwantedEventsPFEdit}
    Page Should Contain Element     ${ControlsAddBtn}
    sleep   2
    Screenshot      Unwanted Events Record Created and Process flow - Edit Phase

FR7 Capture Controls
    Log to Console  FR7 Capture Controls

    # Controls Add Button
    Click Element                   ${ControlsAddBtn}
    sleep   1
    Wait Until Page Does Not Contain        ${TaskInfoRecordLoading}        30 seconds
    Wait Until Element Is Visible   ${ControlsPF}                           60 seconds
    Wait Until Element Is Visible   ${ControlsSaveandNew}                   60 seconds

    # Process Flow
    Click Element                   ${ControlsPF}
    Wait Until Element Is Visible   ${ControlsPFAdd}                        10 seconds
    Screenshot      Controls Process flow clicked - Add Phase

    # Control source
    # Alternate scenario 1: Select “Select from layer 2 controls” under Control source field.
    Click Element                   ${ControlsSourceDD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsSourceLayer2Control}          60 seconds
    Click Element                   ${ControlsSourceLayer2Control}
    sleep   1
    # Bowtie Control (Layer 2)
    Page Should Contain Element     ${ControlsBowtieLayer2DD}
    Click Element                   ${ControlsBowtieLayer2DD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsBowtieLayer2select}              60 seconds
    Click Element                   ${ControlsBowtieLayer2select}
    Screenshot     Bowtie Control (Layer 2) visible

    # Alternate scenario 2: Select “Select from layer 3 controls” under Control source field.
    sleep   2
    Click Element                   ${ControlsSourceDD}
    sleep   1
    Click Element                   ${ControlsSourceDDDeselect}
    sleep   1
#    Click Element                   ${ChangeReasonsValidationCls}
    Element Should Not Be Visible     ${ControlsBowtieLayer2DD}
    Click Element                   ${ControlsSourceDD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsSourceLayer3Control}          60 seconds
    Click Element                   ${ControlsSourceLayer3Control}
    sleep   1
    # Layer 3 control
    Page Should Contain Element     ${ControlsLayer3DD}
    Click Element                   ${ControlsLayer3DD}
    sleep   1
    Click Element                   ${ControlsLayer3DD}
    Screenshot     Layer 3 control visible

    # Main scenario: Select “Add new control” under Control source field.
    sleep   2
    Click Element                   ${ControlsSourceDD}
    sleep   1
    Click Element                   ${ControlsSourceDDDeselect}
    sleep   1
    Click Element                   ${ChangeReasonsValidationCls}
    Element Should Not Be Visible     ${ControlsLayer3DD}
    Click Element                   ${ControlsSourceDD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsSourceAddNewControl}          60 seconds
    Click Element                   ${ControlsSourceAddNewControl}
    sleep   1
    # Control (Layer 3)
    Page Should Contain Element     ${ControlsLayer3Text}
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ControlsLayer3Text}                    FR7 Capture Controls ${CurrentDate}
    sleep   1
    Screenshot     Control (Layer 3) visible

    # Procedure followed/Controls used as specified (PTO)
    Click Element                   ${ControlsPTODD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsPTONo}                60 seconds
    Click Element                   ${ControlsPTONo}
    sleep   1
    Click Element                   ${ControlsPTODD}
    sleep   1
    Wait Until Element Is Visible   ${ControlsPTOYes}               60 seconds
    Click Element                   ${ControlsPTOYes}
    sleep   1

    # Suggested remedies/Corrective Actions title
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ControlsSugRemActionTitle}     FR7 Capture Controls ${CurrentDate}
    sleep   1

    # Suggested remedies/Corrective Actions description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ControlsSugRemActionDesc}      FR7 Capture Controls ${CurrentDate}
    sleep   1

    # PTO Comments/Remarks
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ControlsPTOComments}           FR7 Capture Controls ${CurrentDate}
    sleep   1

    # Save Button
    Click Element                   ${ControlsSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Page Should Contain Element     ${ControlsPFEdit}
    Page Should Contain Element     ${ControlsSaveCloseBtn}
    sleep   2
    Screenshot      Controls Record Created and Process flow - Edit Phase

    # Save and Close
    Click Element                   ${ControlsSaveCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   1
    Wait Until Element Is Visible   ${ControlsSubModRecord}                 60 seconds

    # Close Unwanted Event
    Click Element                   ${UnwantedEventCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   1
    Wait Until Element Is Visible   ${UnwantedEventSubModRecord}            60 seconds

    # Close Hazard Record
    Click Element                   ${HazardCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   1
    Wait Until Element Is Visible   ${HazardSubModRecord}                   60 seconds

    # Close Task Information Record
    Click Element                   ${TaskInfoCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   2
    Wait Until Element Is Visible   ${JRASectionAGenPersonInfoTab}          60 seconds
    Screenshot      Section A - General and Personnel Information Tab

FR8 Update Work Execution Tasks
    Log to Console  FR8 Update Work Execution Tasks

    # Section C - Work Execution Specification Tab
    Sleep   2
    Wait Until Element Is Not Visible   ${JRARecordLoadingXpath}       60 seconds
    Click Element                   ${JRASectionCWorkExecSpecTab}
    sleep   2
    Wait Until Element Is Visible   ${TaskInfoWorkExecutionTasksRecord}     30 seconds
    Screenshot      Work Execution Tasks Record visible

    # Open Work Execution Tasks Record
    Click Element                   ${TaskInfoWorkExecutionTasksRecord}
    sleep   2
    Wait Until Page Does Not Contain        ${JRALoadingDataXpath}          30 seconds
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksRecordNo}                30 seconds
    Wait Until Element Is Enabled   ${WorkExecTasksPF}                      30 seconds

    # Process Flow
    Click Element                   ${WorkExecTasksPF}
    Wait Until Element Is Visible   ${WorkExecTasksPFEdit}                  10 seconds
    Screenshot      Work Execution Tasks Process flow clicked - Edit Phase

    # Task / activity step description
    Page Should Contain Element     ${WorkExecTasksStepDesc}

    # Is the procedure being observed the same as the listed above in the JRA
    # Alternate scenario 1: Select “Yes” for Is the procedure being observed the same as the listed above in the JRA field.
    Click Element                   ${WorkExecTasksProcJRADD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksProcJRAYes}              20 seconds
    Click Element                   ${WorkExecTasksProcJRAYes}
    sleep   1
    Element Should Not Be Visible     ${WorkExecTasksProcRefNo}
    Element Should Not Be Visible     ${WorkExecTasksNameProc}
    Element Should Not Be Visible     ${WorkExecTasksDateProc}
    Element Should Not Be Visible     ${WorkExecTasksIssueNo}
    Screenshot      Procedure additional Fields not triggered
    # Main scenario: Select “No” for Is the procedure being observed the same as the listed above in the JRA field.
    Click Element                   ${WorkExecTasksProcJRADD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksProcJRANo}               20 seconds
    Click Element                   ${WorkExecTasksProcJRANo}
    sleep   1
    Element Should Be Visible       ${WorkExecTasksProcRefNo}
    Element Should Be Visible       ${WorkExecTasksNameProc}
    Element Should Be Visible       ${WorkExecTasksDateProc}
    Element Should Be Visible       ${WorkExecTasksIssueNo}
    Screenshot     Procedure additional Fields not triggered

    # Procedure reference number (if available)
    Input Text                      ${WorkExecTasksProcRefNo}               12345

    # Name of procedure
    Input Text                      ${WorkExecTasksNameProc}                AutoTest

    # Date of procedure
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${WorkExecTasksDateProc}                ${CurrentDate}
    sleep   1

    # Issue / version number
    Input Text                      ${WorkExecTasksIssueNo}                 54321

    # Are the person/s physically fit to conduct the work?
    # Alternate scenario 2: Select “Yes” for Are the person/s physically fit to conduct the work? field.
    Click Element                   ${WorkExecTasksPersonFitWorkDD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksPersonFitWorkYes}        20 seconds
    Click Element                   ${WorkExecTasksPersonFitWorkYes}
    sleep   1
    Element Should Not Be Visible     ${WorkExecTasksWhyNotFitWork}
    Element Should Not Be Visible     ${WorkExecTasksDescribeContext}
    Screenshot      Person physically fit additional Fields not triggered
    # Main scenario: 3.	Select “No” for Are the person/s physically fit to conduct the work? field.
    Click Element                   ${WorkExecTasksPersonFitWorkDD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksPersonFitWorkNo}         20 seconds
    Click Element                   ${WorkExecTasksPersonFitWorkNo}
    sleep   1
    Element Should Be Visible       ${WorkExecTasksWhyNotFitWork}
    Element Should Be Visible       ${WorkExecTasksDescribeContext}
    Screenshot     Person physically fit additional Fields not triggered

    # Why aren’t the person/s physically fit to conduct the work?
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${WorkExecTasksWhyNotFitWork}           FR8 Update Work Execution Tasks ${CurrentDate}

    # Describe any contextual and/ or environmental conditions at time of assessment that may be relevant
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${WorkExecTasksDescribeContext}         FR8 Update Work Execution Tasks ${CurrentDate}

    # Are the equipment/tools required for the task in place?
    # Alternate scenario 3: Select “Yes” for Are the equipment/tools required for the task in place? field.
    Click Element                   ${WorkExecTasksEquipTaskDD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksEquipTaskYes}            20 seconds
    Click Element                   ${WorkExecTasksEquipTaskYes}
    sleep   1
    Element Should Not Be Visible     ${WorkExecTasksWhyEquipNotWork}
    Screenshot      Equipment task in place additional Fields not triggered
    # Main scenario: 3.	Select “No” for Are the person/s physically fit to conduct the work? field.
    Click Element                   ${WorkExecTasksEquipTaskDD}
    sleep   1
    Wait Until Element Is Visible   ${WorkExecTasksEquipTaskNo}            20 seconds
    Click Element                   ${WorkExecTasksEquipTaskNo}
    sleep   1
    Element Should Be Visible       ${WorkExecTasksWhyEquipNotWork}
    Screenshot     Equipment task in place additional Fields not triggered

    # Why isn’t the Equipment/tools required for the task in place?
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${WorkExecTasksWhyEquipNotWork}         FR8 Update Work Execution Tasks ${CurrentDate}

    # Save Button
    Click Element                   ${WorkExecTasksSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                     60 seconds
    sleep   2
    Screenshot      Updated Work Execution Tasks Record

FR9 Capture Work Execution Specification
    Log to Console  FR9 Capture Work Execution Specification

    # Add Button
    Scroll element into view        ${WorkExecSpecRefreshSubMod}
    sleep   1
    Click Element                   ${WorkExecSpecAddBtn}
    sleep   1
    Wait Until Element Is Not Visible        ${TaskInfoRecordLoading}        30 seconds
    Wait Until Element Is Visible   ${WorkExecSpecPF}                       60 seconds
    Wait Until Element Is Visible   ${WorkExecSpecSaveNewBtn}               60 seconds
    Page Should Contain Element     ${WorkExecSpecObservationObserverDD}

    # Process Flow
    Click Element                   ${WorkExecSpecPF}
    Wait Until Element Is Visible   ${WorkExecSpecPFAdd}                    10 seconds
    Screenshot      Work Execution Specification Process flow clicked - Add Phase

    # Order
    Input text                      ${WorkExecSpecOrder}                    1

    # Question
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${WorkExecSpecQuestion}                 FR9 Capture Work Execution Specification ${CurrentDate}

    # Go / No-go
    Click Element                   ${WorkExecSpecGoNoGo}
    sleep   1
    Click Element                   ${WorkExecSpecGoNoGo}
    sleep   1

    # Training prompt
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${WorkExecSpecTrainPrompt}              FR9 Capture Work Execution Specification ${CurrentDate}

    # Related controls
    Click Element                   ${WorkExecSpecRelateControlsDD}
    sleep   8
    Click Element                   ${WorkExecSpecRelateControlsDD}
    sleep   1

    # Save Button
    Click Element                   ${WorkExecSpecSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                     60 seconds
    sleep   1
    Page Should Contain Element     ${WorkExecSpecRecordNo}
    Screenshot      Captured Work Execution Specification Record

    # Close Button
    Click Element                   ${WorkExecSpecCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   2
    Wait Until Element Is Visible   ${WorkExecSpecSubModRecord}             60 seconds

    # Close Work Execution Tasks Record
    Click Element                   ${WorkExecTasksCloseBtn}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    Wait Until Element Is Visible   ${JRASectionAGenPersonInfoTab}          60 seconds
    Sleep   2                      30 seconds
    Click Element                   ${ProcessFlow}
    Wait Until Element Is Visible   ${ProcessFlowEdit}                      10 seconds
    Screenshot      Process flow clicked - Edit Phase

    # Section C - Work Execution Specification Tab
    Click Element                   ${JRASectionCWorkExecSpecTab}
    sleep   2
    Wait Until Element Is Visible   ${WorkExecTasksRecordNoSpec1}           30 seconds
    sleep   2
    Screenshot      Work Execution Tasks Record - Number of Specifications_1 visible

FR10 Sign off the Change Log
    Log to Console  FR10 Sign off the Change Log

    # Section A - General and Personnel Information
    Click Element                   ${JRASectionAGenPersonInfoTab}
    sleep   2
    Scroll element into view        ${JRAChangeLogInLineSubMod}
    sleep   5

    # Open Change Log Record
    Click Element                   ${ChangeSubModRecord}
    sleep   2
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   1
    Wait Until Element Is Visible   ${ChangePF}                             60 seconds

    # Process Flow
    Click Element                   ${ChangePF}
    Wait Until Element Is Visible   ${ChangePFEdit}                         10 seconds
    Screenshot      Change Log Process flow clicked - Edit Phase

    # Completed Dropdown
    Element Should Not Be Visible   ${ChangeSignOffPanel}
    Element Should Not Be Visible   ${ChangeSignOffBy}
    Element Should Not Be Visible   ${ChangeSignOffDetailsCloseBtn}
    Click Element                   ${ChangeCompletedDD}
    sleep   1
    Wait Until Element Is Visible   ${ChangeCompletedDDYes}                 20 seconds
    Click Element                   ${ChangeCompletedDDYes}
    sleep   1
    Page Should Contain Element     ${ChangeSignOffPanel}
    Page Should Contain Element     ${ChangeSignOffBy}
    Page Should Contain Element     ${ChangeSignOffDetailsCloseBtn}
    Screenshot      Completed Dropdown = Yes - Sign Off Panel visible

    # Save Button
    Click Element                   ${ChangeSignSaveBtn}
    Wait Until Element Is Visible   ${RecordSaved2}                         60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved2}                     60 seconds
    sleep   1
    Page Should Contain Element     ${ChangePFComplete}
    Screenshot      Change Log Completed_Process - Complete Phase

    # Close Change Log Record
    Click Element                   ${ChangeCloseBtn}
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    Wait Until Element Is Visible   ${JRAReadOnlyModeLabel}                 60 seconds
    sleep   1
    Scroll element into view        ${JRAReadOnlyModeLabel}
    sleep   1
    Click Element                   ${ProcessFlow}
    Page Should Contain Element     ${ProcessFlowReadOnly}
    Screenshot      Process flow clicked - Read - only phase

FR11 Capture Actions
    Log to Console  FR11 Capture Actions

    FOR  ${i}     IN RANGE  1  4
    Click Element                   ${JRATabRightArrow}
    END
    Sleep       1
    Page Should Contain Element     ${JRAActionsTab}

    # Actions Tab
    Wait Until Element Is Visible   ${JRAActionsTab}                        40 seconds
    Sleep   1
    Click Element                   ${JRAActionsTab}
    sleep   1
    Wait Until Element Is Visible   ${ActionsAddbtn}                     30 seconds
    Screenshot   Actions tab clicked

    # Actions Add Button
    Click Element                   ${ActionsAddbtn}
    sleep   1
    Wait Until Element Is Not Visible        ${JRARecordLoadingXpath}          30 seconds
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
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable             ${CurrentDate}
    Input text                      ${ActionDescription}                 FR11 Capture Actions ${CurrentDate}

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

    # Close Actions Record
    Wait Until Element Is Visible    ${ActionsCloseIcon}                 40 seconds
    Click Element                    ${ActionsCloseIcon}
    sleep   2
    Switch Window
    Wait Until Element Is Visible    ${ActionsCloseIconConfirmYes}       30 seconds
    Click Element                    ${ActionsCloseIconConfirmYes}
    sleep   2
    Select Frame                     ${iFrame}
    Wait Until Element Is Not Visible        ${JRALoadingDataXpath}          30 seconds
    sleep   2
    Screenshot    Navigated back to Section A - General and Personnel Information tab

FR12 Edit Job Risk Assessment
    Log to Console  FR12 Edit Job Risk Assessment (Layer 3)

    # Active / inactive
    Page Should Contain Element     ${JRAActiveDefault}
    Click Element                   ${JRAActiveInactiveDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAActiveInactiveInactive}            30 seconds
    Click Element                   ${JRAActiveInactiveInactive}
    Page Should Contain Element     ${JRAActiveInactiveInactiveSelected}

    # Status
    Page Should Contain Element     ${JRAStatusActive}
    Click Element                   ${JRAStatusDD}
    sleep   1
    Wait Until Element Is Visible   ${JRAStatusInactive}                    30 seconds
    Click Element                   ${JRAStatusInactive}
    Page Should Contain Element     ${JRAStatusInactiveSelected}

    # Save Button
    Click Element                   ${JRASaveBtn}
    Wait Until Element Is Visible   ${RecordSaved}                      60 seconds
    Wait Until Element Is Not Visible   ${RecordSaved}                  60 seconds