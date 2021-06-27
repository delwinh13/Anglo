*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
Resource    ../Resources/vars.robot
Resource    AuditTemplate_keywords.robot
Resource  ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\AuditTemplate\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login

Complete Initial Required Fields
    Log To Console    Complete Initial Required Fields
    Wait Until Element Is Visible    ${AuditTemplateBussinessUnitID}    40 seconds
    Click Element                    ${AuditTemplateBussinessUnitID}
    Wait Until Element Is Visible    ${AuditTemplateBussUnitExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Screenshot    Audit template tab selected
    Click Element                    ${AuditTemplateBussUnitExpand1Xpath}
    Wait Until Element Is Visible    ${AuditTemplateBussUnitExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditTemplateBussUnitExpand2Xpath}
    Wait Until Element Is Visible    ${AuditTemplateBussUnitExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditTemplateBussUnitExpand3Xpath}
    Wait Until Element Is Visible    ${AuditTemplateBussinesUnitOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditTemplateBussinesUnitOptionID}
    Wait Until Element Is Visible    ${AuditTemplateTypeDdID}    40 seconds
    Click Element                    ${AuditTemplateTypeDdID}
    Wait Until Element Is Visible    ${AuditTemplateTypeOptionID}    40 seconds    
    Sleep    1 seconds
    Click Element                    ${AuditTemplateTypeOptionID}
    Wait Until Element Is Visible    ${AuditTemplateNameXpath}    40 seconds
    Click Element                    ${AuditTemplateNameXpath}
    Input Text                       ${AuditTemplateNameXpath}    Auto Test
    Wait Until Element Is Visible    ${AuditTemplateFormID}    40 seconds
    Click Element                    ${AuditTemplateFormID}
    Wait Until Element Is Visible    ${AuditTemplateFormOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditTemplateFormOptionID}
    Wait Until Element Is Visible    ${AuditTemplateChecklistID}    40 seconds
    Click Element                    ${AuditTemplateChecklistID}
    Wait Until Element Is Visible    ${AuditTemplateChklistItemXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditTemplateChklistItemXpath}
    Sleep    1 seconds
    Screenshot    FR1 Add - Audit template form and checklist
    Click Element                    ${AuditTemplateChecklistID}

FR1 - Add an Audit Template
    Log To Console    Starting FR1 - Add an Audit Template

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    Wait Until Element Is Visible    ${MaintenanceModuleSectionID}    40 seconds
    Screenshot    FR1 Add - Audit template checklist clicked
    Click Element                    ${MaintenanceModuleSectionID}
    Wait Until Element Is Visible    ${AuditTemplateXpath}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditTemplateXpath}
    Wait Until Element Is Visible    ${AuditTemplateAddButtonID}    40 seconds
    Click Element                    ${AuditTemplateAddButtonID}
    Screenshot    FR1 Add - Audit template add button clicked
    Complete Initial Required Fields
    Screenshot    FR1 Add - Required fields captured
    Wait Until Element Is Visible    ${AuditTemplateSaveButtonID}    40 seconds
    Click Element                    ${AuditTemplateSaveButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditTemplateArchiveXpath}    40 seconds
    Element Should Be Visible        ${AuditTemplateArchiveXpath}
    Screenshot    FR1 Audit Template Save Button clicked
    #Get the record number
    ${RecordNumberFieldText}    Get Text      ${RecordNumberFieldXpath}
    ${RecordNumber}             Fetch From Right    ${RecordNumberFieldText}    Record #
    Set Global Variable    ${RecordNumber}
    Log To Console    Record Number is ${RecordNumber}

    #Get Auit Template Name    
    ${AuditTemplateFieldText}    Get Text      ${AuditTemplateTypeValXpath}
    Set Global Variable    ${AuditTemplateFieldText}
    Log To Console    Audit Template is ${AuditTemplateFieldText}

    # Go back to search page
    Wait Until Element Is Visible    ${AuditTemplateCloseButtonXpath}    40 seconds
    Click Element                    ${AuditTemplateCloseButtonXpath}
    Screenshot    FR1 Add- Audit template close button clicked

