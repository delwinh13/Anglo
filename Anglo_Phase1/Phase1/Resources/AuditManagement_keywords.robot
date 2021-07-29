*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Resource    ../Resources/vars.robot
Resource    ../Resources/AuditManagement_keywords.robot
Resource    ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\AuditManagement\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials Entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep   10
    Screenshot   Home page

Add Supplier Audit Management Record
    Log To Console    Add Supplier Audit Management Record

    # Add Button
    Wait Until Element Is Visible        ${AuditManagementAddButtonID}    40 seconds
    Click Element                        ${AuditManagementAddButtonID}
    Screenshot    Add button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible        ${AuditManagementAuditTabXpath}    40 seconds
    Element Should Be Visible            ${AuditManagementAuditTabXpath}
    Element Should Be Visible            ${AuditManagementSuppDocsTabXpath}

    # Process Flow
    Click Element                        ${AuditManagementPF}
#    Page Should Contain Element          ${AuditManagementPFLogging}

    # Business Unit
    Click Element                        ${AuditManagementBussinesUnitDdID}
    Sleep   1
    Wait Until Element Is Visible   ${AuditMngBussUnitDdExpandXpath}         20 seconds
    Click Element                   ${AuditMngBussUnitDdExpandXpath}
    sleep   1
    Wait Until Element Is Visible   ${AuditMngBussUnitDdExpand2Xpath}              20 seconds
    Click Element                   ${AuditMngBussUnitDdExpand2Xpath}
    sleep   1
    Wait Until Element Is Visible   ${AuditMngBussUnitDdExpand3Xpath}                 20 seconds
    Click Element                   ${AuditMngBussUnitDdExpand3Xpath}
    sleep   1
    Wait Until Element Is Visible   ${AuditMngBussUnitDdSelectID}            20 seconds
    Click Element                   ${AuditMngBussUnitDdSelectID}
    sleep   1

    # Project Link
    # Alternate scenario 1: Do not select the Link to project?
    Wait Until Element Is Visible        ${AuditMngLinkProjectCheckID}          40 seconds
    Element Should Not Be Visible        ${AuditMngProjectDdID}
    Click Element                        ${AuditMngLinkProjectCheckID}
    Wait Until Element Is Visible        ${AuditMngProjectDdID}                 40 seconds
    Element Should Be Visible            ${AuditMngProjectDdID}

    # Risk discipline
    Click Element                        ${AuditManagementRiskDiscDD}
    Sleep   2
    Wait Until Element Is Visible        ${AuditManagementRiskDiscSelectAll}    40 seconds
    Click Element                        ${AuditManagementRiskDiscSelectAll}
    Sleep   1

    # Functional location
    Click Element                        ${AuditMngFuncLocationDdID}
    Sleep   1
    Wait Until Element Is Visible        ${AuditMngFuncLocResultDdID}       40 seconds
    Click Element                        ${AuditMngFuncLocResultDdID}

    # Project
    Wait Until Element Is Visible        ${AuditMngProjectDdID}             40 seconds
    Click Element                        ${AuditMngProjectDdID}
    Wait Until Element Is Visible        ${AuditMngProjectOptionID}         40 seconds
    Click Element                        ${AuditMngProjectOptionID}

    # Title
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                 ${CurrentDate}
    Input text                          ${AuditManagementTitleXpath}       FR1 - Capture Audit Management Record ${CurrentDate}
    Screenshot    information entered

    # Audit Scope
    Input text                          ${AuditScope}                      FR1 - Capture Audit Management Record ${CurrentDate}

    #Alternate Scenario 2 (Internal Audit Type)
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeInternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeInternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuitMngTemplateDdID}             40 seconds
    Element Should Be Visible            ${AuitMngTemplateDdID}
    Element Should Not Be Visible        ${AuitMngStakeholderDdID}
    # Unselect Internal after validation
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeInternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeInternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditManagementAuditTypeID}
    Sleep    1 seconds
    Screenshot   Internal Audit info
    # End Alternate Scenario 2

    # Alternate Scenario 3 (External Audit Type)
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditManagementAuditTypeID}
    Sleep    1 seconds
    Element Should Not Be Visible        ${AuitMngTemplateDdID}
    Element Should Not Be Visible        ${AuitMngStakeholderDdID}
    Screenshot  External Audit info
    # Unselect External after validation
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditManagementAuditTypeID}
    Sleep    1 seconds
    Screenshot   Unselect External audit
    # End Alternate Scenario 3

    # Select Supplier for Audit type
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeSupplierXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeSupplierXpath}
    Click Element                        ${AuditManagementAuditTypeID}

    # Related Stakeholder
    Wait Until Element Is Visible        ${AuitMngStakeholderDdID}              40 seconds
    Element Should Be Visible            ${AuitMngStakeholderDdID}
    Click Element                        ${AuitMngStakeholderDdID}
    Wait Until Element Is Visible        ${AuditMngPStakeholderSearchXpath}     40 seconds
    Input Text                           ${AuditMngPStakeholderSearchXpath}     auto
    Press Keys                           ${AuditMngPStakeholderSearchXpath}     ENTER
    Wait Until Element Is Visible        ${AuditMngStakeholderResultID}         40 seconds
    Click Element                        ${AuditMngStakeholderResultID}

    # Audit template
    Wait Until Element Is Visible        ${AuitMngTemplateDdID}                 40 seconds
    Element Should Be Visible            ${AuitMngTemplateDdID}
    Click Element                        ${AuitMngTemplateDdID}
    Wait Until Element Is Visible        ${AuitMngTemplateOptionExpandXpath}             40 seconds
    Sleep    1 seconds
    Click Element                        ${AuitMngTemplateOptionExpandXpath}
    Wait Until Element Is Visible        ${AuitMngTemplateOptionResultID}       40 seconds
    Sleep    1 seconds
    Click Element                        ${AuitMngTemplateOptionResultID}    
    Scroll Element Into View             ${AuditObjective}

    # Process/Activity
    Wait Until Element Is Visible        ${AuditMngProcessActivityID}
    Click Element                        ${AuditMngProcessActivityID}
    Wait Until Element Is Visible        ${AuditMngProcessSearchXpath}
    Input Text                           ${AuditMngProcessSearchXpath}          Exploration
    Press Keys                           ${AuditMngProcessSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditMngProcessResultXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessDdExpandXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessDdSelectXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessActivityID}

    # Audit manager
    Wait Until Element Is Visible        ${AuditMngManagerDdID}                 40 seconds
    Click Element                        ${AuditMngManagerDdID}
    Wait Until Element Is Visible        ${AuditMngManagerSearchXpath}          40 seconds
    Input Text                           ${AuditMngManagerSearchXpath}          1 Administrator
    Press Keys                           ${AuditMngManagerSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditMngManagerSearchResultXpath}    40 seconds
    Click Element                        ${AuditMngManagerSearchResultXpath}

    # Auditee
    Wait Until Element Is Visible        ${AuditMngAuditeeDdID}                 40 seconds
    Click Element                        ${AuditMngAuditeeDdID}
    Wait Until Element Is Visible        ${AuditMngAuditeeSearchXpath}          40 seconds
    Input Text                           ${AuditMngAuditeeSearchXpath}          AutoTest
    Press Keys                           ${AuditMngAuditeeSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditMngAuditeeSearchResultXpath}    40 seconds
    Click Element                        ${AuditMngAuditeeSearchResultXpath}
    Sleep    1 seconds
    Screenshot   Select supplier

    # Get the current date for the started date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}
    Click Element                        ${AuditMngAuditStartDateXpath}
    Input Text                           ${AuditMngAuditStartDateXpath}    ${CurrentDate}
    Sleep    1 seconds
    Screenshot   Current Date entered

    # Get the next day for the end date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=+3 day
    Click Element                        ${AuditMngAuditEndDateXpath}
    Input Text                           ${AuditMngAuditEndDateXpath}    ${NextDate}
    Click Element                        ${AuditMngSaveContButtonXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   Date entered

    # Introduction
    Sleep   1
    Input Text                          ${AuditIntroduction}                FR1 - Capture Audit Management Record ${CurrentDate}

    # Audit Objective
    Input Text                          ${AuditObjective}                   FR1 - Capture Audit Management Record ${CurrentDate}

Add External Audit Management Record
    Log To Console    Add External Audit Management Record
    Wait Until Element Is Visible        ${AuditManagementAddButtonID}    40 seconds
    Click Element                        ${AuditManagementAddButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible        ${AuditManagementAuditTabXpath}    40 seconds
    Element Should Be Visible            ${AuditManagementAuditTabXpath}
    Element Should Be Visible            ${AuditManagementSuppDocsTabXpath}

    Click Element                        ${AuditManagementPF}
    Page Should Contain Element          ${AuditManagementPFLogging}
    Wait Until Element Is Visible        ${AuditManagementBussinesUnitDdID}    40 seconds
    Click Element                        ${AuditManagementBussinesUnitDdID}
    Sleep   1
    Wait Until Element Is Visible        ${AuditMngBussUnitDdExpandXpath}         20 seconds
    Click Element                        ${AuditMngBussUnitDdExpandXpath}
    sleep   1
    Wait Until Element Is Visible        ${AuditMngBussUnitDdExpand2Xpath}              20 seconds
    Click Element                        ${AuditMngBussUnitDdExpand2Xpath}
    sleep   1
    Wait Until Element Is Visible        ${AuditMngBussUnitDdExpand3Xpath}                 20 seconds
    Click Element                        ${AuditMngBussUnitDdExpand3Xpath}
    sleep   1
    Wait Until Element Is Visible        ${AuditMngBussUnitDdSelectID}            20 seconds
    Click Element                        ${AuditMngBussUnitDdSelectID}
    sleep   1
    Wait Until Element Is Visible        ${AuditMngLinkProjectCheckID}    40 seconds
    Element Should Not Be Visible        ${AuditMngProjectDdID}
    Click Element                        ${AuditMngLinkProjectCheckID}
    Wait Until Element Is Visible        ${AuditMngProjectDdID}    40 seconds
    Element Should Be Visible            ${AuditMngProjectDdID}
    Wait Until Element Is Visible        ${AuditMngFuncLocationDdID}    40 seconds
    Click Element                        ${AuditMngFuncLocationDdID}
    Wait Until Element Is Visible        ${AuditMngFuncLocResultDdID}    40 seconds
    Click Element                        ${AuditMngFuncLocResultDdID}
    Wait Until Element Is Visible        ${AuditMngProjectDdID}    40 seconds
    Click Element                        ${AuditMngProjectDdID}
    Wait Until Element Is Visible        ${AuditMngProjectOptionID}    40 seconds
    Click Element                        ${AuditMngProjectOptionID}
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                 ${CurrentDate}
    Wait Until Element Is Visible        ${AuditManagementTitleXpath}    40 seconds
    Click Element                        ${AuditManagementTitleXpath}
    Input text                           ${AuditManagementTitleXpath}       FR10 - Request Audit Verification ${CurrentDate}
    Screenshot   Add external Audit info

    #Alternate Scenario 3 (External Audit Type)
    Click Element                        ${AuditManagementAuditTypeID}
    Wait Until Element Is Visible        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngAuditTypeExternalXpath}
    Sleep    1 seconds
    Click Element                        ${AuditManagementAuditTypeID}
    Sleep    1 seconds
    # Element Should Not Be Visible        ${AuitMngTemplateDdID}
    # Element Should Not Be Visible        ${AuitMngStakeholderDdID}
    # #Unselect External after validation
    # Click Element                        ${AuditManagementAuditTypeID}
    # Wait Until Element Is Visible        ${AuditMngAuditTypeExternalXpath}
    # Sleep    1 seconds
    # Click Element                        ${AuditMngAuditTypeExternalXpath}
    # Sleep    1 seconds
    # Click Element                        ${AuditManagementAuditTypeID}
    # Sleep    1 seconds
    #End Alternate Scenario 3

    # #Select Supplier for Audit type
    # Click Element                        ${AuditManagementAuditTypeID}
    # Wait Until Element Is Visible        ${AuditMngAuditTypeSupplierXpath}
    # Sleep    1 seconds
    # Click Element                        ${AuditMngAuditTypeSupplierXpath}
    # Click Element                        ${AuditManagementAuditTypeID}
    # Wait Until Element Is Visible        ${AuitMngStakeholderDdID}    40 seconds
    # Element Should Be Visible            ${AuitMngStakeholderDdID}
    # Click Element                        ${AuitMngStakeholderDdID}
    # Wait Until Element Is Visible        ${AuditMngPStakeholderSearchXpath}    40 seconds
    # Input Text                           ${AuditMngPStakeholderSearchXpath}    A
    # Press Keys                           ${AuditMngPStakeholderSearchXpath}    ENTER
    # Wait Until Element Is Visible        ${AuditMngStakeholderResultID}    40 seconds
    # Click Element                        ${AuditMngStakeholderResultID}
    # Wait Until Element Is Visible        ${AuitMngTemplateDdID}    40 seconds
    # Element Should Be Visible            ${AuitMngTemplateDdID}
    # Click Element                        ${AuitMngTemplateDdID}
    # Wait Until Element Is Visible        ${AuitMngTemplateOptionID}    40 seconds
    # Sleep    1 seconds
    # Click Element                        ${AuitMngTemplateOptionExpandXpath}
    # Wait Until Element Is Visible        ${AuitMngTemplateOptionResultID}    40 seconds
    # Sleep    1 seconds
    # Click Element                        ${AuitMngTemplateOptionResultID}    
    Wait Until Element Is Visible        ${AuditMngProcessActivityID}
    Click Element                        ${AuditMngProcessActivityID}
    Wait Until Element Is Visible        ${AuditMngProcessSearchXpath}
    Input Text                           ${AuditMngProcessSearchXpath}          Exploration
    Press Keys                           ${AuditMngProcessSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditMngProcessResultXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessDdExpandXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessDdSelectXpath}
    Sleep    1 seconds
    Click Element                        ${AuditMngProcessActivityID}
    Wait Until Element Is Visible        ${AuditMngManagerDdID}                 40 seconds
    Click Element                        ${AuditMngManagerDdID}
    Wait Until Element Is Visible        ${AuditMngManagerSearchXpath}          40 seconds
    Input Text                           ${AuditMngManagerSearchXpath}          1 Administrator
    Press Keys                           ${AuditMngManagerSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditMngManagerSearchResultXpath}    40 seconds
    Click Element                        ${AuditMngManagerSearchResultXpath}
    Wait Until Element Is Visible        ${AuditMngAuditeeDdID}    40 seconds
    Click Element                        ${AuditMngAuditeeDdID}
    Wait Until Element Is Visible        ${AuditMngAuditeeSearchXpath}    40 seconds
    Input Text                           ${AuditMngAuditeeSearchXpath}    AutoTest
    Press Keys                           ${AuditMngAuditeeSearchXpath}    ENTER
    Wait Until Element Is Visible        ${AuditMngAuditeeSearchResultXpath}    40 seconds
    Click Element                        ${AuditMngAuditeeSearchResultXpath}
    Sleep    1 seconds
    Screenshot   Add external Audit info

    #Get the current date for the started date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}
    Click Element                        ${AuditMngAuditStartDateXpath}
    Input Text                           ${AuditMngAuditStartDateXpath}    ${CurrentDate}
    Sleep    1 seconds

    #Get the next day for the end date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=1day    
    Click Element                        ${AuditMngAuditEndDateXpath}
    Input Text                           ${AuditMngAuditEndDateXpath}    ${NextDate}
    Click Element                        ${AuditMngSaveContButtonXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   Add External Audit Management Record-Dates entered

Approve Audit Schedule
    Log To Console    Approve Audit Schedule
    #Update Schedule Approved to true
    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditMngDetailsTabXpath}    40 seconds
    Click Element                        ${AuditMngDetailsTabXpath}
    Sleep   5

    Wait Until Element Is Visible        ${AuditMngScheduleApprovedXpath}    40 seconds
    Screenshot   Navigated to Audit Managemant Details tab
    Click Element                        ${AuditMngScheduleApprovedXpath}
    Wait Until Element Is Not Visible    ${AuditMngProposeNewDateID}    40 seconds
    Element Should Not Be Visible        ${AuditMngProposeNewDateID}
    SeleniumLibrary.Element Text Should Be               ${AuditMngApprovedByXpath}    AutoTest User
    Screenshot   click Approved

    #Get the current date to compare
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    ${DateApprovedValue}=    Get Value       ${AuditMngDateApprovedXpath}
    Should Be Equal    ${DateApprovedValue}    ${CurrentDate}
    Screenshot   compare dates

    #Validate Status field    
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    Scheduled
    Click Element                        ${AuitMngSaveButtonID}
    Screenshot   Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible        ${AuditMngStartAuditID}    40 seconds
    Element Should Be Visible            ${AuditMngStartAuditID}
    Element Should Be Visible            ${AuditManagementPFScheduled}
    Screenshot   Saved

Start Audit
    Log To Console    Start Audit
    Sleep    1 seconds
    Click Element                        ${AuditMngTeamTabXpath}
    Wait Until Element Is Visible        ${AuditMngConductorDdID}    40 seconds
    Screenshot   Audit Management team tab clicked
    Click Element                        ${AuditMngConductorDdID}
    Wait Until Element Is Visible        ${AuditMngConductorSearchXpath}    40 seconds
    Input Text                           ${AuditMngConductorSearchXpath}    AutoTest
    Sleep    1 seconds
    Press Keys                           ${AuditMngConductorSearchXpath}    ENTER   
    Sleep    1 seconds
    Wait Until Element Is Visible        ${AuditMngConductorSrchResultXpath}    40 seconds
    Click Element                        ${AuditMngConductorSrchResultXpath} 
    Sleep    1 seconds
    Screenshot   Start Audit - info entered
    Click Element                        ${AuditManagementAuditTabXpath}
    Wait Until Element Is Visible        ${AuditMngStartAuditBtnID}    40 seconds
    Screenshot  Start Audit- Audit Management tab clicked
    Click Element                        ${AuditMngStartAuditBtnID}
    Wait Until Element Is Visible        ${AuditMngReqVerificationBtnXpath}    40 seconds
    Element Should Be Visible            ${AuditMngReqVerificationBtnXpath}
    Sleep   2
    Wait Until Element Is Visible        ${AuditManagementFindingsTabXpath}
    Element Should Be Visible            ${AuditManagementFindingsTabXpath}
    Element Should Be Visible            ${AuditManagementPFInProgres}
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    In progress
    Screenshot   Audit Management Start btn clicked

FR1 - Capture Audit Management Record
    Log To Console    FR1 - Capture Audit Management Record

    Wait Until Page Contains Element     ${iFrame}                   120 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${AuditManagement1Xpath}    120 seconds
    Click Element                        ${AuditManagement1Xpath}
    Screenshot   FR1 Audit management clicked

    # Audit Management
    Wait Until Element Is Visible        ${AuditManagement2Xpath}    120 seconds
    Click Element                        ${AuditManagement2Xpath}
    Sleep       5

    # Search Button
    Wait Until Element Is Not Visible    ${LoadingPermissions}                   60 seconds
    Wait Until Element Is Enabled   ${SearchID}                     60 seconds
    Click Element                   ${SearchID}
    Sleep       5
    Screenshot      Search button clicked

    Add Supplier Audit Management Record
    Wait Until Element Is Visible        ${AuditMngTeamTabXpath}            240 seconds
    Sleep    5 seconds

    # Ensure required tabs and fields are visible after saving
    Element Should Be Visible            ${AuditMngTeamTabXpath}
    Element Should Be Visible            ${AuditManagementPFPlanned}
    Element Should Be Visible            ${AuditMngEventsTabXpath}
    Element Should Be Visible            ${AuditMngProposeNewDateID}
    Element Should Be Visible            ${AuditMngScheduleApprovedID}
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    Planning

    # Add Supporting Documents Link
    Wait Until Element Is Visible        ${AuditManagementSuppDocsTabXpath}    40 seconds
    Click Element                        ${AuditManagementSuppDocsTabXpath}
    Wait Until Element Is Visible        ${AuditMngSupportingDocLinkXpath}    40 seconds
    Screenshot   Supporting Docs Tab clicked
    Click Element                        ${AuditMngSupportingDocLinkXpath}
    Unselect Frame
    Wait Until Element Is Visible        ${AuditMngSupportingDocLinkFieldID}    40 seconds
    Click Element                        ${AuditMngSupportingDocLinkFieldID}
    Input Text                           ${AuditMngSupportingDocLinkFieldID}    www.google.com
    Click Element                        ${AuditMngSupportingDocTileFieldID}
    Input Text                           ${AuditMngSupportingDocTileFieldID}    Google
    Click Element                        ${AuditMngSupportingDocAddBtnID}
    Sleep    1 seconds
    Select Frame                         ${iFrame}
    Sleep    1 seconds
    Screenshot   Supporting Docs added
    Click Element                        ${AuitMngSaveButtonID}
    Screenshot   FR1 Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   FR1 Saved

FR2 - Approve the audit schedule
    Log To Console    Starting FR2 - Approve the audit schedule

    Approve Audit Schedule   
    Click Element                        ${AuditMngGoToSearchPageXpath}

FR2 - Approve the audit schedule Alternate Scenario
    Log To Console    Starting FR2 - Approve the audit schedule Alternate Scenario

    # Select Frame                         ${iFrame}    
    # Sleep     3 seconds
    # Wait Until Element Is Visible        ${AuditManagementXpath}    40 seconds
    # Click Element                        ${AuditManagementXpath}

    Sleep    2 seconds
    # AddCode Start
    Add Supplier Audit Management Record
    #AddCode End

    #Click Schedule Approved
    Wait Until Element Is Visible        ${AuditMngScheduleApprovedXpath}    40 seconds
    Click Element                        ${AuditMngScheduleApprovedXpath}
    Screenshot   FR2 Approved Audit Scheduler

    #Get the record number
    ${RecordNumberFieldText}    Get Text      ${RecordNumberFieldXpath}
    ${RecordNumber}             Fetch From Right    ${RecordNumberFieldText}    Record #
    Set Global Variable    ${RecordNumber}
    Log To Console    Record Number is ${RecordNumber}

    #Submit Planning Button
    Wait Until Element Is Visible        ${AuditMngSubmitPlanBtnID}         40 seconds
    Click Element                        ${AuditMngSubmitPlanBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                 40 seconds
    Screenshot    FR2 Submit Plan Btn
    Page Should Contain Element          ${AuditManagementAddButtonID}      

FR2 - Approve the audit schedule other than auditee
    Log To Console    Starting FR2 - Approve the audit schedule other than auditee

    # Search for the previously saved record
    Wait Until Element Is Visible        ${ViewFilterBtn}                   40 seconds
    Click Element                        ${ViewFilterBtn}
    Sleep   1
    Click Element                        ${AuditRecordSearchFieldXpath}
    Input Text                           ${AuditRecordSearchFieldXpath}    ${RecordNumber}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                 40 seconds
    Screenshot    FR2 Record number added
    Click Element                        ${AuditSearchFilterButtonID}
    Wait Until Element Is Visible        ${AuditSearchFilterRecordXpath}    40 seconds
    Screenshot    FR2 Audit filter record clicked
    Click Element                        ${AuditSearchFilterRecordXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                 120 seconds
#    Element Should Not Be Visible        ${AuditMngScheduleApprovedXpath}
    Screenshot    FR2 Record searched

FR3 - Propose new dates for the audit
    Log To Console    Starting FR3 - Propose new dates for the audit

    # Propose New Dates check box should not be editable / visible
#    Element Should Not Be Visible        ${AuditProposeNewDatesXpath}

FR3 - Propose new dates as the auditee
    Log To Console    Starting FR3 - Propose new dates as the auditee

    # Select Frame                         ${iFrame}    
    # Sleep     3 seconds
    # Wait Until Element Is Visible        ${AuditManagementXpath}    40 seconds
    # Click Element                        ${AuditManagementXpath}
    # FR3 - Propose new dates as the auditee
   
    # AddCode Start
    Add Supplier Audit Management Record
    #AddCode End

    # Select Propose new Dates
    Wait Until Element Is Visible        ${AuditProposeNewDatesXpath}       40 seconds
    Click Element                        ${AuditProposeNewDatesXpath}
    Wait Until Element Is Not Visible    ${AuditMngScheduleApprovedXpath}    40 seconds
    Element Should Not Be Visible        ${AuditMngScheduleApprovedXpath}
    Element Should Be Visible            ${AuditSuggestedStartDateXpath}
    Sleep    1 seconds

    # Set Suggested Start Date
    Click Element                        ${AuditSuggestedStartDateXpath}
    Input Text                           ${AuditSuggestedStartDateXpath}    ${CurrentDate}
    Sleep    1 seconds

    #Set Suggestedd End Date
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=1day    
    Click Element                        ${AuditSuggestedEndDateXpath}
    Input Text                           ${AuditSuggestedEndDateXpath}    ${NextDate}
    Click Element                        ${AuditSuggestedEndDateXpath}
    Sleep    1 seconds
    Click Element                        ${AuditProposedDatesCommentsXpath}
    Input Text                           ${AuditProposedDatesCommentsXpath}     Testing Comments
    Screenshot    FR3 Record info captured
    Click Element                        ${AuitMngSaveButtonID}    
    Wait Until Element Is Visible        ${RecordSaved}                      60 seconds
    Wait Until Element Is Not Visible    ${RecordSaved}                  60 seconds
    Screenshot    FR3 Save button clicked

# FR3 - Audit Manager Accepts New Proposed Dates (Need to confirm how to get user creds)
    
FR4 - Capture Audit Team
#      Sleep    3 seconds
#     # Select Frame                         ${iFrame}    
#     # Sleep     3 seconds
#     # Wait Until Element Is Visible        ${AuditManagementXpath}    40 seconds
#     # Click Element                        ${AuditManagementXpath}

#     Add Supplier Audit Management Record

     # Add Audit Team Record
     Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
     Click Element                        ${AuditMngTeamTabXpath}
     Wait Until Element Is Visible        ${AuditMngConductorDdID}    40 seconds
     Screenshot   Audit Management team tab clicked
     Click Element                        ${AuditMngConductorDdID}
     Wait Until Element Is Visible        ${AuditMngConductorSearchXpath}    40 seconds
     Input Text                           ${AuditMngConductorSearchXpath}    AutoTest
     Sleep    1 seconds
     Press Keys                           ${AuditMngConductorSearchXpath}    ENTER
     Sleep    1 seconds
     Wait Until Element Is Visible        ${AuditMngConductorSrchResultXpath}    40 seconds
     Click Element                        ${AuditMngConductorSrchResultXpath}
     Sleep    2 seconds
     Click Element                        ${AuditMngTeamTabXpath}
     Sleep    2 seconds
     Wait Until Element Is Visible        ${AuditTeamAddRecordBtnXpath}         40 seconds
     Sleep    2 seconds
     Click Element                        ${AuditTeamAddRecordBtnXpath}
     Wait Until Element Is Visible        ${AuditTeamFullNameDdID}              40 seconds
     Sleep    3 seconds
     Click Element                        ${AuditTeamFullNameDdID}
     Wait Until Element Is Visible        ${AuditTeamSrchXpath}                 40 seconds
     Input Text                           ${AuditTeamSrchXpath}                 AutoTest
     Press Keys                           ${AuditTeamSrchXpath}                 ENTER
     Wait Until Element Is Visible        ${AuditTeamSearchResultXpath}         40 seconds
     Click Element                        ${AuditTeamSearchResultXpath}
     Click Element                        ${AuditTeamExperienceDdID}
     Wait Until Element Is Visible        ${AuditTeamExperienceOptionXpath}    40 seconds
     Click Element                        ${AuditTeamExperienceOptionXpath}
     Sleep    1 seconds
     Click Element                        ${AuditTeamSaveBtnXpath}
     Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

FR5 - View Related Events
    Log To Console    Starting FR5 - View Related Events

    #Navigate to Events tab
    Sleep    3 seconds
    Wait Until Element Is Visible        ${AuditManagementEventsTabXpath}    40 seconds
    Click Element                        ${AuditManagementEventsTabXpath}
    Wait Until Element Is Visible        ${AuditMngEventsContentGridXpath}    40 seconds
    Element Should Be Visible            ${AuditMngEventsContentGridXpath}
    Screenshot    FR5 Audit Management Event tab clicked
    Click Element                        ${AuditMngEventsContentGridXpath}

    # Select the Event Management Record in the new tab
    Sleep    15 seconds
#    Screenshot    FR5 Content grid clicked
#    ${title_var}        Get Window Titles
#    Switch Window       title=${title_var}[1]
#    Sleep    1 seconds
    Close Browser

FR6 - Start Audit
    Log To Console    Starting FR6 - Start Audit

    Sleep     1 seconds    
    Launch IsoMetrix Application
    Login with Valid Credentials

    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${AuditManagement1Xpath}    40 seconds
    Click Element                        ${AuditManagement1Xpath}
    Screenshot   FR1 Audit management clicked

    # Audit Management
    Wait Until Element Is Visible        ${AuditManagement2Xpath}    40 seconds
    Click Element                        ${AuditManagement2Xpath}
    Sleep       5

    Add Supplier Audit Management Record
    Approve Audit Schedule

    # Start Audit
    Start Audit

FR7 - Conduct an internal or supplier Audit
    Log To Console    Starting FR7 - Conduct an internal or supplier Audit

    #Start the Audit
    Click Element                        ${AuditManagementStartBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #Ensure Checklist is loaded
    Wait Until Element Is Visible        ${AuditManagementFindingsTabXpath}    40 seconds
    Element Should Be Visible            ${AuditManagementFindingsTabXpath}

    #Question 1
    Click Element                        ${AuitMngQ1DdID}
    Sleep    3 seconds
    Click Element                        ${AuditMngQ1OptionXpath}

    #Save Current Session
    Sleep    1 seconds
    Click Element                        ${AuditMngChecklistSaveXpath}
    Wait Until Element Is Not Visible    ${LoadingDataXpath}    40 seconds

    #Close Checklist
    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditMngChecklistCloseBtnXpath}    40 seconds
    Click Element                        ${AuditMngChecklistCloseBtnXpath}
    Sleep   5 seconds
    Wait Until Element Is Not Visible    ${LoadingDataXpath}                40 seconds
    Wait Until Element Is Visible        ${AuditManagmentContinueBtnID}    40 seconds
    Element Should Be Visible            ${AuditManagmentContinueBtnID}

FR7 - Continue an internal or supplier Audit
    Log To Console    Starting FR7 - Continue an internal or supplier Audit

    #Continue Audit
    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditManagmentContinueBtnID}    40 seconds
    Click Element                        ${AuditManagmentContinueBtnID}
    Sleep   5

    #Ensure Checklist is loaded
    Wait Until Element Is Visible        ${AuditManagmentFinishBtnID}    40 seconds
    Element Should Be Visible            ${AuditManagmentFinishBtnID}
    
    Click Element                        ${AuditMngChecklistCloseBtnXpath}
    Sleep   10
    Wait Until Element Is Not Visible    ${LoadingDataXpath}                120 seconds
    Wait Until Element Is Enabled        ${AuditManagmentContinueBtnID}    40 seconds

FR7 - Capture Findings Against Audit
    Log To Console    Starting FR7 - Capture Findings Against Audit
    # Wait Until Element Is Visible        ${AuditManagmentContinueBtnID}    40 seconds
    Sleep    2 seconds
    Click Element                        ${AuditManagmentContinueBtnID}
    Sleep   5
    Wait Until Element Is Not Visible    ${LoadingChecklist}                    40 seconds
    Wait Until Element Is Enabled        ${AuitMngQ2DdID}                       40 seconds
    Click Element                        ${AuitMngQ2DdID}
    Sleep   1
    Wait Until Element Is Visible        ${AuditMngQ2OptionXpath}               40 seconds
    Click Element                        ${AuditMngQ2OptionXpath}
    Wait Until Element Is Visible        ${AuditMngQ2CrossHairID}               40 seconds
    Click Element                        ${AuditMngQ2CrossHairID}
    Sleep   1
    Wait Until Element Is Not Visible    ${LoadingDataXpath}                    40 seconds
    Wait Until Element Is Not Visible    ${LoadingPermissions}                    40 seconds
    Wait Until Element Is Visible        ${AuditMngFindingFormID}               40 seconds
    Wait Until Element Is Visible        ${AuditMngFindingAddBtnXpath}          40 seconds
    Sleep    2 seconds
    Click Element                        ${AuditMngFindingAddBtnXpath}
    Wait Until Element Is Not Visible    ${LoadingDataXpath}                    40 seconds
    Wait Until Element Is Visible        ${AuitMngFindingDescXpath}             40 seconds
    Click Element                        ${AuitMngFindingDescXpath}
    Input Text                           ${AuitMngFindingDescXpath}             Auto Testing
    Click Element                        ${AuitMngFindingOwnerDdID}
    Wait Until Element Is Visible        ${AuditMngFindingOwnerSearchXpath}     40 seconds
    Input Text                           ${AuditMngFindingOwnerSearchXpath}     AutoTest
    Press Keys                           ${AuditMngFindingOwnerSearchXpath}     ENTER
    Wait Until Element Is Visible        ${AuditMngFindingOwnerSrchRsltXpath}   40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditMngFindingOwnerSrchRsltXpath}

    Click Element                        ${AuitMngFindingClassDdID}
    Wait Until Element Is Visible        ${AuditMngFindingClassOptionXpath}     40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditMngFindingClassOptionXpath}
    Wait Until Element Is Visible        ${AuditMngFindingSaveContBtnID}        40 seconds
    Click Element                        ${AuditMngFindingSaveContBtnID}    
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                     40 seconds
    Screenshot      Findings Against Audit created
    # Why Analysis Panel
    Click Element                        ${AuditMngFindingWhyAnalysis}
    Scroll Element Into View             ${AuditMngFindingIndFactorsDD}
    sleep   1
    # Individual factors
    Click Element                        ${AuditMngFindingIndFactorsDD}
    Wait Until Element Is Visible        ${AuditMngFindingIndFactorsSelect}        40 seconds
    Click Element                        ${AuditMngFindingIndFactorsSelect}
    Click Element                        ${AuditMngFindingIndFactorsDD}
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                  ${CurrentDate}
    Input text                           ${AuditMngFindingIndFactorsDesc}                FR7 - Capture Findings Against Audit ${CurrentDate}
    # Workplace factors
    Click Element                        ${AuditMngFindingWorkFactorsDD}
    Wait Until Element Is Visible        ${AuditMngFindingWorkFactorsSelect}        40 seconds
    Click Element                        ${AuditMngFindingWorkFactorsSelect}
    Click Element                        ${AuditMngFindingWorkFactorsDD}
    Input text                           ${AuditMngFindingWorkFactorsDesc}                FR7 - Capture Findings Against Audit ${CurrentDate}
    Sleep   1
    # Organizational factors
    Scroll Element Into View             ${AuditMngFindingOrgFactorsDesc}
    Sleep   1
    Click Element                        ${AuditMngFindingWorkFactorsLbl}
    Click Element                        ${AuditMngFindingOrgFactorsDD}
    Sleep   1
    Wait Until Element Is Visible        ${AuditMngFindingOrgFactorsSelect}        40 seconds
    Click Element                        ${AuditMngFindingOrgFactorsSelect}
    Click Element                        ${AuditMngFindingOrgFactorsDD}
    Input text                           ${AuditMngFindingOrgFactorsDesc}                FR7 - Capture Findings Against Audit ${CurrentDate}
    Scroll Element Into View             ${AuditMngFindingInlineEdit}
    Sleep   1

