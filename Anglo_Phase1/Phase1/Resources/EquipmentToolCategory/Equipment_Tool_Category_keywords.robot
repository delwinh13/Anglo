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
    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
    Click Element                       ${ProcessflowButton}
    Sleep    5 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${ProcessflowAddPhase}
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
    Sleep    5 seconds
    Click Element                        ${BUSMOption}
    Sleep    1 seconds
    Click Element                        ${BUSMBPOption}
    Sleep    1 seconds

    #Capture ProcessActivityDropdown
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
    Wait Until Element Is Visible       ${ProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhase}
    Sleep    10 seconds
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
    #Click on ProcessflowButton
    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
    Click Element                       ${ProcessflowButton}
    Sleep    5 seconds

FR2 - Capture Asset Details
    Log To Console    Starting FR2 - Capture Asset Details

    # Click on AssetAddButton
    Wait Until Element Is Visible       ${AssetAddButton}
    Click Element                       ${AssetAddButton}
    Sleep     3 seconds

    #Click on ProcessflowButton
    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
    Click Element                       ${ProcessflowButton}
    Sleep    5 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${ProcessflowAddPhase}
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

    # Select DateHiredTo
    Click Element                        ${DateHiredTo}
    Sleep    2 seconds
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+2 day
    Set Global Variable    ${PlanCloseDate}
    Wait Until Element Is Visible       ${DateHiredTo}    10 seconds
    Click Element                       ${DateHiredTo}
    Input Text                          ${DateHiredToSelection}     ${PlanCloseDate}

    #Click Supporting Document Link
    Wait Until element Is visible       ${DocumentUpload}    10 seconds
    Click Element                       ${DocumentUpload}
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

    Click Element                        ${ContractorOwnedSelection}
    Sleep    1 seconds
    Click Element                        ${BUBCOOption}
    Sleep    1 seconds
    Click Element                        ${BUKOption}
    Sleep    5 seconds
    Click Element                        ${BUSMOption}
    Sleep    1 seconds
    Click Element                        ${BUSMBPOption}
    Sleep    1 seconds

    #Capture ProcessActivityDropdown
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
    Wait Until Element Is Visible       ${ProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhase}
    Sleep    10 seconds
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