FR1 - Create an Audit Template
    Log To Console    Starting FR1 - Create an Audit Template

    # Wait Until Element Is Visible        ${iFrame}    40 seconds
    # Select Frame                         ${iFrame}    
    # Sleep     3 seconds

    # Wait Until Element Is Visible    ${MaintenanceModuleSectionID}    40 seconds
    # Click Element                    ${MaintenanceModuleSectionID}
    # Wait Until Element Is Visible    ${AuditTemplateXpath}    40 seconds
    # Sleep    2 seconds
    # Click Element                    ${AuditTemplateXpath}
    Wait Until Element Is Visible    ${AuditTemplateAddButtonID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditTemplateAddButtonID}

    Complete Initial Required Fields

    Wait Until Element Is Visible    ${AuditTemplateCreateButtonID}    40 seconds
    Click Element                    ${AuditTemplateCreateButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditTemplateAddButtonID}    40 seconds
    Element Should Be Visible        ${AuditTemplateAddButtonID}

FR2 - Archive Audit Template
    Log To Console    Starting FR2 - Archive Audit Template

    Wait Until Element Is Visible    ${AuditTemplateSearchFieldXpath}    40 seconds
    Click Element                    ${AuditTemplateSearchFieldXpath}
    Input Text                       ${AuditTemplateSearchFieldXpath}    ${RecordNumber}
    Screenshot    FR2 Record number captured
    Click Element                    ${AuditTemplateSearchButtonID}
    Wait Until Element Is Visible    ${AuditTemplateSearchResultXpath}    40 seconds
    Screenshot    FR2 Record searched
    Click Element                    ${AuditTemplateSearchResultXpath}
    Sleep    5 seconds
    Wait Until Element Is Visible    ${AuditTemplateArchiveXpath}    40 seconds
    Screenshot    FR2 Audit template search clicked
    Click Element                    ${AuditTemplateArchiveXpath}
    Wait Until Element Is Visible    ${AuditTemplateSaveButtonID}    40 seconds
    Screenshot    FR2 Archive audit template
    Click Element                    ${AuditTemplateSaveButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR2 Audit template save button clicked

FR3 - Update Audit Template Checklist
    Log To Console    Starting FR3 - Update Audit Template Checklist
    Sleep    1 seconds
    Unselect Frame
    Wait Until Element Is Visible    ${IsoMetrixHomeXpath}    40 seconds
    Click Element                    ${IsoMetrixHomeXpath}
    Sleep    1 seconds
    Screenshot    FR3 IsoMetrix Home clicked
    Select Frame                     ${iFrame}
    Wait Until Element Is Visible    ${MaintenanceModuleSectionID}    40 seconds
    Click Element                    ${MaintenanceModuleSectionID}
    Wait Until Element Is Visible    ${ChecklistMaintenanceXpath}    40 seconds
    Sleep    2 seconds
    Screenshot    FR3 Maintenance module section clicked
    Click Element                    ${ChecklistMaintenanceXpath}
    Wait Until Element Is Visible    ${ChecklistMaintenanceRecordXpath}    40 seconds
    Click Element                    ${ChecklistMaintenanceRecordXpath}
    Wait Until Element Is Visible    xpath://td[.='${AuditTemplateFieldText}']
    Click Element                    xpath://td[.='${AuditTemplateFieldText}']

    Wait Until Element Is Visible    ${ChecklistQuestionsTabID}    40 seconds
    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Sleep    15 seconds
    Click Element                    ${ChecklistQuestionsTabID}
    Wait Until Element Is Visible    ${ChecklistQuesAggregationXpath}    40 seconds
    Click Element                    ${ChecklistQuesAggregationXpath}
    Wait Until Element Is Visible    ${ChecklistQuesAggrOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${ChecklistQuesAggrOptionXpath}
    Sleep    1 seconds
    Screenshot    FR3 Checklist updated
    Click Element                    ${ChecklistMaintenanceSaveXpath}
    Screenshot    FR3 Checklist Maintenance Save button clicked