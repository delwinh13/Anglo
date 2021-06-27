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

#************************************************* FR2 - Capture Topic / Issue Assessment_MS ****************************************
*** Keywords ***
FR2 - Capture Topic_Issue Assessment_MS
    Log To Console    FR2 - Capture Topic_Issue Assessment_MS

    # Stakeholder Analysis Tab
    Wait Until Element Is Visible           ${StakeholderGroupAnalysisTab}            40 seconds
    Click Element                           ${StakeholderGroupAnalysisTab}
    Sleep       1

    # Social Status Panel
    Click Element                           ${StakeholderGroupSocialPanelXpath}

    # Validate Stakeholder Individual matrix; Topic / Issue Assessment and Guidelines panels
    Page Should Contain Element             ${StakeholderGroupAnalysisSIMatrixXpath}
    Page Should Contain Element             ${StakeholderGroupAnalysisTopIssAssPanelXpath}
    Page Should Contain Element             ${StakeholderGroupAnalysisGuidePanelXpath}
    Screenshot      matrix; Topic_Issue Assessment and Guidelines panels

    # Impact rating
    Click Element                           ${StakeholderGroupAnalysisImpactRatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupAnalysisImpactRatMedXpath}        60 seconds
    Click Element                           ${StakeholderGroupAnalysisImpactRatMedXpath}

    # Influence / Interest rating
    Click Element                           ${StakeholderGroupAnalysisInfRatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupAnalysisInfRatMedXpath}           60 seconds
    Click Element                           ${StakeholderGroupAnalysisInfRatMedXpath}

    # Comments
    Input Text                              ${StakeholderGroupAnalysisCommentsXpath}            FR1_03 - Conduct Stakeholder Group Analysis_MS_OS

    # Optional scenario
    Scroll Element Into View                ${StakeholderGroupAnalysisGuidePanelXpath}
    Sleep       1
    Click Element                           ${StakeholderGroupAnalysisGuidePanelXpath}
    Scroll Element Into View                ${StakeholderGroupAnalysisGuidelinesExampleToolsLabelXpath}
    Sleep       1
    Screenshot      Guidelines Panel opened
    Scroll Element Into View                ${StakeholderGroupNameXpath}
    Sleep       1