FR7 - Capture Finding Actions
    Log To Console    Starting FR7 - Capture Finding Actions

    Sleep    1 seconds
    Wait Until Element Is Visible        ${AuditMngFindingActionsAddBtnXpath}    40 seconds
    Click Element                        ${AuditMngFindingActionsAddBtnXpath}
    Sleep   3
    Wait Until Element Is Visible        ${AuditMngFindingActionTypeDdID}       40 seconds
    Click Element                        ${AuditMngFindingActionTypeDdID}
    Sleep   1
    Wait Until Element Is Visible        ${AuditMngFindingActionTypeID}         40 seconds
    Click Element                        ${AuditMngFindingActionTypeID}
    Wait Until Element Is Visible        ${AuitMngFindingActionDescXpath}       40 seconds
    Click Element                        ${AuitMngFindingActionDescXpath}
    Input Text                           ${AuitMngFindingActionDescXpath}       Auto Testing
    Wait Until Element Is Visible        ${AuitMngFindingActionEnityXpath}      40 seconds
    Click Element                        ${AuitMngFindingActionEnityXpath}
    Sleep   3
    Wait Until Element Is Visible        ${AuditActionEntityExpandXpath}        40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditActionEntityExpandXpath}
    Sleep    1 seconds
    Click Element                        ${AuditActionEntityExpand2Xpath}
    Sleep    1 seconds
    Click Element                        ${AuditActionEntityExpand3Xpath}
    Sleep    1 seconds
    Click Element                        ${AuditActionEntitySelectXpath}
    Wait Until Element Is Visible        ${AuditActionRespDdID}                 40 seconds
    Click Element                        ${AuditActionRespDdID}
    Wait Until Element Is Visible        ${AuditActionRespSearchXpath}
    Input Text                           ${AuditActionRespSearchXpath}          AutoTest
    Press Keys                           ${AuditActionRespSearchXpath}          ENTER
    Wait Until Element Is Visible        ${AuditActionRespSearchResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditActionRespSearchResultXpath}
    Wait Until Element Is Visible        ${StakeGroupActionVerificationID}           40 seconds
    Click Element                        ${StakeGroupActionVerificationID}
    Sleep   1
    Wait Until Element Is Visible        ${StakeGroupActionVerificationXpath}        40 seconds
    Input Text                           ${StakeGroupActionVerificationXpath}        Admin
    Press Keys                           ${StakeGroupActionVerificationXpath}        ENTER
    Wait Until Element Is Visible        ${StakeGroupActionVerifyResultXpath}        40 seconds
    Sleep    1 seconds
    Click Element                        ${StakeGroupActionVerifyResultXpath}
    ${NextDate}       Get Current Date    result_format=%d-%m-%Y    increment=+3 day
    Click Element                        ${AuditActionDueDateXpath}
    Input Text                           ${AuditActionDueDateXpath}    ${NextDate}
    Sleep    1 seconds
    Click Element                        ${AuditActionRecurDD}
    Sleep   3
    Wait Until Element Is Visible        ${AuditActionRecurNo}                  40 seconds
    Click Element                        ${AuditActionRecurNo}
    Click Element                        ${AuditActionSaveButtonID}
    Sleep   2
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                     40 seconds
    Sleep    2 seconds
