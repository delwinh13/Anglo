*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\ComplianceAssessment\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    sleep   8 seconds
    Screenshot    Login

FR1 - Capture Compliance Assessment Record
    Log To Console    FR1 - Capture Compliance Assessment Record
    Select Frame                         ${iFrame}
    Sleep    3 seconds
    Wait Until Element Is Visible        ${PermitManagementXpath}    40 seconds
    Click Element                        ${PermitManagementXpath}
    Wait Until Element Is Visible        ${ComplianceAssessmentXpath}    20 seconds
    Click Element                        ${ComplianceAssessmentXpath}
    Sleep    5 seconds
    Wait Until Element Is Visible        ${ComplianceAssessmentAddButtonID}    10 seconds
    Screenshot    FR1 Compliance Assessment clicked
    Click Element                        ${ComplianceAssessmentAddButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    10 seconds
    Sleep    2 seconds
    Screenshot    FR1 Compliance assessment add button clicked
    Click Element                        ${CompAssessmentBusinessUnitID}
    Wait Until Element Is Visible        ${CompAssessmentBusinessUnitValeID}    10 seconds
    Click Element                        ${CompAssessmentBusinessUnitValeID}
    #Get the current date to set the Assessment date field
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Click Element                        ${CompAssessmentDateXpath}
    Input Text                           ${CompAssessmentDateXpath}    ${CurrentDate}
    Press Keys                           ${CompAssessmentDateXpath}    ENTER
    Click Element                        ${CompAssessmentConductedByID}
    Wait Until Element Is Visible        ${CompConductedSearchXpath}
    Click Element                        ${CompConductedSearchXpath}
    Input Text                           ${CompConductedSearchXpath}    AutoTest
    Press Keys                           ${CompConductedSearchXpath}    ENTER
    Wait Until Element Is Visible        ${CompConductedSearchResultXpath}
    Click Element                        ${CompConductedSearchResultXpath}
    Screenshot    FR1 Compliance assessment info captured
    Click Element                        ${CompAssessmentSaveButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    Sleep    2 seconds
    Element Text Should Be               ${CompAssessmentStatusXpath}    In Progress
    Element Should Be Visible            ${ConditionsAndCommitmentsTabID}
    Screenshot    FR1 Save button clicked

FR2 - Capture Conditions and Commitments Assessment Rating
    Log To Console    FR2 - Capture Conditions and Commitments Assessment Rating
    Click Element                        ${ConditionsAndCommitmentsTabID}
    Click Element                        ${ConditionsAndCommitmentsBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    Wait Until Element Is Visible        ${ConditionsCommitmentsTitleDdID}
    Screenshot    FR2 Conditions And Commitments Tab clicked
    Click Element                        ${ConditionsCommitmentsTitleDdID}    
    
    #Expand1
    Wait Until Element Is Visible        ${ConditionsCommTitleExpandXpath}    40 seconds
    Sleep    10 seconds
    Click Element                        ${ConditionsCommTitleExpandXpath}
    Wait Until Element Is Visible        ${ConditionsCommTitleExpand2Xpath}    80 seconds
    Sleep    3 seconds
    Click Element                        ${ConditionsCommTitleExpand2Xpath}

    Wait Until Element Is Visible        ${ConditionsCommTitleOptionXpath}    20 seconds
    Sleep    2 seconds
    Click Element                        ${ConditionsCommTitleOptionXpath}
    Wait Until Element Is Visible        ${ConitionCommAssessmentStatusDdID}    20 seconds
    Click Element                        ${ConitionCommAssessmentStatusDdID}
    Wait Until Element Is Visible        ${ConitionCommAssessmentStatusXpath}    60 seconds
    Click Element                        ${ConitionCommAssessmentStatusXpath}
    Sleep    1 seconds
    Click Element                        ${ConditionCommAssessmentTypeID}
    Wait Until Element Is Visible        ${ConditionCommTypeValXpath}
    Sleep    1 seconds
    Click Element                        ${ConditionCommTypeValXpath}
    Sleep    1 seconds
    Click Element                        ${ConditionCommAssessmentTypeID}
    Sleep    1 seconds
    Click Element                        ${ConditionCommAssessmentCatDdID}
    Wait Until Element Is Visible        ${ConditionCommAssessmentCatValID}    20 seconds
    Click Element                        ${ConditionCommAssessmentCatValID}
    Sleep    1 seconds
    Click Element                        ${ConditionCommAssessmentDescXpath}
    Input Text                           ${ConditionCommAssessmentDescXpath}    Testing
    Click Element                        ${ConditionCommAssessmentSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    Element Text Should Be               ${CondCommAssessmentStatusValXpath}    In Progress
    # Element Should Be Visible            ${CondCommAssessmentFindingTabXpath}
    # Element Should Be Visible            ${CondCommSupportingDocsTabXpath}
    Click Element                        ${CondCommComplianceStatusID}
    Wait Until Element Is Visible        ${CondCommComplianceStatusValXpath}    20 seconds
    Sleep    3 seconds
    Click Element                        ${CondCommComplianceStatusValXpath}
    Wait Until Element Is Visible        ${CondCommComplianceTextXpath}    20 seconds
    Click Element                        ${CondCommComplianceTextXpath}
    Input Text                           ${CondCommComplianceTextXpath}    Auto Testing
    Screenshot    FR2 Info captured
    #Declare Accuracy
    Wait Until Element Is Visible        ${CondCommComplianceReviewedXpath}    20 seconds
    Click Element                        ${CondCommComplianceReviewedXpath}
    Click Element                        ${ConditionCommAssessmentSaveBtnID}
    Sleep    2 seconds

    # #Capture Findings - FDS was updated to exclude Findings
    # Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    # Wait Until Element Is Visible        ${CondCommFindingsAddBtnXpath}
    # Screenshot    FR2 Condition Comm Assessment Save Btn clicked
    # Click Element                        ${CondCommFindingsAddBtnXpath}
    # Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    # Wait Until Element Is Visible        ${CondCommFindingsDescXpath}
    # Click Element                        ${CondCommFindingsDescXpath}
    # Input Text                           ${CondCommFindingsDescXpath}    Testing find description
    # Sleep    2 seconds
    # Click Element                        ${CondCommFindsingsOwnerDdID}
    # Wait Until Element Is Visible        ${CondCommFindingsOwnerSearchXpath}    10 seconds
    # Input Text                           ${CondCommFindingsOwnerSearchXpath}    AutoTest    
    # Press Keys                           ${CondCommFindingsOwnerSearchXpath}    ENTER
    # Wait Until Element Is Visible        ${CondCommFindingsOwnerValueXpath}    50 seconds

    # Click Element                        ${CondCommFindingsOwnerValueXpath}
    # Wait Until Element Is Visible        ${CondCommFindingsClassDdID}    20 seconds
    # Click Element                        ${CondCommFindingsClassDdID}
    # Wait Until Element Is Visible        ${CondCommFindingsClassValID}    20 seconds
    # Click Element                        ${CondCommFindingsClassValID}
    # Sleep    1 seconds
    # Screenshot    FR2 Info captured
    # Click Element                        ${ConCommFindingsSaveArrowXpath}
    # Wait Until Element Is Visible        ${CondCommFindingsSaveCloseID}
    # Screenshot    FR2 Findings save arrow clicked
    # Click Element                        ${CondCommFindingsSaveCloseID}
    #Supporting Docs
    Wait Until Element Is Visible        ${CondCommSupportingDocID}    20 seconds
    Screenshot    FR2
    Sleep    10 seconds
    Click Element                        ${CondCommSupportingDocID}
    Wait Until Element Is Visible        ${CondCommSupportingDocLinkXpath}    20 seconds
    Click Element                        ${CondCommSupportingDocLinkXpath}
    # Sleep    1 seconds    
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    20 seconds
    Unselect Frame    
    Wait Until Element Is Visible        ${CondCommSupportingDocLinkFieldID}    20 seconds
    Click Element                        ${CondCommSupportingDocLinkFieldID}
    Input Text                           ${CondCommSupportingDocLinkFieldID}    www.google.com
    Wait Until Element Is Visible        ${CondCommSupportingDocLinkFieldID}    20 seconds
    Click Element                        ${CondCommSupportingDocLinkFieldID}
    Input Text                           ${CondCommSupportingDocTileFieldID}    Google
    Screenshot    FR2 Supporting doc info captured
    Wait Until Element Is Visible        ${CondCommSupportingDocAddBtnID}    20 seconds
    Sleep    1 seconds
    Click Element                        ${CondCommSupportingDocAddBtnID}
    Sleep    1 seconds
    Screenshot    FR2 Supporting Doc add button clicked
    Select Frame                         ${iFrame}