#    # Save Button
#    Click Element                           ${StakeholderGroupSaveBtnXpath}
#    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds

    # Topic/Issue Assessment Panel
    Page Should Contain Element             ${StakeholderGroupAnalysisTopIssAssPanelXpath}
    Click Element                           ${StakeholderGroupAnalysisTopIssAssPanelXpath}
    Sleep       1
    Scroll Element Into View                        ${StakeGroupTopIssAssInLineEditTextXpath}
    Sleep       1
    Wait Until Element Is Visible                   ${StakeGroupTopIssAssNoResultsXpath}              30 seconds

    # Topic/Issue Assessment Add
    Click Element                                   ${StakeGroupTopIssAssAddBtnXpath}
    Sleep       2
    Wait Until Element Is Visible                   ${StakeGroupTopIssAssRecordVisibleXpath}          30 seconds
    Screenshot      Topic/Issue Assessment Record Visible

    # Topic/Issue
    Click Element                                   ${StakeGroupTopIssAssDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupTopIssAssDDOptXpath}                       30 seconds
    Click Element                                   ${StakeGroupTopIssAssDDOptXpath}

    # Impact
    Click Element                                   ${StakeGroupTopIssAssImpactDDXpath}
    Sleep       1
    Wait Until Element Is Visible                   ${StakeGroupTopIssAssImpactMedXpath}              30 seconds
    Click Element                                   ${StakeGroupTopIssAssImpactMedXpath}

    # Influence
    Click Element                                   ${StakeGroupTopIssAssInfluenceDDXpath}
    Sleep       1
    Wait Until Element Is Visible                   ${StakeGroupTopIssAssInfluenceMedXpath}                   30 seconds
    Click Element                                   ${StakeGroupTopIssAssInfluenceMedXpath}

    # Assessment
    Page Should Contain Element                     ${StakeGroupTopIssAssMonitorKeepInformedXpath}
    Screenshot      Topic/Issue Assessment - Keep Informed

    # Save Button
    Click Element                                   ${StakeGroupTopIssAssSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                               60 seconds
    Screenshot      Topic/Issue Assessment Record Saved

#*********************************************** FR3 - Capture Related Stakeholders_MS *******************************************
FR3 - Capture Related Stakeholders_MS
    Log To Console    FR3 - Capture Related Stakeholders_MS

    # Members Tab
    Click Element                           ${StakeholderGroupMembersTab}
    Page Should Contain Element             ${StakeGroupRelationsCreateNewIndividualBtnXpath}
    Wait Until Element Is Enabled           ${StakeGroupRelationshipAddBtnXpath}                 30 seconds
    Screenshot      Stakeholder Members Tab

    # Add Button
    Scroll Element Into View                ${StakeGroupRelationsInLineEditTextXpath}
    Sleep       3
    Click Element                           ${StakeGroupRelationshipAddBtnXpath}
    Sleep       4

    # Stakeholder Name
    Wait Until Element Is Visible           ${StakeGroupRelationsStakeNameDDXpath}                       30 seconds
    Wait Until Element Is Enabled           ${StakeGroupRelationsStakeNameDDXpath}                       30 seconds
    Click Element                           ${StakeGroupRelationsStakeNameDDXpath}
    Sleep    1
    Wait Until Element Is Visible           ${StakeGroupRelationsRelationsStakeNameSrchXpath}            40 seconds
    Click Element                           ${StakeGroupRelationsRelationsStakeNameSrchXpath}
    Input Text                              ${StakeGroupRelationsRelationsStakeNameSrchXpath}            fletcher
    Press Keys                              ${StakeGroupRelationsRelationsStakeNameSrchXpath}            ENTER
    Wait Until Element Is Visible           ${StakeGroupRelationsStakeOptXpath}                          40 seconds
    Sleep    1
    Click Element                           ${StakeGroupRelationsStakeOptXpath}

    # Position
    Click Element                           ${StakeGroupRelationsPositionDDXpath}
    Wait Until Element Is Visible           ${StakeGroupRelationsPositionCFOXpath}                       20 seconds
    Click Element                           ${StakeGroupRelationsPositionCFOXpath}

    # Record Save Tick Button
    Click Element                           ${StakeGroupRelationsRecordSaveTickXpath}
    Wait Until Element Is Visible           ${RecordSaved}                                               60 seconds
    Screenshot      Stakeholder Group Related Stakeholders Record Saved

    # Open Related Stakeholders Record
    Sleep       1
    Click Element                           ${StakeGroupRelationsInLineEditBtnXpath}
    Sleep       1
    Wait Until Element Is Visible           ${StakeGroupRelationsRecordOpenXpath}                30 seconds
    Click Element                           ${StakeGroupRelationsRecordOpenXpath}
    Sleep       5
    Wait Until Element Is Not Visible       ${StakeGroupRelationsLoadingDataXpath}               30 seconds
    Wait Until Element Is Visible           ${StakeGroupRelationsRecordOpenedXpath}              60 seconds
    Wait Until Element Is Enabled           ${StakeGroupRelationsRecordPFXpath}                  60 seconds
    Sleep       1
    Click Element                           ${StakeGroupRelationsRecordPFXpath}
    Sleep       1
    Page Should Contain Element             ${StakeGroupRelationsPFEditXpath}
    Screenshot      Stakeholder Group Related Stakeholders Record Opened - Edit Phase

    # Close Record
    Click Element                           ${StakeGroupRelationsRecordClosedXpath}
    Sleep       3
    Wait Until Element Is Enabled           ${StakeholderGroupStatusActiveXpath}
    Sleep       1

#*********************************************** FR3 - Capture Related Stakeholders_AS *******************************************
FR3 - Capture Related Stakeholders_AS
    Log To Console    FR3 - Capture Related Stakeholders_AS

    # Members Tab
    Click Element                           ${StakeholderGroupMembersTab}
    Page Should Contain Element             ${StakeGroupRelationsCreateNewIndividualBtnXpath}
    Wait Until Element Is Enabled           ${StakeGroupRelationshipAddBtnXpath}                 30 seconds
    Screenshot      Stakeholder Members Tab

    # Create a new individual
    Click Element                           ${StakeGroupRelationsCreateNewIndividualBtnXpath}

    # Switch Window
    Select Window       NEW
    Sleep       10
    Screenshot      Stakeholder Individual New Tab Opened

    # Select Frame
    Select Frame                            ${iFrame}
    Sleep       5

    # Process Flow
    Wait Until Element Is Visible           ${StakeGroupSIProcessFlowBtnXpath}          60 seconds
    Click Element                           ${StakeGroupSIProcessFlowBtnXpath}

    # Add Phase
    Wait Until Page Contains Element        ${StakeGroupSIPFAddPhaseXpath}
    Screenshot      Stakeholder Individual Add Phase

    # First Name
    Input Text                              ${StakeGroupSIFirstNameXpath}               StakeGroup_Auto Test

    # Last Name
    Input Text                              ${StakeGroupSILastNameXpath}                SG_Last Name

    # Known As
    Input Text                              ${StakeGroupSIKnownAsXpath}                 FR3_AS
    Screenshot      Stakeholder Individual Full Name Autopopulated

    # Title
    Click Element                           ${StakeGroupSITitleDDXpath}
    Sleep       1
    Wait Until Element Is Visible           ${StakeGroupSITitleMrXpath}                   30 seconds
    Click Element                           ${StakeGroupSITitleMrXpath}

    # Status
    Page Should Contain Element             ${StakeGroupSIStatusActiveXpath}
    Screenshot      Stakeholder Individual Title_Status - Active

    # Stakeholder categories
    Click Element                           ${StakeGroupSICategoriesDDXpath}
    Sleep       1
    Wait Until Element Is Visible           ${StakeGroupSICategoriesExpand1Xpath}          30 seconds
    Click Element                           ${StakeGroupSICategoriesExpand1Xpath}
    Wait Until Element Is Visible           ${StakeGroupSICategoriesEmployeeXpath}         30 seconds
    Click Element                           ${StakeGroupSICategoriesEmployeeXpath}
    Click Element                           ${StakeGroupSICategoriesDDXpath}

    # Applicable business units
    Click Element                           ${StakeGroupSIBUDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpandXpath}        40 seconds
    Sleep    1
    Click Element                           ${StakeholderGroupBUExpandXpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpand2Xpath}       40 seconds
    Sleep    1
    Click Element                           ${StakeholderGroupBUExpand2Xpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpand3Xpath}       40 seconds
    Sleep    1
    Click Element                           ${StakeholderGroupBUExpand3Xpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUSelectXpath}        40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupBUSelectXpath}
    Click Element                           ${StakeGroupSIBUDDXpath}

    # Responsible owners
    Click Element                           ${StakeGroupSIResponsOwnersDDXpath}
    Wait Until Element Is Visible           ${StakeGroupSIResponsOwnersSrchXpath}            40 seconds
    Sleep    1
    Input Text                              ${StakeGroupSIResponsOwnersSrchXpath}            auto
    Press Keys                              ${StakeGroupSIResponsOwnersSrchXpath}            ENTER
    Wait Until Element Is Visible           ${StakeGroupSIResponsOwnersOptXpath}             40 seconds
    Sleep    1
    Click Element                           ${StakeGroupSIResponsOwnersOptXpath}
    Click Element                           ${StakeGroupSIResponsOwnersDDXpath}

    # Accountable owner
    Click Element                           ${StakeGroupSIAccountOwnersDDXpath}
    Wait Until Element Is Visible           ${StakeGroupSIAccountOwnersSrchXpath}            40 seconds
    Sleep    1
    Input Text                              ${StakeGroupSIAccountOwnersSrchXpath}            auto
    Press Keys                              ${StakeGroupSIAccountOwnersSrchXpath}            ENTER
    Wait Until Element Is Visible           ${StakeGroupSIAccountOwnersOptXpath}             40 seconds
    Sleep    1
    Click Element                           ${StakeGroupSIAccountOwnersOptXpath}

    # Save to continue
    Click Element                           ${StakeGroupSISaveandContinueBtnXpath}
    Wait Until Element Is Visible           ${RecordSaved}                                   60 seconds
    Element Should Be Visible               ${StakeGroupSIPFEditXpath}
    Element Should Be Visible               ${StakeGroupSISavedRecordNo}
    Screenshot      Stakeholder Individual Record Saved

    # Close Browser Tab
    Close Window
    Sleep       2
    Select Window       MAIN
    Screenshot      Members Tab Visible.png
    # Select Frame
    Select Frame                            ${iFrame}

    # Add Button
    Scroll Element Into View                ${StakeGroupRelationsInLineEditTextXpath}
    Sleep       1
    Click Element                           ${StakeGroupRelationshipAddBtnXpath}
    Sleep       3

    # Stakeholder Name
    Wait Until Element Is Enabled           ${StakeGroupRelationsStakeNameDDXpath}                       10 seconds
    Click Element                           ${StakeGroupRelationsStakeNameDDXpath}
    # Refresh Button
    Wait Until Element Is Enabled           ${StakeGroupRelationsStakeNameRefreshXpath}                  10 seconds
    Click Element                           ${StakeGroupRelationsStakeNameRefreshXpath}
    Sleep       2
    Wait Until Element Is Visible           ${StakeGroupRelationsRelationsStakeNameSrchXpath}            40 seconds
    Sleep    1
    Input Text                              ${StakeGroupRelationsRelationsStakeNameSrchXpath}            StakeGroup_Auto Test
    Press Keys                              ${StakeGroupRelationsRelationsStakeNameSrchXpath}            ENTER
    Wait Until Element Is Visible           ${StakeGroupRelationsStakeOptASXpath}                        40 seconds
    Sleep    1
    Click Element                           ${StakeGroupRelationsStakeOptASXpath}

    # Position
    Click Element                           ${StakeGroupRelationsPositionDDXpath}
    Wait Until Element Is Visible           ${StakeGroupRelationsPositionCFOXpath}                       20 seconds
    Click Element                           ${StakeGroupRelationsPositionCFOXpath}

    # Record Save Tick Button
    Click Element                           ${StakeGroupRelationsRecordSaveTickXpath}
    Wait Until Element Is Visible           ${RecordSaved}                                               60 seconds
    Screenshot      Stakeholder Group Related Stakeholders Record Saved