#    Wait Until Element Is Visible        ${AuditActionVerificationID}           40 seconds
#    Click Element                        ${AuditActionVerificationID}
#    Sleep   1
#    Wait Until Element Is Visible        ${AuditActionVerificationXpath}        40 seconds
#    Input Text                           ${AuditActionVerificationXpath}        Auto
#    Press Keys                           ${AuditActionVerificationXpath}        ENTER
#    Wait Until Element Is Visible        ${AuditActionVerifyResultXpath}        40 seconds
#    Sleep    1 seconds
#    Click Element                        ${AuditActionVerifyResultXpath}
#    Sleep    1 seconds
#    Click Element                        ${AuditActionSaveButtonID}
#    Wait Until Element Is Not Visible    ${LoadingBarXpath}                     40 seconds
#    Sleep    2 seconds
#    Click Element                        ${AuditActionCloseButtonXpath}
#    Wait Until Element Is Not Visible    ${LoadingBarXpath}                     40 seconds
    Screenshot      Findings Actions Audit created

FR7 - View Finding Actions Record
    Log To Console    Starting FR7 - View Finding Actions Record

    # Navigate back to audit management record
    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditMngNavLinkID}                   40 seconds
    Click Element                        ${AuditMngNavLinkID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                     40 seconds
    Wait Until Element Is Visible        ${AuditManagementFindingsTabXpath}
    Sleep    2 seconds
    Click Element                        ${AuditManagementFindingsTabXpath}
    Wait Until Element Is Visible        ${AuditMngFindingRecordXpath}          40 seconds
    Click Element                        ${AuditMngFindingRecordXpath}
    Sleep   3
    Wait Until Element Is Visible        ${AuitMngFindingDescXpath}             40 seconds
    Sleep    2 seconds
    Screenshot      View Findings Actions Record
    Click Element                        ${AuditMngNavLinkID}

FR8 - Conduct an external Audit
    Log To Console    Starting FR8 - Conduct an external Audit
    # Sleep    3 seconds
    # Select Frame                        ${iFrame}    
    # Sleep     3 seconds
    # Wait Until Element Is Visible        ${AuditManagementXpath}    40 seconds
    # Click Element                        ${AuditManagementXpath}
    
    Sleep    2 seconds
    Wait Until Element Is Visible            ${AuditMngSearchIconpXpath}    40 seconds
    Click Element                            ${AuditMngSearchIconpXpath}
    Sleep    3 seconds
    Screenshot      Audit Management Search Icon clicked

    Add External Audit Management Record
    Approve Audit Schedule
    Start Audit

    Sleep    2 seconds
    Click Element                        ${AuditManagementFindingsTabXpath}
    Wait Until Element Is Visible        ${AuditMngFindingAddBtnXpath}      40 seconds
    Element Should Be Visible            ${AuditMngFindingAddBtnXpath}
    Click Element                        ${AuditMngFindingAddBtnXpath}
    Wait Until Element Is Visible        ${AuditFindingDescXpath}           40 seconds
    Sleep    2 seconds
    Wait Until Element Is Not Visible    ${LoadingPermissions}                    40 seconds
    Click Element                        ${AuditFindingDescXpath}
    Input Text                           ${AuditFindingDescXpath}           Auto Testing
    Wait Until Element Is Visible        ${AuditFindingOwnerDdID}           40 seconds
    Click Element                        ${AuditFindingOwnerDdID}
    Wait Until Element Is Visible        ${AuditFindingOwnerSearchXpath}
    Input Text                           ${AuditFindingOwnerSearchXpath}    AutoTest
    Press Keys                           ${AuditFindingOwnerSearchXpath}    ENTER
    Wait Until Element Is Visible        ${AuditFindingOwnerResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditFindingOwnerResultXpath}
    Wait Until Element Is Visible        ${AuditFindingClassificationDdID}    40 seconds
    Click Element                        ${AuditFindingClassificationDdID}
    Wait Until Element Is Visible        ${AuditFindingClassOptionXpath}    40 seconds
    Click Element                        ${AuditFindingClassOptionXpath}
    Wait Until Element Is Visible        ${AuditFindingSaveButtonID}        40 seconds
    Click Element                        ${AuditFindingSaveButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                 40 seconds
    Sleep    2 seconds
    Click Element                        ${AuditMngNavLinkID}

FR10 - Request Audit Verification
    Log To Console    Starting FR10 - Request Audit Verification

    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditMngDetailsTabXpath}         40 seconds
    Screenshot    FR10 Navigate to Audit Mng nav link
    Click Element                        ${AuditMngDetailsTabXpath}
    Wait Until Element Is Visible        ${AuditMngReqVerificationBtnXpath}    40 seconds
    Screenshot    FR10 Audit Mng Details Tab clicked
    Click Element                        ${AuditMngReqVerificationBtnXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}                 40 seconds
    Sleep    1 seconds
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    Awaiting verification
    Click Element                        ${AuditManagementPF}
    Page Should Contain Element          ${AuditManagementPFAwaitVerify}
    Screenshot    FR10 Request Audit Verification clicked

FR11 - Verification Approval
    Log To Console    Starting FR11 - Verification Approval

    Wait Until Element Is Visible        ${AuditMngVerificationTabXpath}    40 seconds
    Click Element                        ${AuditMngVerificationTabXpath}
    Wait Until Element Is Visible        ${AuditMngVerificationAddBtnXpath}    40 seconds
    Screenshot    FR11 Audit Mng Verification Tab clicked
    Click Element                        ${AuditMngVerificationAddBtnXpath}
    Sleep   2
    Wait Until Element Is Visible        ${AuditVerifyAuditorTypeDdID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR11 Add button click
    Click Element                        ${AuditVerifyAuditorTypeDdID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorTypeOptionID}    40 seconds
    Click Element                        ${AuditVerifyAuditorTypeOptionID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorDdID}    40 seconds
    Click Element                        ${AuditVerifyAuditorDdID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorSearchXpath}    40 seconds
    Input Text                           ${AuditVerifyAuditorSearchXpath}    AutoTest
    Press Keys                           ${AuditVerifyAuditorSearchXpath}    ENTER
    Wait Until Element Is Visible        ${AuditVerifyAuditorResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditVerifyAuditorResultXpath}
    Wait Until Element Is Visible        ${AuditVerifyDdID}    40 seconds
    Click Element                        ${AuditVerifyDdID}
    Wait Until Element Is Visible        ${AuditVerifyYesOptionID}    40 seconds
    Click Element                        ${AuditVerifyYesOptionID}
    Wait Until Element Is Visible        ${AuditVerifyCommentsXpath}    40 seconds
    Click Element                        ${AuditVerifyCommentsXpath}
    Input Text                           ${AuditVerifyCommentsXpath}    Auto Testing
    Screenshot    FR11 Record captured
    Click Element                        ${AuditVerifySaveChevronXpath}
    Wait Until Element Is Visible        ${AuditVerifySaveAndCloseXpath}    40 seconds
    Click Element                        ${AuditVerifySaveAndCloseXpath}
    Sleep   5
    Wait Until Element Is Not Visible    ${LoadingBarXpath}     120 seconds
    Sleep    5 seconds
    Wait Until Element Is Enabled        ${AuditMngDetailsTabXpath}    40 seconds
    Screenshot    FR11 Save and Close
    Click Element                        ${AuditMngDetailsTabXpath}
    Click Element                        ${AuditManagementPF}
    Page Should Contain Element          ${AuditManagementPFCompleted}
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    Completed
    Screenshot    FR11 Audit Mng Details Tab clicked

FR11 - Verification Rejected
    Log To Console    Starting FR11 - Verification Rejected
    FR8 - Conduct an external Audit
    Sleep    2 seconds
    FR10 - Request Audit Verification
    
    Sleep    2 seconds
    Wait Until Element Is Visible        ${AuditMngVerificationTabXpath}    40 seconds
    Click Element                        ${AuditMngVerificationTabXpath}
    Wait Until Element Is Visible        ${AuditMngVerificationAddBtnXpath}    40 seconds
    Screenshot    FR11 Audit Mng Verification Add Btn
    Click Element                        ${AuditMngVerificationAddBtnXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible        ${AuditVerifyAuditorTypeDdID}    40 seconds
    Click Element                        ${AuditVerifyAuditorTypeDdID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorTypeOptionID}    40 seconds
    Click Element                        ${AuditVerifyAuditorTypeOptionID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorDdID}    40 seconds
    Click Element                        ${AuditVerifyAuditorDdID}
    Wait Until Element Is Visible        ${AuditVerifyAuditorSearchXpath}    40 seconds
    Input Text                           ${AuditVerifyAuditorSearchXpath}    AutoTest
    Press Keys                           ${AuditVerifyAuditorSearchXpath}    ENTER
    Wait Until Element Is Visible        ${AuditVerifyAuditorResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditVerifyAuditorResultXpath}
    Wait Until Element Is Visible        ${AuditVerifyDdID}    40 seconds
    Click Element                        ${AuditVerifyDdID}
    Wait Until Element Is Visible        ${AuditVerifyNoOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AuditVerifyNoOptionID}
    Wait Until Element Is Visible        ${AuditVerifyCommentsXpath}    40 seconds
    Click Element                        ${AuditVerifyCommentsXpath}
    Input Text                           ${AuditVerifyCommentsXpath}    Auto Testing
    Click Element                        ${AuditVerifySaveChevronXpath}
    Wait Until Element Is Visible        ${AuditVerifySaveAndCloseXpath}    40 seconds
    Click Element                        ${AuditVerifySaveAndCloseXpath}
    Sleep   5
    Wait Until Element Is Not Visible    ${LoadingBarXpath}     120 seconds
    Sleep    5 seconds
    Wait Until Element Is Enabled        ${AuditMngDetailsTabXpath}    40 seconds
    Screenshot    FR11 Audit Verify Save And Close
    Click Element                        ${AuditMngDetailsTabXpath}
    Click Element                        ${AuditManagementPF}
    Page Should Contain Element          ${AuditManagementPFInProgres}
    SeleniumLibrary.Element Text Should Be               ${AuditMngStatusDdXpath}    In progress
    Screenshot    FR11 Audit Mng Details Tab