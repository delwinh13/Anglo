*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\AuditUniverse\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials added
    Click Element             ${SubmitButtonid}
    Sleep   8 seconds
    Screenshot    Login

FR1 - Add Audit Universe
    Log To Console    FR1 - Add Audit Universe
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    Wait Until Element Is Visible    ${MaintenanceModuleSectionID}    40 seconds
    Click Element                    ${MaintenanceModuleSectionID}
    Wait Until Element Is Visible    ${AuditUniverseXpath}    40 seconds
    Sleep    2 seconds
    Screenshot    FR1 Maintenance module clicked
    Click Element                    ${AuditUniverseXpath}
    Wait Until Element Is Visible    ${AuditUniverseAddButtonID}    40 seconds
    Screenshot    FR1 Navigate to Audit Universe
    Click Element                    ${AuditUniverseAddButtonID}
    Wait Until Element Is Visible    ${AuditUniverseProtocolXpath}    40 seconds
    Screenshot    FR1 Audit add button clicked
    Click Element                    ${AuditUniverseProtocolXpath}
    Input Text                       ${AuditUniverseProtocolXpath}    Auto Testing
    Wait Until Element Is Visible    ${AuditUniverseBusinessUnitID}    40 seconds
    Click Element                    ${AuditUniverseBusinessUnitID}
    Wait Until Element Is Visible    ${AuditUniverseBusinessUnitXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditUniverseBusinessUnitXpath}
    Click Element                    ${AuditUniverseBusinessUnitID}
    Wait Until Element Is Visible    ${AuditUniverseAnswerSetID}    40 seconds
    Click Element                    ${AuditUniverseAnswerSetID}
    Wait Until Element Is Visible    ${AuditUniverseAnswerSetOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditUniverseAnswerSetOptionID}
    Sleep    4 seconds
    Wait Until Element Is Visible    ${AuditUniverseSaveContinueID}    40 seconds
    Screenshot    FR1 Record info captured
    Click Element                    ${AuditUniverseSaveContinueID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditUniverseAuditSectionID}    40 seconds
    Element Should Be Visible        ${AuditUniverseAuditSectionID}
    Screenshot    FR1 Save button clicked
    # #Get the record number
    # ${RecordNumberFieldText}    Get Text      ${RecordNumberFieldXpath}
    # ${RecordNumber}             Fetch From Right    ${RecordNumberFieldText}    Record #
    # Set Global Variable    ${RecordNumber}
    # Log To Console    Record Number is ${RecordNumber}

FR2 - Add Audit Section
    Log To Console    FR2 - Add Audit Section
    Wait Until Element Is Visible    ${AuditUniverseAuditSectionAddXpath}    40 seconds
    Click Element                    ${AuditUniverseAuditSectionAddXpath}
    Screenshot    FR2 Add button clicked
    Wait Until Element Is Visible    ${AuditUniverseAuditSectionTxtXpath}    40 seconds
    Click Element                    ${AuditUniverseAuditSectionTxtXpath}
    Input Text                       ${AuditUniverseAuditSectionTxtXpath}    Auto Testing
    Wait Until Element Is Visible    ${AuditUniverseSectionNumberXpath}    40 seconds
    Click Element                    ${AuditUniverseSectionNumberXpath}
    Input Text                       ${AuditUniverseSectionNumberXpath}    1
    Screenshot    FR2 Record info captured
    Wait Until Element Is Visible    ${AuditUniverseSectionSaveContID}    40 seconds
    Click Element                    ${AuditUniverseSectionSaveContID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditSectionQuestiontID}    40 seconds
    Element Should Be Visible        ${AuditSectionQuestiontID}
    Screenshot    FR2 Record saved

FR3 - Add Audit Question
    Log To Console    FR3 - Add Audit Question
    Wait Until Element Is Visible    ${AuditQuestionAddXpath}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditQuestionAddXpath}
    Wait Until Element Is Visible    ${AuditQuestionOrderNumbXpath}    40 seconds
    Screenshot    FR3 Audit Question add button clicked
    Click Element                    ${AuditQuestionOrderNumbXpath}
    Input Text                       ${AuditQuestionOrderNumbXpath}    1
    Wait Until Element Is Visible    ${AuditQuestionQuestionXpath}    40 seconds
    Click Element                    ${AuditQuestionQuestionXpath}
    Input Text                       ${AuditQuestionQuestionXpath}    Is this a test?
    Screenshot    FR3 Audit question info captured
    Wait Until Element Is Visible    ${AuditSectionSaveID}    40 seconds
    Click Element                    ${AuditSectionSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR3 Audit question saved

FR4 - Edit Audit Universe
    Log To Console    FR4 - Edit Audit Universe
    Wait Until Element Is Visible    ${AuditUniverseNavLinkID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditUniverseNavLinkID}
    Wait Until Element Is Visible    ${AuditUniverseBusinessUnitID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR4 Audit Universe Nav
    Click Element                    ${AuditUniverseBusinessUnitID}
    Wait Until Element Is Visible    ${AuditUniverseBussUnitExpandXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR4 Audit Universe Business Unit
    Click Element                    ${AuditUniverseBussUnitExpandXpath}
    Wait Until Element Is Visible    ${AuditUniverseBusinessUnit2Xpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR4 Expand clicked
    Click Element                    ${AuditUniverseBusinessUnit2Xpath}
    Wait Until Element Is Visible    ${AuditUniverseSaveBtnID}    40 seconds
    Click Element                    ${AuditUniverseSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR4 Audit Universe Save button clicked

FR5 - Edit Audit Section
    Log To Console    FR5 - Edit Audit Section
    Wait Until Element Is Visible    ${AuditSectionRecordLinkXpath}    40 seconds    
    Click Element                    ${AuditSectionRecordLinkXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    1 seconds
    Wait Until Element Is Visible    ${AuditUniverseAuditSectionTxtXpath}    40 seconds
    Screenshot    FR5 Audit section Record link clicked
    Click Element                    ${AuditUniverseAuditSectionTxtXpath}
    Input Text                       ${AuditUniverseAuditSectionTxtXpath}    Auto Testing Updated
    Wait Until Element Is Visible    ${AuditSectionSaveID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR5 Audit edited
    Click Element                    ${AuditSectionSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR5 Audit section save button clicked
    ${AuditSection}=    Get Value       ${AuditUniverseAuditSectionTxtXpath}
    Should Be Equal    ${AuditSection}    Auto Testing Updated
    Screenshot    FR5 Edit Audit Section

FR6 - Edit Audit Question
    Log To Console    FR6 - Edit Audit Question
    Wait Until Element Is Visible    ${AuditQuestionQuestionXpath}    40 seconds
    Click Element                    ${AuditQuestionQuestionXpath}
    Input Text                       ${AuditQuestionQuestionXpath}    Is this a test updated?
    Wait Until Element Is Visible    ${AuditSectionSaveID}    40 seconds
    Screenshot    FR6 Edited Audit question
    Click Element                    ${AuditSectionSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 Audit Section save button clicked
    ${AuditQuestion}=    Get Value       ${AuditQuestionQuestionXpath}
    Should Be Equal    ${AuditQuestion}    Is this a test updated?
    Screenshot    FR6 Edit audit question