#*********************************************** FR4 - Capture Related Stakeholders_MS *******************************************
FR4 - Capture Related Stakeholders_MS
    Log To Console    FR4 - Capture Related Stakeholders_MS

    # Associated Stakeholder Groups Tab
    Click Element                           ${StakeholderGroupAssGroupsTab}
    Page Should Contain Element             ${StakeGroupAssGroupAddNewGroupBtnXpath}
    Wait Until Element Is Enabled           ${StakeGroupAssGroupAddBtnXpath}                 30 seconds
    Screenshot      Associated Stakeholder Groups Tab

    # Add Button
    Scroll Element Into View                ${StakeGroupRelationsInLineEditTextXpath}
    Sleep       1
    Click Element                           ${StakeGroupAssGroupAddBtnXpath}
    Sleep       3

    # Group Name
    Wait Until Element Is Visible           ${StakeGroupAssGroupNameDDXpath}             10 seconds
    Click Element                           ${StakeGroupAssGroupNameDDXpath}
    Wait Until Element Is Visible           ${StakeGroupAssGroupNameSrchXpath}           40 seconds
    Sleep    1
    Input Text                              ${StakeGroupAssGroupNameSrchXpath}           ab
    Press Keys                              ${StakeGroupAssGroupNameSrchXpath}           ENTER
    Wait Until Element Is Visible           ${StakeGroupAssGroupNameOptXpath}            40 seconds
    Sleep    1
    Click Element                           ${StakeGroupAssGroupNameOptXpath}

    # Relationship
    Click Element                           ${StakeGroupAssGroupRelationshipDDXpath}
    Wait Until Element Is Visible           ${StakeGroupAssGroupRelationshipOptXpath}       20 seconds
    Click Element                           ${StakeGroupAssGroupRelationshipOptXpath}

    # Record Save Tick Button
    Click Element                           ${StakeGroupRelationsRecordSaveTickXpath}
    Wait Until Element Is Visible           ${RecordSaved}                              60 seconds
    Screenshot      Stakeholder Associated Stakeholder Groups Record Saved

