*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
Resource    ../../Repository/StakeGroup_vars.robot

*** Keywords ***
#************************************************* FR5 - Capture Contractor or Supplier Manager_MS ****************************************
FR5 - Capture Contractor or Supplier Manager_MS
    Log To Console    FR5 - Capture Contractor or Supplier Manager_MS
    # Contact Information
    Input Text                              ${StakeGroupContSuppManPhoneNoXpath}            0119876500
    Input Text                              ${StakeGroupContSuppManEmailAddXpath}           test@email.com

    # Permanent Address
    # Street address
    Input Text                              ${StakeholderGroupPermAddStreetXpath}           Auto Street Test
    # Town
    Input Text                              ${StakeholderGroupPermAddTownXpath}             Auto Town Test
    # Zip code
    Input Text                              ${StakeholderGroupPermAddZipXpath}              1234
    # Location
    Click Element                           ${StakeholderGroupPermAddLocDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupPermAddLocOptXpath}           40 seconds
    Sleep    1
    Click Element                           ${StakeholderGroupPermAddLocOptXpath}

    # Contractor or Supplier Manager Tab
    Click Element                           ${StakeholderGroupContractSupplierTabXpath}
    Sleep       1

    # Status
    Scroll Element Into View                ${StakeGroupContSuppManQuestionnairePanelXpath}
    Page Should Contain Element             ${StakeGroupContSuppManQuestionnairePanelXpath}
    Page Should Contain Element             ${StakeGroupContSuppManDocumentsPanelXpath}
    Sleep       1
    Scroll Element Into View                ${StakeGroupContSuppManStatusDDXpath}
    Click Element                           ${StakeGroupContSuppManStatusDDXpath}
    Sleep       1

    # Alternate scenario 1
    Wait Until Element Is Visible           ${StakeGroupContSuppManStatusNonCompliantXpath}     10 seconds
    Click Element                           ${StakeGroupContSuppManStatusNonCompliantXpath}
    Element Should Not Be Visible           ${StakeGroupContSuppManOrdersPanelXpath}

    # Main Scenario
    Scroll Element Into View                ${StakeGroupContSuppManStatusDDXpath}
    Click Element                           ${StakeGroupContSuppManStatusDDXpath}
    Sleep       1
    Wait Until Element Is Visible           ${StakeGroupContSuppManStatusCompliantXpath}        10 seconds
    Click Element                           ${StakeGroupContSuppManStatusCompliantXpath}
    Page Should Contain Element             ${StakeGroupContSuppManOrdersPanelXpath}
    Scroll Element Into View                ${StakeGroupContSuppManOrdersPanelXpath}
    Sleep       1
    Scroll Element Into View                ${StakeGroupContSuppManStatusDDXpath}

    # Fax
    Input Text                              ${StakeGroupContSuppManFaxXpath}                    0111002000
    # Email
    Input Text                              ${StakeGroupContSuppManEmailXpath}                  contractortest@email.co.za
    # About
    Input Text                              ${StakeGroupContSuppManAboutXpath}                  FR5 - Capture Contractor or Supplier Manager_MS
    # Services
    Input Text                              ${StakeGroupContSuppManServicesXpath}               FR5 - Capture Contractor or Supplier Manager_MS
    # Main Contact
    Input Text                              ${StakeGroupContSuppManMainContactXpath}            FirstName LastName
    # Main Contact Phone
    Input Text                              ${StakeGroupContSuppManMainContactPhoneXpath}       0123216547
    # Main Contact Email
    Input Text                              ${StakeGroupContSuppManMainContactEmailXpath}       maintext@email.com
    Scroll Element Into View                ${StakeGroupContSuppManOrdersPanelXpath}
    Sleep       1

    # Main Contact Individual
    Click Element                           ${StakeGroupContSuppManMainContactIndividualDDXpath}
    Wait Until Element Is Visible           ${StakeGroupContSuppManMainContactIndividualSrchXpath}       40 seconds
    Sleep    1
    Input Text                              ${StakeGroupContSuppManMainContactIndividualSrchXpath}       fletcher
    Press Keys                              ${StakeGroupContSuppManMainContactIndividualSrchXpath}       ENTER
    Wait Until Element Is Visible           ${StakeGroupContSuppManMainContactIndividualOptXpath}        40 seconds
    Sleep    1
    Click Element                           ${StakeGroupContSuppManMainContactIndividualOptXpath}

    # Site company
    Click Element                           ${StakeGroupContSuppManSiteCompanyDDXpath}
    Wait Until Element Is Visible           ${StakeGroupContSuppManSiteCompanyNoXpath}           10 seconds
    Click Element                           ${StakeGroupContSuppManSiteCompanyNoXpath}
    Sleep       1
    Click Element                           ${StakeGroupContSuppManSiteCompanyDDXpath}
    Click Element                           ${StakeGroupContSuppManSiteCompanyYesXpath}
    # Vendor nr
    Input Text                              ${StakeGroupContSuppManVendornrXpath}                123654789

    # Save button
    Click Element                           ${StakeholderGroupSaveBtnXpath}
    Wait Until Element Is Visible           ${RecordSaved}                              60 seconds
    Screenshot      Stakeholder Group Contractor Tab completed

