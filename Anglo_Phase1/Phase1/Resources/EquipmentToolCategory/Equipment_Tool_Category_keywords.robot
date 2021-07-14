*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Equipment_Tool_Category _vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\EquipmentToolCategory\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered EquipmentToolCategory
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Capture Equipment and Tool Category
    Log To Console    Starting FR1 - Capture Equipment and Tool Category

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneButton}
    Click Element                       ${HygieneButton}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneMaintenanceButton}
    Click Element                       ${HygieneMaintenanceButton}
    Sleep     3 seconds

    # Click on EquipmentandToolButton
    Wait Until Element Is Visible       ${EquipmentandToolButton}
    Click Element                       ${EquipmentandToolButton}
    Sleep     3 seconds
    Screenshot      Search page of Equipment and Tool Category module opens

    # Click on Add Button
    Wait Until Element Is Visible       ${ETCAddButton}
    Click Element                       ${ETCAddButton}
    Sleep     3 seconds

    #Click on ProcessflowButton
    Wait Until Element Is Visible       ${ETProcessFlowButton}    10 seconds
    Click Element                       ${ETProcessFlowButton}
    Sleep    5 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ETProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${ETProcessflowAddPhase}
    Sleep    5 seconds
    Screenshot      Equipment and Tool Category add form opens in the Add phase

    #Click on BusinessUnit
    Wait Until Element Is Visible        ${BusinessUnitDropdown}        10  seconds
    Click Element                        ${BusinessUnitDropdown}
    Sleep    1 seconds
    Click Element                        ${BUAAGOption}
    Sleep    1 seconds
    Click Element                        ${BUBCOOption}
    Sleep    1 seconds
    Click Element                        ${BUKOption}
    Sleep    1 seconds
    Click Element                        ${BUSMOption}
    Sleep    1 seconds
    Click Element                        ${BUSMBPOption}
    Sleep    1 seconds

    #Capture FunctionLocationDropdown
    Wait Until Element Is Visible        ${FunctionLocationDropdown}             20 seconds
    Click Element                        ${FunctionLocationDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible        ${FunctionLocationSelect}              40 seconds
    Click Element                        ${FunctionLocationSelect}
    Sleep    5 seconds

    #Capture ProcessActivityDropdown
    Wait Until Element Is Visible        ${ProcessActivityDropdown}             20 seconds
    Click Element                        ${ProcessActivityDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible        ${AcidPlantDaimondbox}
    Click Element                        ${AcidPlantDaimondbox}
    Sleep    1 seconds
    Wait Until Element Is Visible        ${AcidOutloadingCheckbox}
    Click Element                        ${AcidOutloadingCheckbox}
    Sleep    1 seconds
    Wait Until Element Is Visible        ${ProcessActivityDropdown}
    Click Element                        ${ProcessActivityDropdown}
    Sleep    1 seconds

    #Capture CatogryDropdown
    Wait Until Element Is Visible       ${CatogryDropdown}    10 seconds
    Click Element                       ${CatogryDropdown}
    Sleep    1 seconds

    Wait Until Element Is Visible       ${PowerToolsSelection}    10 seconds
    Click Element                       ${PowerToolsSelection}
    Sleep    5 seconds
    #Alternate scenario
    Screenshot      No additional fields are displayed
    Wait Until Element Is Visible       ${CatogryDropdown}    10 seconds
    Click Element                       ${CatogryDropdown}
    Sleep    5 seconds

    Wait Until Element Is Visible       ${HygieneEquipmentSelection}    10 seconds
    Click Element                       ${HygieneEquipmentSelection}
    Sleep    1 seconds

    #Capture EquipmentCategoryDropdown
    Wait Until Element Is Visible       ${EquipmentCategoryDropdown}    10 seconds
    Click Element                       ${EquipmentCategoryDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${NoiseMonitoringSelection}    10 seconds
    Click Element                       ${NoiseMonitoringSelection}
    Sleep    1 seconds

    #Capture EquipmentCategoryDropdown
    Wait Until Element Is Visible       ${EquipmentTypeDropdown}    10 seconds
    Click Element                       ${EquipmentTypeDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${DosimeterSelection}    10 seconds
    Click Element                       ${DosimeterSelection}
    Sleep    1 seconds

   #Clck on Save button
    Wait Until Element Is Visible       ${SaveButtonXpath}    20 seconds
    Click Element                       ${SaveButtonXpath}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ETProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${ETProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase Asset Details non-editable grid is displayed

    #Clck on CloseButton button
    Wait Until Element Is Visible       ${CloseButton}    20 seconds
    Click Element                       ${CloseButton}
    Sleep    5 seconds

    #Clck on SearchButton
    Wait Until Element Is Visible       ${SearchButton}    20 seconds
    Click Element                       ${SearchButton}
    Sleep    5 seconds

    #Clck on RecordButton
    Wait Until Element Is Visible       ${RecordButton}    20 seconds
    Click Element                       ${RecordButton}
    Sleep    10 seconds
    Screenshot    Record opens showing details populated by the integration
#    #Click on ProcessflowButton
#    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
#    Click Element                       ${ProcessflowButton}
#    Sleep    5 seconds


FR2 - Capture Asset Details
    Log To Console    Starting FR2 - Capture Asset Details

    Sleep    10 seconds
    # Click on AssetAddButton
    Wait Until Element Is Visible       ${AssetAddButton}
    Click Element                       ${AssetAddButton}
    Sleep     3 seconds

    #Click on AssetDetailsProcessFlowButton
    Wait Until Element Is Visible       ${AssetDetailsProcessFlowButton}    10 seconds
    Click Element                       ${AssetDetailsProcessFlowButton}
    Sleep    5 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${AssetDetailsProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${AssetDetailsProcessflowAddPhase}
    Sleep    5 seconds
    Screenshot      Asset Details Calibration Details and Supporting Documents tabs should be visible

    #Click on EquipmentClassification
    Wait Until Element Is Visible        ${EquipmentClassification}        10  seconds
    Click Element                        ${EquipmentClassification}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${ContractorOwnedSelection}              10 seconds
    Click Element                        ${ContractorOwnedSelection}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${EquipmentClassification}        10  seconds
    Click Element                        ${EquipmentClassification}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${ECHiredSelection}              10 seconds
    Click Element                        ${ECHiredSelection}
    Sleep    5 seconds

    # Select DateHiredFrom
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${DateHiredFrom}        ${CurrentDate}
    Sleep    5 seconds

    # Select DateHiredTo
    Click Element                        ${DateHiredTo}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${DateHiredTo}    10 seconds
    Click Element                       ${DateHiredTo}
    Input Text                          ${DateHiredToSelection}     ${PlanCloseDate}

    #Click DocumentUpload Link
    Sleep    5 seconds
    Wait Until element Is visible       ${DocumentUpload}    20 seconds
    Click Element                       ${DocumentUpload}
    Sleep    5 seconds
    # change to pop-up frame
    Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible           ${SupportingDocPopName}
    #Enter URL
    Click Element                       ${SupportingDocAddLink}
    Clear Element Text                  ${SupportingDocAddLink}
    Input Text                          ${SupportingDocAddLink}    https://www.isometrix.com/
    Sleep    2 seconds
    # Enter Title
    Click Element                        ${SupportingDocAddTitle}
    Input Text                           ${SupportingDocAddTitle}    AutoTest
    # Add Link to Document Button
    Wait Until Element Is Visible        ${SupportingDocAddBtn}    10 seconds
    Click Element                        ${SupportingDocAddBtn}
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    10 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    #Capture ServiceProviderContractorDropdown
    Click Element                        ${ServiceProviderContractorDropdown}
    Sleep    2 seconds
    Click Element                        ${ServiceProviderSearchbox}
    Input text                           ${ServiceProviderSearchbox}    aero
    Press Keys                           ${ServiceProviderSearchbox}    ENTER
    Wait Until Element Is Visible        ${AeroCareSelection}               20 seconds
    Click Element                        ${AeroCareSelection}

    #Capture IsaServiceRequiredDropdown
    Wait Until Element Is Visible        ${IsaServiceRequiredDropdown}             10 seconds
    Click Element                        ${IsaServiceRequiredDropdown}
    Sleep    5 seconds

    #Alternate Scenario:2 Select “No” to Is a service required
    #Service frequency, Last date of service and Next date of service fields are not displayed
    Wait Until Element Is Visible        ${NoSelection}
    Click Element                        ${NoSelection}
    Sleep    5 seconds

     Wait Until Element Is Visible       ${IsaServiceRequiredDropdown}             10 seconds
    Click Element                        ${IsaServiceRequiredDropdown}
    Sleep    5 seconds

    #Main Scenario
    Wait Until Element Is Visible        ${YesSelection}
    Click Element                        ${YesSelection}
    Sleep    5 seconds

    # Select LastDateOfService
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${LastDateOfService}        ${CurrentDate}

    # Select NextDateOfService
    Click Element                        ${NextDateOfService}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${NextDateOfService}    10 seconds
    Click Element                       ${NextDateOfService}
    Input Text                          ${NextDateOfServiceSelection}     ${PlanCloseDate}
    Sleep    5 seconds
    Screenshot      Service frequency Last date of service and Next date of service fields are displayed

    #Click on Has a risk assessment been conducted dropdown
    #Alternate Scenario:3 Select “No” to Has a risk assessment been conducted? field
    #Related risk assessment field is not displayed. [Add Actions] button is displayed
    Wait Until Element Is Visible        ${HARSBCDropDown}
    Click Element                        ${HARSBCDropDown}
    Sleep    1 seconds

    Wait Until Element Is Visible        ${HARSBCNoSelection}
    Click Element                        ${HARSBCNoSelection}
    Sleep    3 seconds

    Wait Until Element Is Visible        ${HARSBCDropDown}
    Click Element                        ${HARSBCDropDown}
    Sleep    1 seconds

    #Main Scenario
    Wait Until Element Is Visible        ${HARSBCYesSelection}
    Click Element                        ${HARSBCYesSelection}
    Sleep    3 seconds

#    Wait Until Element Is Visible        ${RelatedRiskAssesmentDropdown}
#    Click Element                        ${RelatedRiskAssesmentDropdown}
#    Sleep    5 seconds
#    Screenshot      Related risk assessment dropdown field is displayed

    #Capture RequiredTrainigDropdown
    Wait Until Element Is Visible        ${RequiredTrainigDropdown}
    Click Element                        ${RequiredTrainigDropdown}
    Sleep    1 seconds

    Wait Until Element Is Visible       ${AETSelection}    10 seconds
    Click Element                       ${AETSelection}
    Sleep    1 seconds

    Wait Until Element Is Visible        ${RequiredTrainigDropdown}
    Click Element                        ${RequiredTrainigDropdown}
    Sleep    1 seconds

    #Capture RequiredPermitsDropdown
    Wait Until Element Is Visible        ${RequiredPermitsDropdown}
    Click Element                        ${RequiredPermitsDropdown}
    Sleep    1 seconds

    Wait Until Element Is Visible       ${GMDRTSelection}    10 seconds
    Click Element                       ${GMDRTSelection}
    Sleep    1 seconds

    Wait Until Element Is Visible        ${RequiredPermitsDropdown}
    Click Element                        ${RequiredPermitsDropdown}
    Sleep    1 seconds

    #Capture MFRSerialNoTextbox
    Wait Until Element Is Visible       ${MFRSerialNoTextbox}    10 seconds
    Input Text                          ${MFRSerialNoTextbox}        test

    #Capture RegoAssetTextbox
    Wait Until Element Is Visible       ${RegoAssetTextbox}    10 seconds
    Input Text                          ${RegoAssetTextbox}        11

    #Capture LicenceToOperateTextbox
    Wait Until Element Is Visible       ${LicenceToOperateTextbox}    10 seconds
    Input Text                          ${LicenceToOperateTextbox}        Yes

    # Select PHADate
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${PHADate}        ${CurrentDate}

    # Select DatecheckSheetCompleteDate
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${DatecheckSheetCompleteDate}        ${CurrentDate}

    #Capture MaintenancePlantDropdown
    Wait Until Element Is Visible       ${MaintenancePlantDropdown}    10 seconds
    Click Element                       ${MaintenancePlantDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EJooSelection}    10 seconds
    Click Element                       ${EJooSelection}
    Sleep    1 seconds

    #Capture WorkCeneterCodeDropdown
    Wait Until Element Is Visible       ${WorkCeneterCodeDropdown}    20 seconds
    Click Element                       ${WorkCeneterCodeDropdown}
    Sleep    10 seconds
    Wait Until Element Is Visible       ${RMFilterationSelection}    10 seconds
    Click Element                       ${RMFilterationSelection}
    Sleep    1 seconds

    #Capture SortfiledTextbox
    Wait Until Element Is Visible       ${SortfiledTextbox}    10 seconds
    Input Text                          ${SortfiledTextbox}        test

    #Capture PlanningPlantDropdown
    Wait Until Element Is Visible       ${PlanningPlantDropdown}    10 seconds
    Click Element                       ${PlanningPlantDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EdooSelection}    10 seconds
    Click Element                       ${EdooSelection}
    Sleep    1 seconds

    #Capture EquipmentTextbox
    Wait Until Element Is Visible       ${EquipmentTextbox}    10 seconds
    Input Text                          ${EquipmentTextbox}        test

    #Capture AssetNumberTextbox
    Wait Until Element Is Visible       ${AssetNumberTextbox}    10 seconds
    Input Text                          ${AssetNumberTextbox}        14

    #Capture ServiceFrequencyDropdown
    Wait Until Element Is Visible       ${ServiceFrequencyDropdown}    20 seconds
    Click Element                       ${ServiceFrequencyDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${AnnuallySelection}    10 seconds
    Click Element                       ${AnnuallySelection}
    Sleep    5 seconds

    #Capture OwnerDropdown
    Click Element                        ${OwnerDropdown}
    Sleep    5 seconds
    Click Element                        ${OwnerSearchbox}
    Input text                           ${OwnerSearchbox}    StakeGroup_Auto
    Press Keys                           ${OwnerSearchbox}    ENTER
    Wait Until Element Is Visible        ${StakeGroupSelection}               20 seconds
    Click Element                        ${StakeGroupSelection}

    #Capture MakeTextbox
    Wait Until Element Is Visible       ${MakeTextbox}    10 seconds
    Input Text                          ${MakeTextbox}        2018

    #Capture ModelTextbox
    Wait Until Element Is Visible       ${ModelTextbox}    10 seconds
    Input Text                          ${ModelTextbox}        Xseries

    #Capture TypeTextbox
    Wait Until Element Is Visible       ${TypeTextbox}    10 seconds
    Input Text                          ${TypeTextbox}        Sedan

    # Select DateOnsite
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${DateOnsite}        ${CurrentDate}

    # Select DateOffsite
    Click Element                        ${DateOffsite}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${DateOffsite}    10 seconds
    Click Element                       ${DateOffsite}
    Input Text                          ${DateOffsiteSelection}     ${PlanCloseDate}

    # Select LastRoutineMaintenanceDate
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${LastRoutineMaintenanceDate}        ${CurrentDate}

    # Select NextRoutineMaintenanceDate
    Click Element                        ${NextRoutineMaintenanceDate}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${NextRoutineMaintenanceDate}    10 seconds
    Click Element                       ${NextRoutineMaintenanceDate}
    Input Text                          ${NextRoutineMaintenanceDateSelection}     ${PlanCloseDate}

   #Clck on Save button
    Wait Until Element Is Visible       ${SaveButtonXpath1}    20 seconds
    Click Element                       ${SaveButtonXpath1}
    Sleep    10 seconds

    #validate AssetProcessflowEditPhase
    Wait Until Element Is Visible       ${AssetProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${AssetProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot      Record saved and automatically moves to the Edit Phase and Status defaults to Active Available


FR3 - Capture Calibration Details
    Log To Console    Starting FR3 - Capture Calibration Details

    # Click on CalibrationDetailsTab
    Wait Until Element Is Visible       ${CalibrationDetailsTab}
    Click Element                       ${CalibrationDetailsTab}
    Sleep     3 seconds

    # Click on CollibrationAddButton
    Wait Until Element Is Visible       ${CollibrationAddButton}
    Click Element                       ${CollibrationAddButton}
    Sleep     5 seconds

    #Click on CollibrationProcessFlowButton
    Wait Until Element Is Visible       ${CollibrationProcessFlowButton}    10 seconds
    Click Element                       ${CollibrationProcessFlowButton}
    Sleep    2 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ColibrationAddPhase}    10 seconds
    Element Should Be Visible           ${ColibrationAddPhase}
    Sleep    2 seconds
    Screenshot      Calibration Details add page opens in the Add Phase

    #Capture ModelTextbox
    Sleep     10 seconds
    Wait Until Element Is Visible       ${ColibrationCertificate}    10 seconds
    Input Text                          ${ColibrationCertificate}        test

    # Select CalibrationExpiryDate
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${CalibrationNotificationDateSelection}        ${CurrentDate}
    Sleep    2 seconds


    # Select CalibrationNotificationDateIcon
    Click Element                        ${CalibrationExpiryDateIcon}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${CalibrationExpiryDateIcon}    10 seconds
    Click Element                       ${CalibrationExpiryDateIcon}
    Input Text                          ${CalibrationExpiryDateSelection}     ${PlanCloseDate}

    #Capture ResponsiblePersonDropdown
    Click Element                        ${ResponsiblePersonDropdown}
    Sleep    5 seconds
    Click Element                        ${ResponsiblePersonSearchbox}
    Input text                           ${ResponsiblePersonSearchbox}    Aarin Swain
    Press Keys                           ${ResponsiblePersonSearchbox}    ENTER
    Wait Until Element Is Visible        ${ArianSelection}               20 seconds
    Click Element                        ${ArianSelection}

    #Click ColibrationCertificateHyperlink
    Sleep    5 seconds
    Wait Until element Is visible       ${ColibrationCertificateHyperlink}    20 seconds
    Click Element                       ${ColibrationCertificateHyperlink}
    Sleep    5 seconds
    # change to pop-up frame
    Unselect frame
    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible           ${SupportingDocPopName}
    #Enter URL
    Click Element                       ${SupportingDocAddLink}
    Clear Element Text                  ${SupportingDocAddLink}
    Input Text                          ${SupportingDocAddLink}    https://www.isometrix.com/
    Sleep    2 seconds
    # Enter Title
    Click Element                        ${SupportingDocAddTitle}
    Input Text                           ${SupportingDocAddTitle}    AutoTest
    # Add Link to Document Button
    Wait Until Element Is Visible        ${SupportingDocAddBtn}    10 seconds
    Click Element                        ${SupportingDocAddBtn}
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    10 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    #Clck on Save button
    Wait Until Element Is Visible       ${CalibratioSaveButton}    20 seconds
    Click Element                       ${CalibratioSaveButton}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ClaibrationProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${ClaibrationProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot      Record is saved and automatically moves to the Edit Phase Notification is sent to the Responsible Person

    #Clck on ClaibrationcloseButton
    Wait Until Element Is Visible       ${ClaibrationcloseButton}    20 seconds
    Click Element                       ${ClaibrationcloseButton}
    Sleep    5 seconds

FR4 - Capture Asset Schedule
    Log To Console    Starting FR4 - Capture Asset Schedule

    Sleep     10 seconds
    # Click on AssetScheduleTab
    Wait Until Element Is Visible       ${AssetScheduleTab}
    Click Element                       ${AssetScheduleTab}
    Sleep     3 seconds

    # Click on AssetScheduleAddButton
    Wait Until Element Is Visible       ${AssetScheduleAddButton}
    Click Element                       ${AssetScheduleAddButton}
    Sleep     3 seconds

    #Click on AssetProcessFlowButton
    Wait Until Element Is Visible       ${AssetProcessFlowButton}    10 seconds
    Click Element                       ${AssetProcessFlowButton}
    Sleep    2 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${AssetAddPhase}    10 seconds
    Element Should Be Visible           ${AssetAddPhase}
    Sleep    2 seconds
    Screenshot      Asset Schedule add page opens in the Add Phase

    # Enter ScheduleReferenceTextBox
    Click Element                        ${ScheduleReference}
    Input Text                           ${ScheduleReference}    Automation
    Sleep    2 seconds

    # Select StartDate
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${StartDate}        ${CurrentDate}

    # Select EndDate
    Click Element                        ${EndDate}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${EndDate}    10 seconds
    Click Element                       ${EndDate}
    Input Text                          ${EndDateSelection}     ${PlanCloseDate}

    #Clck on AssetScheduleSaveButton
    Wait Until Element Is Visible       ${AssetScheduleSaveButton}    20 seconds
    Click Element                       ${AssetScheduleSaveButton}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${AssetScheduleProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${AssetScheduleProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot      Status of the equipment is updated based of selected Availability All fields are read-only

#    #Click on AssetScheduleCloseButton
#    Wait Until Element Is Visible       ${AssetScheduleCloseButton}    20 seconds
#    Element Should Be Visible           ${AssetScheduleCloseButton}
#    Sleep    5 seconds

#    #Optional Scenario :
#    # Click Supporting Documents Tab
#    Wait Until Element Is Visible       ${SupportingDocTab}    20 seconds
#    Click Element                       ${SupportingDocTab}
#    Sleep    2 seconds
#
#    #Click Supporting Document Link
#    Wait Until element Is visible       ${SupportingDocLinkDoc}    40 seconds
#    Click Element                       ${SupportingDocLinkDoc}
#    # change to pop-up frame
#    Unselect frame
#    # validate pop up  name
#    Sleep    2 seconds
#    Element Should Be Visible           ${SupportingDocPopName}
#    #Enter URL
#    Click Element                       ${SupportingDocAddLink}
#    Clear Element Text                  ${SupportingDocAddLink}
#    Input Text                          ${SupportingDocAddLink}    https://www.isometrix.com/
#    Sleep    2 seconds
#    # Enter Title
#    Click Element                        ${SupportingDocAddTitle}
#    Input Text                           ${SupportingDocAddTitle}    AutoTest
#    # Add Link to Document Button
#    Wait Until Element Is Visible        ${SupportingDocAddBtn}    10 seconds
#    Click Element                        ${SupportingDocAddBtn}
#    # Change to main frame
#    Wait Until Element Is Visible        ${iFrame}    40 seconds
#    Select Frame                         ${iFrame}
#    Sleep     3 seconds
#
#    # Click Supporting Documents Tab
#    Wait Until Element Is Visible       ${SaveSupportingDocuments}    20 seconds
#    Click Element                       ${SaveSupportingDocuments}
#    Sleep    2 seconds
#