#    # Open Associated Groups Record
#    Sleep       1
#    Click Element                           ${StakeGroupRelationsInLineEditBtnXpath}
#    Sleep       1
#    Wait Until Element Is Visible           ${StakeGroupAssGroupRecordOpenXpath}                30 seconds
#    Click Element                           ${StakeGroupAssGroupRecordOpenXpath}
#    Sleep       3
#    Wait Until Page Does Not Contain        ${StakeGroupRelationsLoadingDataXpath}               30 seconds
#    Wait Until Element Is Visible           ${StakeGroupAssGroupRecordOpenedXpath}              60 seconds
#    Wait Until Element Is Enabled           ${StakeGroupAssGroupPFBtnXpath}                  60 seconds
#    Sleep       1
#    Click Element                           ${StakeGroupAssGroupPFBtnXpath}
#    Sleep       1
#    Page Should Contain Element             ${StakeGroupAssGroupPFEditXpath}
#    Screenshot      Stakeholder Group Associated Stakeholder Groups Record Opened - Edit Phase
#
#    # Close Record
#    Click Element                           ${StakeGroupAssGroupCloseXXpath}
#    Sleep       5
#    Wait Until Page Does Not Contain        ${StakeGroupRelationsLoadingDataXpath}               60 seconds
#    Wait Until Element Is Enabled           ${StakeholderGroupStatusActiveXpath}
#    Sleep       1

    # IsoMetrix Interface
    Unselect frame

    Click Element                            ${StakeGroupGrievancesIsoMetrixLogoXpath}
    Sleep       3
    Wait Until Element Is Visible            ${iFrame}    30 seconds
    Select Frame                             ${iFrame}
    Sleep       2
    Wait Until Element Is Enabled            ${StakeGroupEventsInterfaceXpath}           40 seconds

    # Click Social Sustainability
    Sleep       2
    Wait Until Page Contains Element        ${SocialSustainabilityXpath}        30 seconds
    Click Element                           ${SocialSustainabilityXpath}

    # Click Stakeholder Group
    Sleep       2
    Wait Until Element Is Visible           ${StakeholderGroupXpath}            30 seconds
    Click Element                           ${StakeholderGroupXpath}

    # Search Button
    Sleep       4
    Wait Until Element Is Not Visible       ${StakeholderGroupModLoadingXpath}           60 seconds
    Wait Until Element Is Enabled           ${StakeholderGroupSearchID}                 30 seconds
    Wait Until Element Is Visible           ${StakeGroupAssGroupSrchGroupNameXpath}         30 seconds
    Click Element                           ${StakeGroupAssGroupSrchGroupNameXpath}
    Input Text                              ${StakeGroupAssGroupSrchGroupNameXpath}         Ab Pumps

    # Search Button
    Click Element                           ${StakeholderGroupSearchID}
    Wait Until Element Is Visible           ${StakeGroupAssGroupSrchRecordOpenXpath}        30 seconds
    Screenshot      Search button clicked - Collaborative Risk Applications

    # Open Ab Pumps
    Click Element                           ${StakeGroupAssGroupSrchRecordOpenXpath}
    Sleep       3
    Wait Until Page Does Not Contain        ${StakeGroupRelationsLoadingDataXpath}          30 seconds
    Wait Until Element Is Visible           ${StakeholderGroupAssGroupsTab}                 30 seconds

    # Associated Stakeholder Groups Tab
    Click Element                           ${StakeholderGroupAssGroupsTab}
    Page Should Contain Element             ${StakeGroupAssGroupAddNewGroupBtnXpath}
    Sleep       1
    Scroll Element Into View                ${StakeGroupRelationsInLineEditTextXpath}
    Sleep       1

    # Replicated Group Name / Relationship
    Page Should Contain Element             ${StakeGroupAssGroupRelateNameXpath}