#************************************************* FR6 - Capture Contractor Questionnaire_MS ****************************************
FR6 - Capture Contractor Questionnaire_MS
    Log To Console    FR6 - Capture Contractor Questionnaire_MS
    # Questionnaires panel
    Click Element                                   ${StakeGroupContSuppManQuestionnairePanelXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionNoResultsXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionAddBtnXpath}
    Click Element                                   ${StakeGroupQuestionAddBtnXpath}
    Sleep       2
    Wait Until Element Is Visible                   ${StakeGroupQuestionRecordOpenedXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionPFXpath}
    Screenshot      Stakeholder Group Contractor Questionnaire Opened

    # Process Flow
    Click Element                                   ${StakeGroupQuestionPFXpath}
    Sleep       1
    Page Should Contain Element                     ${StakeGroupQuestionAPFAddXpath}
    Screenshot      Stakeholder Group Contractor Questionnaire Opened - Add Phase

    # Tabs Visible
    Page Should Contain Element                     ${StakeGroupQuestionCompanyInfoTabXpath}
    Page Should Contain Element                     ${StakeGroupQuestionBusinessPartnerTabXpath}
    Page Should Contain Element                     ${StakeGroupQuestionCompanyCertificatesTabXpath}

    # Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${StakeGroupQuestionTabRightArrowXpath}
    END
    Sleep       1
    Page Should Contain Element                     ${StakeGroupQuestionSafetyHealthIssuesTabXpath}
    Page Should Contain Element                     ${StakeGroupQuestionHealthSafeyEnvironmentTabXpath}
    # Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${StakeGroupQuestionTabRightArrowXpath}
    END
    Sleep       1
    Page Should Contain Element                     ${StakeGroupQuestionAdditionalCompanyInformationTabXpath}
    Page Should Contain Element                     ${StakeGroupQuestionSupportDocsTabXpath}
    # Tab Left Arrow
    FOR  ${i}     IN RANGE  1   13
    Click Element                                   ${StakeGroupQuestionTabLeftArrowXpath}
    END
    Sleep       1

    # Company Information
    Click Element                                   ${StakeGroupQuestionCompanyInfoTabXpath}
    Screenshot      Stakeholder Group Contractor Questionnaire Company Information Tab
    # Company Type
    Click Element                                   ${StakeGroupQuestionCompanyTypeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionCompanyTypeCCXpath}                  30 seconds
    Click Element                                   ${StakeGroupQuestionCompanyTypeCCXpath}
    # Provide your relevant Entity's Registration Number
    Input Text                                      ${StakeGroupQuestionEntityRegNoXpath}                    001357894
    # (1) BUSINESS PARTNER COMPANY ENGAGEMENT FORM
    Click Element                                   ${StakeGroupQuestionBusinessPartnerTabXpath}
    # Main Area
    Input Text                                      ${StakeGroupQuestionMainAreaXpath}                       FR6 - Capture Contractor Questionnaire_MS
    # Operating Unit
    Input Text                                      ${StakeGroupQuestionOperatingUnitXpath}                  FR6 - Capture Contractor Questionnaire_MS
    # Company Certificates
    Click Element                                   ${StakeGroupQuestionCompanyCertificatesTabXpath}
    # Quality Management
    Click Element                                   ${StakeGroupQuestionQualityManDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionQualityManNoXpath}                  30 seconds
    Click Element                                   ${StakeGroupQuestionQualityManNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionQualityManDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionQualityManYesXpath}                 30 seconds
    Click Element                                   ${StakeGroupQuestionQualityManYesXpath}
    # Environmental Management
    Click Element                                   ${StakeGroupQuestionEnvironmentalManDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionEnvironmentalManNoXpath}                  30 seconds
    Click Element                                   ${StakeGroupQuestionEnvironmentalManNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionEnvironmentalManDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionEnvironmentalManYesXpath}                 30 seconds
    Click Element                                   ${StakeGroupQuestionEnvironmentalManYesXpath}
    # Management Systems
    Click Element                                   ${StakeGroupQuestionManSystemsDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionManSystemsNoXpath}                  30 seconds
    Click Element                                   ${StakeGroupQuestionManSystemsNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionManSystemsDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionManSystemsYesXpath}                 30 seconds
    Click Element                                   ${StakeGroupQuestionManSystemsYesXpath}
    # Safety and Health Legal Requirements & Issues
    # Tab Right Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${StakeGroupQuestionTabRightArrowXpath}
    END
    Sleep       1
    Click Element                                   ${StakeGroupQuestionSafetyHealthIssuesTabXpath}
    # Are you registered with the Department of Labour in terms of the COID Act
    Click Element                                   ${StakeGroupQuestionCOID_Act_DDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionCOID_Act_NoXpath}                    30 seconds
    Click Element                                   ${StakeGroupQuestionCOID_Act_NoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionCOID_Act_DDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionCOID_Act_YesXpath}                 30 seconds
    Click Element                                   ${StakeGroupQuestionCOID_Act_YesXpath}
    # Provide your COID
    Input Text                                      ${StakeGroupQuestionProvideCOIDXpath}                    123654789987456321
    # Tab Right Arrow
    FOR  ${i}     IN RANGE  1  3
    Click Element                                   ${StakeGroupQuestionTabRightArrowXpath}
    END
    Sleep       1
    # Health,Safety,Environmental and Community (Policies, Plans & Systems)
    Click Element                                   ${StakeGroupQuestionHealthSafeyEnvironmentTabXpath}
    # Does your Company have access to relevant Environmental and Health & Safety Legislation (Legal Register)?
    Click Element                                   ${StakeGroupQuestionLegalRegisterDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionLegalRegisterNoXpath}                    30 seconds
    Click Element                                   ${StakeGroupQuestionLegalRegisterNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionLegalRegisterDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionLegalRegisterYesXpath}                   30 seconds
    Click Element                                   ${StakeGroupQuestionLegalRegisterYesXpath}
    # Health and Safety Plan
    Click Element                                   ${StakeGroupQuestionHealthSafetyPlanDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionHealthSafetyPlanNoXpath}                    30 seconds
    Click Element                                   ${StakeGroupQuestionHealthSafetyPlanNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupQuestionHealthSafetyPlanDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionHealthSafetyPlanYesXpath}                   30 seconds
    Click Element                                   ${StakeGroupQuestionHealthSafetyPlanYesXpath}
    Sleep       1
    # Additional Company Information
    Click Element                                   ${StakeGroupQuestionAdditionalCompanyInformationTabXpath}
    # Is the premises you are using Rented, Owned or Leased?
    Click Element                                   ${StakeGroupQuestionRentedOwnedLeasedDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionRentedOwnedLeasedRentedXpath}               30 seconds
    Click Element                                   ${StakeGroupQuestionRentedOwnedLeasedRentedXpath}
    # Furnish Annual Nett Profit
    Input Text                                      ${StakeGroupQuestionFurnishAnnualNettProfitXpath}               12500000

    # Supporting Documents
    Click Element                                   ${StakeGroupQuestionSupportDocsTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupQuestionSupportDocsLinkXpath}                  20 seconds
    Click Element                                   ${StakeGroupQuestionSupportDocsLinkXpath}
    #Alert should be present
    Switch Window
    Sleep       1
    Wait Until Element Is Visible                   ${StakeholderGroupSuppDocsURLXpath}             20 seconds
    Clear Element Text                              ${StakeholderGroupSuppDocsURLXpath}
    Input Text                                      ${StakeholderGroupSuppDocsURLXpath}             www.isomertix.com
    Input Text                                      ${StakeholderGroupSuppDocsURLTitleXpath}        Isometrix
    Click Element                                   ${StakeholderGroupSuppDocsAddXpath}
    Screenshot       Supporting Documents Link Added
    sleep       1
    Select Frame                                    ${iFrame}

    # Save Button
    Click Element                                   ${StakeGroupQuestionSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                              60 seconds
    Page Should Contain Element                     ${StakeGroupQuestionAPFEditXpath}
    Screenshot      Stakeholder Group Contractor Questionnaire Saved - Edit Phase
    # Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${StakeGroupQuestionTabLeftArrowXpath}
    END
    Sleep       1

    # Close Record
    Click Element                                   ${StakeGroupQuestionCloseBtnXpath}
    Sleep       12
    Wait Until Page Does Not Contain                ${StakeGroupRelationsLoadingDataXpath}               30 seconds

    # Contractor or Supplier Manager Tab
    Click Element                                   ${StakeholderGroupContractSupplierTabXpath}
    Sleep       1

#************************************************* FR7 - Capture Contractor Documents_MS ****************************************
FR7 - Capture Contractor Documents_MS
    Log To Console    FR7 - Capture Contractor Documents_MS
    # Documents panel
    Scroll Element Into View                        ${StakeGroupContSuppManDocumentsPanelXpath}
    Sleep       1
    Click Element                                   ${StakeGroupContSuppManDocumentsPanelXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsNoResultsXpath}                             20 seconds
    Wait Until Element Is Visible                   ${StakeGroupDocumentsAddBtnXpath}                                20 seconds
    Click Element                                   ${StakeGroupDocumentsAddBtnXpath}
    Scroll Element Into View                        ${StakeGroupDocumentsInLineEditXpath}
    Sleep       2
    Wait Until Element Is Visible                   ${StakeGroupDocumentsTypeTextBoxXpath}
    Screenshot      Stakeholder Groups Contractor Documents

    # Document Type
    Input Text                                      ${StakeGroupDocumentsTypeTextBoxXpath}                           FR7 - Capture Contractor Documents_MS

    # Document Uploaded
    Click Element                                   ${StakeGroupDocumentsUploadedDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsUploadedNoXpath}                            10 seconds
    Click Element                                   ${StakeGroupDocumentsUploadedNoXpath}
    Sleep       1
    Click Element                                   ${StakeGroupDocumentsUploadedDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsUploadedYesXpath}                           10 seconds
    Click Element                                   ${StakeGroupDocumentsUploadedYesXpath}

    # Outcome
    Click Element                                   ${StakeGroupDocumentsOutcomeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsOutcomeNotVerifiedXpath}                    10 seconds
    Click Element                                   ${StakeGroupDocumentsOutcomeNotVerifiedXpath}
    Sleep       1
    Click Element                                   ${StakeGroupDocumentsOutcomeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsOutcomeUnresolvedXpath}                     10 seconds
    Click Element                                   ${StakeGroupDocumentsOutcomeUnresolvedXpath}
    Sleep       1
    Click Element                                   ${StakeGroupDocumentsOutcomeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsOutcomeVerifiedXpath}                       10 seconds
    Click Element                                   ${StakeGroupDocumentsOutcomeVerifiedXpath}
    Sleep       1

    # Date Verified
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${StakeGroupDocumentsDateVerifiedXpath}                          ${CurrentDate}

    # Comments
    Input Text                                      ${StakeGroupDocumentsCommentsXpath}                              FR7 - Capture Contractor Documents_MS

    # Save Button
    Click Element                                   ${StakeGroupDocumentsSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Screenshot      Stakeholder Groups Contractor Documents Record Saved

    # In Line Edit Button
    Click Element                                   ${StakeGroupDocumentsInLineEditBtnXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsInLineEditRecordXpath}                      60 seconds

    # Open Documents Record
    Click Element                                   ${StakeGroupDocumentsInLineEditRecordXpath}
    Wait Until Element Is Visible                   ${StakeGroupDocumentsRecordHeaderXpath}                          60 seconds
    Wait Until Element Is Visible                   ${StakeGroupDocumentsUploadLinkXpath}                            60 seconds
    Screenshot      Stakeholder Groups Contractor Documents Record Opened

    # Process Flow
    Sleep       2
    Click Element                                   ${StakeGroupDocumentsPFXpath}
    Page Should Contain Element                     ${StakeGroupDocumentsPFEditXpath}

    # Document upload
    Wait Until Element Is Visible                   ${StakeGroupDocumentsUploadLinkXpath}                  20 seconds
    Click Element                                   ${StakeGroupDocumentsUploadLinkXpath}
    #Alert should be present
    Switch Window
    Sleep       1
    Wait Until Element Is Visible                   ${StakeholderGroupSuppDocsURLXpath}             20 seconds
    Clear Element Text                              ${StakeholderGroupSuppDocsURLXpath}
    Input Text                                      ${StakeholderGroupSuppDocsURLXpath}             www.isomertix.com
    Input Text                                      ${StakeholderGroupSuppDocsURLTitleXpath}        Isometrix
    Click Element                                   ${StakeholderGroupSuppDocsAddXpath}
    Screenshot       Supporting Documents Link Added
    sleep       1
    Select Frame                                    ${iFrame}
    Screenshot      Stakeholder Groups Documents Upload Added

    # Record Save Button
    Click Element                                   ${StakeGroupDocumentsRecordSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds

    # Close Button
    Click Element                                   ${StakeGroupDocumentsCloseBtnXpath}
    Sleep       12
    Wait Until Page Does Not Contain                ${StakeGroupRelationsLoadingDataXpath}               30 seconds

    # Contractor or Supplier Manager Tab
    Click Element                                   ${StakeholderGroupContractSupplierTabXpath}
    Sleep       1

#************************************************* FR8 - Capture Contractor Orders_MS_OS ****************************************
FR8 - Capture Contractor Orders_MS
    Log To Console    FR8 - Capture Contractor Orders_MS
    # Orders Panel
    Click Element                                   ${StakeGroupContSuppManOrdersPanelXpath}
    Sleep       1
    Scroll Element Into View                        ${StakeGroupOrdersInLineEditXpath}
    Sleep       1
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRiskAssLoadingMask}                       60 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersAddBtnXpath}                                   60 seconds
    Screenshot      Stakeholder Groups Contractor Orders

    # Orders Add Button
    Click Element                                   ${StakeGroupOrdersAddBtnXpath}
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                            30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersRecordHeaderXpath}                             60 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersOrderNoXpath}                                  60 seconds
    Page Should Contain Element                     ${StakeGroupOrdersOrderTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersScopeWorkTabXpath}

    # Process Flow
    Wait Until Element Is Visible                   ${StakeGroupOrdersPFXpath}                                       60 seconds
    Click Element                                   ${StakeGroupOrdersPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Orders Opened - Add Phase

    # Order number
    Input Text                                      ${StakeGroupOrdersOrderNoXpath}                                  0123
    # Order Status
    Click Element                                   ${StakeGroupOrdersStatusDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersStatusApprovedXpath}                           60 seconds
    Click Element                                   ${StakeGroupOrdersStatusApprovedXpath}
    Sleep       1
    Page Should Contain Element                     ${StakeGroupOrdersApprovedByDDXpath}
    Page Should Contain Element                     ${StakeGroupOrdersDateApprovedXpath}

    # Optional Scenario
    Click Element                                   ${StakeGroupOrdersStatusDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersStatusRejectedXpath}                           60 seconds
    Click Element                                   ${StakeGroupOrdersStatusRejectedXpath}
    Element Should Not Be Visible                   ${StakeGroupOrdersApprovedByDDXpath}
    Element Should Not Be Visible                   ${StakeGroupOrdersDateApprovedXpath}
    Click Element                                   ${StakeGroupOrdersStatusDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersStatusDDDeselectXpath}                           60 seconds
    Click Element                                   ${StakeGroupOrdersStatusDDDeselectXpath}
    Sleep       1
    Click Element                                   ${StakeGroupOrdersStatusDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersStatusApprovedXpath}                           60 seconds
    Click Element                                   ${StakeGroupOrdersStatusApprovedXpath}
    Sleep       1
    Screenshot      Stakeholder Groups Contractor Orders Status - Approved

    # Approved By
    Click Element                                   ${StakeGroupOrdersApprovedByDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersApprovedBySrchXpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupOrdersApprovedBySrchXpath}       fletcher
    Press Keys                                      ${StakeGroupOrdersApprovedBySrchXpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupOrdersApprovedByOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupOrdersApprovedByOptXpath}

    # Date approved
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${StakeGroupOrdersDateApprovedXpath}                             ${CurrentDate}

    # Scope of Work
    Click Element                                   ${StakeGroupOrdersScopeWorkTabXpath}
    # Area where work conducted
    Click Element                                   ${StakeGroupOrdersAreaDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersBusUnitAngloXpath}                       60 seconds
    Click Element                                   ${StakeGroupOrdersBusUnitAngloXpath}
    Click Element                                   ${StakeGroupOrdersAreaDDXpath}

    # Project
    Input Text                                      ${StakeGroupOrdersProjectXpath}                              FR8 - Capture Contractor Orders_MS
    # Project description
    Input Text                                      ${StakeGroupOrdersProjectDescriptionXpath}                   FR8 01-01: Capture Contractor Orders_MS
    # Start date
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${StakeGroupOrdersStartDateXpath}                            ${CurrentDate}
    # End Date
    ${EndDate}              Get Current Date        result_format=%d-%m-%Y              increment=+7 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${StakeGroupOrdersEndDateXpath}                              ${EndDate}
    # Contractor type
    Click Element                                   ${StakeGroupOrdersContractorTypeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersContractorTypeMaintenanceXpath}            60 seconds
    Click Element                                   ${StakeGroupOrdersContractorTypeMaintenanceXpath}
    Click Element                                   ${StakeGroupOrdersContractorTypeProjectXpath}
    Click Element                                   ${StakeGroupOrdersContractorTypeDDArrowXpath}

    # Save Button
    Click Element                                   ${StakeGroupOrdersSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds
    Page Should Contain Element                     ${StakeGroupOrdersRecordNoXpath}
    Page Should Contain Element                     ${StakeGroupOrdersPFEditXpath}
    Page Should Contain Element                     ${StakeGroupOrdersRiskAssessmentTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersEmployeesTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersFleetManagementTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersToolsEquipTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChemicalRegisterTabXpath}
    Wait Until Element Is Not Visible               ${RecordSaved2}                                 30 seconds

    # Tab Right Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${StakeGroupOrdersTabRightArrowXpath}
    END
    Sleep       1
    Page Should Contain Element                     ${StakeGroupOrdersPermissiontoWorkTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersEvaluationsTabXpath}
    Screenshot      Stakeholder Groups Contractor Orders Saved and Tabs Visible
    # Tab Left Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${StakeGroupOrdersTabLeftArrowXpath}
    END
    Sleep       1

#************************************************* FR10 - Capture Contractor Fleet Management_MS ****************************************
FR10 - Capture Contractor Fleet Management_MS
    Log To Console    FR10 - Capture Contractor Fleet Management_MS
    # Fleet Management Tab
    Click Element                                   ${StakeGroupOrdersFleetManagementTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersFleetManNoResultsXpath}                              60 seconds
    Screenshot      Stakeholder Groups Contractor Order Fleet Management Tab

    # Add Button
    Click Element                                   ${StakeGroupOrdersFleetManAddXpath}
    Sleep       2

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                  30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersFleetManPFXpath}                                     60 seconds
    Click Element                                   ${StakeGroupOrdersFleetManPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersFleetManPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Order Fleet Management Add Phase

    # Vehicle type / make
    Input Text                                      ${StakeGroupOrdersFleetManVehicletypemakeXpath}                        FR10 - Capture Contractor Fleet Management_MS
    # Reg No
    Input Text                                      ${StakeGroupOrdersFleetManRegNoXpath}                                  ABC123GP
    # License expiry date
    ${ExpiryDate}          Get Current Date         result_format=%d-%m-%Y              increment=+30 day
    Set Global Variable                             ${ExpiryDate}
    Input Text                                      ${StakeGroupOrdersFleetManLicenseExpiryDateXpath}                      ${ExpiryDate}

    # Save Button
    Click Element                                   ${StakeGroupOrdersFleetManSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                                         60 seconds
    Wait Until Page Contains Element                ${StakeGroupOrdersFleetManEditXpath}
    Screenshot      Stakeholder Groups Contractor Order Fleet Management Record Saved

    # Close Record
    Click Element                                   ${StakeGroupOrdersFleetManCloseBtnXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersFleetManRecordSubModXpath}                            60 seconds
    Screenshot      Stakeholder Groups Contractor Order Fleet Management Record Added

#*********************************************** FR11 - Capture Contractor Tools and Equipment_MS_OS *******************************************
FR11 - Capture Contractor Tools and Equipment_MS
    Log To Console    FR11 - Capture Contractor Tools and Equipment_MS
    # Tools and Equipment Tab
    Click Element                                   ${StakeGroupOrdersToolsEquipTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersToolsEquipNoResultsXpath}                              60 seconds
    Screenshot      Stakeholder Groups Contractor Order Tools and Equipment Tab

    # Add Button
    Click Element                                   ${StakeGroupOrdersToolsEquipAddBtnXpath}
    Sleep       2

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                    30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersToolsEquipPFXpath}                                     60 seconds
    Click Element                                   ${StakeGroupOrdersToolsEquipPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersToolsEquipPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Order Tools and Equipment Add Phase

    # Related Documents
    Click Element                                   ${StakeGroupOrdersToolsEquipRelatedDocumentsTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersToolsEquipRelatedDocumentsLinkXpath}                  20 seconds
    Click Element                                   ${StakeGroupOrdersToolsEquipRelatedDocumentsLinkXpath}
    #Alert should be present
    Switch Window
    Sleep       1
    Wait Until Element Is Visible                   ${StakeholderGroupSuppDocsURLXpath}             20 seconds
    Clear Element Text                              ${StakeholderGroupSuppDocsURLXpath}
    Input Text                                      ${StakeholderGroupSuppDocsURLXpath}             www.isomertix.com
    Input Text                                      ${StakeholderGroupSuppDocsURLTitleXpath}        Isometrix
    Click Element                                   ${StakeholderGroupSuppDocsAddXpath}
    Screenshot       Supporting Documents Link Added
    sleep       1
    Select Frame                                    ${iFrame}

    # Equipment Detail Tab
    Click Element                                   ${StakeGroupOrdersToolsEquipDetailTabXpath}
    # Description of equipment
    Input Text                                      ${StakeGroupOrdersToolsEquipDescriptionXpath}                FR11 - Capture Contractor Tools and Equipment_MS
    # Serial number
    Input Text                                      ${StakeGroupOrdersToolsEquipSerialNoXpath}                   0123456789
    # Calibration certificate
    Input Text                                      ${StakeGroupOrdersToolsEquipCalibrationCertXpath}            Cal_Cert_012
    # Load test certificate
    Input Text                                      ${StakeGroupOrdersToolsEquipLoadTestXpath}                   Load_Cert_345
    # Equipment tagged (Ref No.)
    Input Text                                      ${StakeGroupOrdersToolsEquipEquipTaggedXpath}                Equip_Ref_ 678
    # Name of tagging authority
    Input Text                                      ${StakeGroupOrdersToolsEquipNameTagAuthXpath}                Equipment_Tag-Auth_9012
    # Pre-use inspection checklist
    Input Text                                      ${StakeGroupOrdersToolsEquipPreInspectionCheckXpath}         Pre_Tag_Auth_Test
    # Logbook (Ref No.)
    Input Text                                      ${StakeGroupOrdersToolsEquipLogbookXpath}                    Log_Test_#123

    # Save Button
    Click Element                                   ${StakeGroupOrdersToolsEquipSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                             60 seconds
    Wait Until Page Contains Element                ${StakeGroupOrdersToolsEquipPFEditXpath}
    Screenshot      Stakeholder Groups Contractor Order Tools and Equipment Record Saved

    # Close Record
    Click Element                                   ${StakeGroupOrdersToolsEquipCloseBtnXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersToolsEquipRecordSubModXpath}                           60 seconds
    Screenshot      Stakeholder Groups Contractor Order Tools and Equipment Record Added

#*********************************************** FR12 - View Chemical Register_MS **************************************************
FR12 - View Chemical Register_MS
    Log To Console    FR12 - View Chemical Register_MS
    # Chemical Register Tab
    Click Element                                   ${StakeGroupOrdersChemicalRegisterTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialItemsXpath}                                    60 seconds
    Screenshot      Stakeholder Groups Contractor Order Chemical Register Tab

    # Chemicals they bring onto site
    Click Element                                   ${StakeGroupOrdersChemcialChemicalsSiteDDXpath}
    Sleep       3
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialChemicalsSiteAcetoneXpath}                                 60 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialChemicalsSiteSelectAllXpath}                                 60 seconds
    Click Element                                   ${StakeGroupOrdersChemcialChemicalsSiteSelectAllXpath}

    # Save Button
    Click Element                                   ${StakeGroupOrdersSaveBtnXpath}
    Sleep       1
#    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds

    # Chemicals Contractor will be exposed to
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}                                 30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialChemicalsContractorExposedXpath}               60 seconds
    Click Element                                   ${StakeGroupOrdersChemcialChemicalsContractorExposedXpath}

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                    30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialHazardChemRegisterLinkXpath}                   60 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChemcialHazardChemRegisterPFXpath}                     60 seconds
    Click Element                                   ${StakeGroupOrdersChemcialHazardChemRegisterPFXpath}
    Sleep       1
    Page Should Contain Element                     ${StakeGroupOrdersChemcialHazardChemRegisterPFEditXpath}
    Screenshot      Stakeholder Groups Contractor Order Chemical Register Edit Phase