#    Page Should Contain Element             ${StakeGroupAssGroupRelateRelationshipXpath}
    Screenshot      Replicated Group Name_Relationship

#*********************************************** FR4 - Capture Related Stakeholders_AS *******************************************
FR4 - Capture Related Stakeholders_AS
    Log To Console    FR4 - Capture Related Stakeholders_AS

    # Associated Stakeholder Groups Tab
    Click Element                           ${StakeholderGroupAssGroupsTab}
    Page Should Contain Element             ${StakeGroupAssGroupAddNewGroupBtnXpath}
    Wait Until Element Is Enabled           ${StakeGroupAssGroupAddBtnXpath}                 30 seconds
    Screenshot      Associated Stakeholder Groups Tab
    Click Element                           ${StakeGroupAssGroupAddNewGroupBtnXpath}

    # Switch Window
    Select Window       NEW
    Sleep       8
    Screenshot      Stakeholder Groups New Tab Opened

    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       8

    # Process Flow
    Click Element                           ${StakeholderGroupPFID}
    Wait Until Element Is Visible           ${StakeholderGroupPFAdd}    10 seconds
    Screenshot      FR1 Add button clicked

    # Group name
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${StakeholderGroupNameXpath}               Auto Test_AS ${CurrentDate}

    # Known as
    Input Text                              ${StakeholderGroupKnownAsXpath}            Auto Test_AS

    # Stakeholder categories
    Click Element                           ${StakeholderGroupCatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupCatDDLocalCommXpath}      10 seconds
    Click Element                           ${StakeholderGroupCatDDLocalCommXpath}
    Click Element                           ${StakeholderGroupCatDDXpath}

    # Responsible owners
    Click Element                           ${StakeholderGroupRespOwnersDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupRespOwnersSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                              ${StakeholderGroupRespOwnersSrchXpath}      auto
    Press Keys                              ${StakeholderGroupRespOwnersSrchXpath}      ENTER
    Wait Until Element Is Visible           ${StakeholderGroupRespOwnersOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupRespOwnersOptXpath}
    Click Element                           ${StakeholderGroupRespOwnersDDXpath}

    # Accountable owner
    Click Element                           ${StakeholderGroupAccountOwnerDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupAccountOwnerSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                              ${StakeholderGroupAccountOwnerSrchXpath}      auto
    Press Keys                              ${StakeholderGroupAccountOwnerSrchXpath}      ENTER
    Wait Until Element Is Visible           ${StakeholderGroupAccountOwnerOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupAccountOwnerOptXpath}

    # Group description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${StakeholderGroupDescXpath}                  FR4 - Capture Related Stakeholders_AS ${CurrentDate}

    # Applicable business units
    Wait Until Element Is Visible           ${StakeholderGroupBUDDXpath}            40 seconds
    Click Element                           ${StakeholderGroupBUDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpandXpath}        40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupBUExpandXpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpand2Xpath}       40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupBUExpand2Xpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUExpand3Xpath}       40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupBUExpand3Xpath}
    Wait Until Element Is Visible           ${StakeholderGroupBUSelectXpath}        40 seconds
    Sleep    1 seconds
    Click Element                           ${StakeholderGroupBUSelectXpath}
    Click Element                           ${StakeholderGroupBUDDXpath}

    # Save and continue
    Click Element                           ${StakeholderGroupSaveContinueXpath}
    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds

    # Validations after save
    Element Should Be Visible               ${StakeholderGroupPFEdit}
    Element Should Be Visible               ${StakeholderGroupRecordNoXpath}
    Element Should Be Visible               ${StakeholderGroupStatusActiveXpath}
    Element Should Be Visible               ${StakeholderGroupSocialPanelXpath}
    Element Should Be Visible               ${StakeholderGroupDetailsTab}
    Element Should Be Visible               ${StakeholderGroupAnalysisTab}
    Element Should Be Visible               ${StakeholderGroupMembersTab}
    Element Should Be Visible               ${StakeholderGroupAssGroupsTab}
    Element Should Be Visible               ${StakeholderGroupEngagementsTab}
    FOR  ${i}     IN RANGE  1  4
    Click Element                           ${StakeholderGroupTabRightArrow}
    END
    Sleep       1
    Element Should Be Visible               ${StakeholderGroupCommitmentsTab}
    Element Should Be Visible               ${StakeholderGroupRelateGrievancesTab}
    Element Should Be Visible               ${StakeholderGroupActionsTab}
    Element Should Be Visible               ${StakeholderGroupSupportDocs}
    Screenshot      FR1 Save button clicked
    FOR  ${i}     IN RANGE  1  4
    Click Element                           ${StakeholderGroupTabLeftArrow}
    END
    Sleep       1

    # Close Window
    Close Window
    Sleep       2
    Select Window       MAIN
    # Select Frame
    Select Frame                                    ${iFrame}
    Screenshot      Stakeholder Group Main Tab Visible
#
#    # Add Button
#    Scroll Element Into View                ${StakeGroupRelationsInLineEditTextXpath}
#    Sleep       1
#    Click Element                           ${StakeGroupAssGroupAddBtnXpath}
#    Sleep       3
#
#    # Group Name
#    Wait Until Element Is Visible           ${StakeGroupAssGroupNameDDXpath}             10 seconds
#    Click Element                           ${StakeGroupAssGroupNameDDXpath}
#    Wait Until Element Is Visible           ${StakeGroupAssGroupNameSrchXpath}           40 seconds
#    Sleep    1
#    Input Text                              ${StakeGroupAssGroupNameSrchXpath}           ab
#    Press Keys                              ${StakeGroupAssGroupNameSrchXpath}           ENTER
#    Wait Until Element Is Visible           ${StakeGroupAssGroupNameOptXpath}            40 seconds
#    Sleep    1
#    Click Element                           ${StakeGroupAssGroupNameOptXpath}
#
#    # Relationship
#    Click Element                           ${StakeGroupAssGroupRelationshipDDXpath}
#    Wait Until Element Is Visible           ${StakeGroupAssGroupRelationshipOptXpath}       20 seconds
#    Click Element                           ${StakeGroupAssGroupRelationshipOptXpath}
#
#    # Record Save Tick Button
#    Click Element                           ${StakeGroupRelationsRecordSaveTickXpath}
#    Wait Until Element Is Visible           ${RecordSaved}                              60 seconds
#    Screenshot      Stakeholder Associated Stakeholder Groups Record Saved

