#*********************************************** FR13 - Capture Contractor Permission to Work Sign Off_MS **************************************************
FR13 - Capture Contractor Permission to Work Sign Off_MS
    Log To Console    FR13 - Capture Contractor Permission to Work Sign Off_MS
    # Permission to Work Sign Off Tab
    Click Element                                   ${StakeGroupOrdersPermissiontoWorkTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkNoResultsXpath}                          60 seconds
    Screenshot      Stakeholder Groups Contractor Order Permission to Work Sign Off Tab

    # Add Button
    Click Element                                   ${StakeGroupOrdersPermissionWorkAddBtnXpath}
    Sleep       2

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                    30 seconds
    Sleep       1
    Click Element                                   ${StakeGroupOrdersPermissionWorkRoleLabelXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkPFXpath}                                 60 seconds
    Click Element                                   ${StakeGroupOrdersPermissionWorkPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersPermissionWorkPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Order Permission to Work Sign Off Add Phase

    # Role
    Click Element                                   ${StakeGroupOrdersPermissionWorkRoleDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkRole1Xpath}                              60 seconds
    Click Element                                   ${StakeGroupOrdersPermissionWorkRole1Xpath}
    # Responsible person to sign off
    Click Element                                   ${StakeGroupOrdersPermissionWorkResponsiblePersonDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkResponsiblePersonSrchXpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupOrdersPermissionWorkResponsiblePersonSrchXpath}       fletcher
    Press Keys                                      ${StakeGroupOrdersPermissionWorkResponsiblePersonSrchXpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkResponsiblePersonOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupOrdersPermissionWorkResponsiblePersonOptXpath}
    # Comments
    Input Text                                      ${StakeGroupOrdersPermissionWorkSignOffCommentsXpath}                     FR13 - Capture Contractor Permission to Work Sign Off_MS

    # Save Button
    Click Element                                   ${StakeGroupOrdersPermissionWorkSignOffSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                              60 seconds
    Wait Until Page Contains Element                ${StakeGroupOrdersPermissionWorkPFEditXpath}
    Wait Until Page Contains Element                ${StakeGroupOrdersPermissionWorkSignOffRecordNoXpath}
    Screenshot      Stakeholder Groups Contractor Order Permission to Work Sign Off Edit Phase

    # Close Record
    Click Element                                   ${StakeGroupOrdersPermissionWorkSignOffCloseBtnXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersPermissionWorkSignOffRecordSubModXpath}                 60 seconds
    Screenshot      Stakeholder Groups Contractor Order Tools and Equipment Record Added

#*********************************************** FR14 - Capture Contractor Checklist_MS **************************************************
FR14 - Capture Contractor Checklist_MS
    Log To Console    FR14 - Capture Contractor Checklist_MS
    # Evaluations Tab
    Click Element                                   ${StakeGroupOrdersEvaluationsTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistNoResultsXpath}                          60 seconds
    Screenshot      Stakeholder Groups Contractor Order Evaluations Tab

    # Add Button
    Click Element                                   ${StakeGroupOrdersChecklistAddBtnXpath}
    Sleep       2

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                    30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPFXpath}                                      60 seconds
    Click Element                                   ${StakeGroupOrdersChecklistPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChecklistPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Order Contractor Checklist Add Phase

    # Start date
    ${StartDate}            Get Current Date          result_format=%d-%m-%Y
    Set Global Variable                             ${StartDate}
    Input Text                                      ${StakeGroupOrdersChecklistStartDateXpath}                         ${StartDate}
    # End date
    ${EndDate}              Get Current Date          result_format=%d-%m-%Y            increment=+7 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${StakeGroupOrdersChecklistEndDateXpath}                           ${EndDate}
    # Checklist
    Click Element                                   ${StakeGroupOrdersChecklistDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistEvaluationXpath}                              60 seconds
    Click Element                                   ${StakeGroupOrdersChecklistEvaluationXpath}
    # Person conducting the checklist
    Click Element                                   ${StakeGroupOrdersChecklistPersonConductChecklistXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPersonConductChecklistSrchXpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupOrdersChecklistPersonConductChecklistSrchXpath}       fletcher
    Press Keys                                      ${StakeGroupOrdersChecklistPersonConductChecklistSrchXpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPersonConductChecklistOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupOrdersChecklistPersonConductChecklistOptXpath}

    # Submit Button
    Click Element                                   ${StakeGroupOrdersChecklistSubmitBtnXpath}
    Sleep      2
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistSubModRecordXpath}                            60 seconds
    Screenshot      Stakeholder Groups Contractor Order Checklist Record Added

    # Add Button
    Click Element                                   ${StakeGroupOrdersChecklistAddBtnXpath}
    Sleep       2

    # Process Flow
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                                    30 seconds
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPFXpath}                                      60 seconds
    Click Element                                   ${StakeGroupOrdersChecklistPFXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChecklistPFAddXpath}
    Screenshot      Stakeholder Groups Contractor Order Contractor Checklist Add Phase

    # Start date
    ${StartDate}            Get Current Date          result_format=%d-%m-%Y            increment=+7 day
    Set Global Variable                             ${StartDate}
    Input Text                                      ${StakeGroupOrdersChecklistStartDateXpath}                         ${StartDate}

    # End date
    ${EndDate}              Get Current Date          result_format=%d-%m-%Y            increment=+14 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${StakeGroupOrdersChecklistEndDateXpath}                           ${EndDate}

    # Checklist
    Click Element                                   ${StakeGroupOrdersChecklistDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistEvaluationXpath}                              60 seconds
    Click Element                                   ${StakeGroupOrdersChecklistEvaluationXpath}

    # Person conducting the checklist
    Click Element                                   ${StakeGroupOrdersChecklistPersonConductChecklistXpath}
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPersonConductChecklistSrch2Xpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupOrdersChecklistPersonConductChecklistSrch2Xpath}       fletcher
    Press Keys                                      ${StakeGroupOrdersChecklistPersonConductChecklistSrch2Xpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupOrdersChecklistPersonConductChecklistOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupOrdersChecklistPersonConductChecklistOptXpath}

    # Save and Continue Button
    Click Element                                   ${StakeGroupOrdersChecklistSaveContinueBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                              60 seconds
    Wait Until Page Contains Element                ${StakeGroupOrdersChecklistPFEditXpath}
    Wait Until Page Contains Element                ${StakeGroupOrdersChecklistRecordNoXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChecklistStartBtnXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChecklistFindingsTabXpath}
    Page Should Contain Element                     ${StakeGroupOrdersChecklistSupportDocsTabXpath}
    Screenshot      Stakeholder Groups Contractor Order Checklist Edit Phase























