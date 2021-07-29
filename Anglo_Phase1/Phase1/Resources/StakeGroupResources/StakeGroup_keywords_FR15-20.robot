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
#*********************************************** FR15 - Add_View Engagements_MS_AS **************************************************
FR15 - Add_View Engements_MS_AS
    Log To Console    FR15 - Add_View Engagements_AS
    # Engagements Tab
    Click Element                                   ${StakeholderGroupEngagementsTab}
    # Add An Engagement
    Click Element                                   ${StakeGroupAddAnEngagementBtnXpath}
    Sleep       2
    Select Window       NEW
    Sleep       8
    Screenshot      Stakeholder Groups Engagement New Tab Opened
    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       7

    # Process Flow
    Wait Until Element Is Enabled                   ${EngagementManagementProcessId}    40 seconds
    Click Element                                   ${EngagementManagementProcessId}
    # Add Phase
    Wait Until Page Contains Element                ${EngagementManagementProcessAddPhase}
    Screenshot      Stakeholder Groups Engagement Add Phase

    # Capture Title
    Wait Until Element Is Visible                   ${EngagementManagementTitleXpath}    40 seconds
    Click Element                                   ${EngagementManagementTitleXpath}
    Input Text                                      ${EngagementManagementTitleXpath}    FR15 - Add_View Engagements_MS_AS

    #Get the Previous date
    ${PreviousDate}    Get Current Date    result_format=%d-%m-%Y           increment=-3 day
    Set Global Variable                             ${CurrentDate}

    # Capture Engagement Date
    Wait Until Element Is Visible                   ${EngagementManagementDateXpath}        40 seconds
    Click Element                                   ${EngagementManagementDateXpath}
    Input Text                                      ${EngagementManagementDateXpath}    ${PreviousDate}
    Click Element                                   ${EngagementManagementTitleXpath}

    # Capture Business Unit
    Wait Until Element Is Visible                   ${EngagementManagementBUDDID}           40 seconds
    Click Element                                   ${EngagementManagementBUDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpandXpath}     40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUSelectID}        40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUSelectID}

    # Project Check Box
    Wait Until Element Is Visible                   ${EngagementManagmentLinkProjXpath}     40 seconds
    Click Element                                   ${EngagementManagmentLinkProjXpath}

    # Capture Functional Location
    Wait Until Element Is Visible                   ${EngagementManagmentFLDDID}            40 seconds
    Click Element                                   ${EngagementManagmentFLDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentFLOptionID}        40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentFLOptionID}

    # Capture Project
    Wait Until Element Is Visible                   ${EngagementManagmentProjectDDID}    	40 seconds
    Click Element                                   ${EngagementManagmentProjectDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentProjSrchXpath}     40 seconds
    Sleep    1
    Input Text                                      ${EngagementManagmentProjSrchXpath}     a
    Press Keys                                      ${EngagementManagmentProjSrchXpath}     ENTER
    Wait Until Element Is Visible                   ${EngagementManagmentProjOptXpath1}      40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentProjOptXpath1}
    Click Element                                   ${EngagementManagmentProjectDDID}

    # Capture Function of Engagement
    Wait Until Element Is Visible                   ${EngagementManagmentFuncDDID}          40 seconds
    Click Element                                   ${EngagementManagmentFuncDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentFuncOptXpath}      40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentFuncOptXpath}
    Click Element                                   ${EngagementManagmentFuncDDID}

    # Capture Method of Engagement
    Wait Until Element Is Visible                   ${EngagementManagmentMethodDDID}        40 seconds
    Click Element                                   ${EngagementManagmentMethodDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentMethodOptID}       40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentMethodOptID}

    # Select Confidential Checkbox
    Wait Until Element Is Visible                   ${EngagementManagmentConfChkXpath}      40 seconds
    Click Element                                   ${EngagementManagmentConfChkXpath}

    # Capture Responsible Person
    Wait Until Element Is Visible                   ${EngagementManagmentRespPersonDDID}    40 seconds
    Click Element                                   ${EngagementManagmentRespPersonDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentRespSrchXpath}     40 seconds
    Input Text                                      ${EngagementManagmentRespSrchXpath}     Auto
    Press Keys                                      ${EngagementManagmentRespSrchXpath}     ENTER
    Wait Until Element Is Visible                   ${EngagementManagmentRespRsltID}        40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentRespRsltID}

    # Capture Contact Inquiry
    Wait Until Element Is Visible                   ${EngagementManagmentCntInqDDID}        40 seconds
    Click Element                                   ${EngagementManagmentCntInqDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentCntInqOptXpath}    40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentCntInqOptXpath}

    # Capture Description
    Wait Until Element Is Visible                   ${EngagementManagmentDescXpath}         40 seconds
    Click Element                                   ${EngagementManagmentDescXpath}
    Input Text                                      ${EngagementManagmentDescXpath}         Auto Test

    # Capture Outcome
    Wait Until Element Is Visible                   ${EngagementManagmentLocDDID}           40 seconds
    Click Element                                   ${EngagementManagmentLocDDID}
    Wait Until Element Is Visible                   ${EngagementManagmentLocOptID}          40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentLocOptID}

    # Click Save
    Wait Until Element Is Visible                   ${EngagementManagmentSaveID}            40 seconds
    Click Element                                   ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible               ${LoadingBarXpath}                      40 seconds

    # Process Flow - Planned (Confidential)
    Wait Until Element Is Visible                   ${EngagementManagementProcessPlanCo}    40 seconds
    Element Should be Visible                       ${EngagementManagementProcessPlanCo}
    Screenshot      Stakeholder Groups Engagement Added

    # Attendees tab
    Wait Until Element Is Visible                   ${EngagementManagementAttendTab}        40 seconds
    Click Element                                   ${EngagementManagementAttendTab}

    # Group Attendess Tab
    Wait Until Element Is Visible                   ${StakeGroupEngagementGroupAttendeesTabXpath}        40 seconds
    Click Element                                   ${StakeGroupEngagementGroupAttendeesTabXpath}
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}                        30 seconds
    Wait Until Element Is Visible                   ${StakeGroupEngagementGroupAttendeesNoResultsXpath}                          60 seconds

    # Add Button
    Click Element                                   ${StakeGroupEngagementAddBtnXpath}
    Sleep       2

    # Attendee
    Click Element                                   ${StakeGroupEngagementAttendeeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementAttendeeSrchXpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupEngagementAttendeeSrchXpath}       auto test
    Press Keys                                      ${StakeGroupEngagementAttendeeSrchXpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupEngagementAttendeeOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupEngagementAttendeeOptXpath}

    # Save Button
    Click Element                                   ${StakeGroupEngagementSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved}                                  60 seconds
    Screenshot      Stakeholder Groups Engagement Group Attendees Added

    Scroll Element Into View                        ${StakeGroupEngagementScheduledLabelXpath}
    Sleep       1
    # Engagement status
    Click Element                                   ${StakeGroupEngagementStatusDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementDDExecutedXpath}       40 seconds
    Click Element                                   ${StakeGroupEngagementDDExecutedXpath}

    # Click Save
    Wait Until Element Is Visible                   ${EngagementManagmentSaveID}            40 seconds
    Click Element                                   ${EngagementManagmentSaveID}
    Wait Until Element Is Visible                   ${RecordSaved}                                  60 seconds
    Screenshot      Stakeholder Groups Engagement Executed on-time status
    Sleep       4

    # Close Window
    Close Window
    Sleep       2
    Select Window       MAIN
    Screenshot      Stakeholder Groups Tab Visible

    # Engagament Record in Previous Engagements VG
    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${StakeGroupEngagementInLineEditXpath}
    Sleep       1

    # Previous Engagements VG Refresh
    Click Element                                   ${StakeGroupEngagementRefreshXpath}
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}                        30 seconds
    #New Engagement Record in Viewing Grid
    Wait Until Element Is Visible                   ${StakeGroupEngagementRecordNewXpath}           20 seconds
    Sleep       1
    Screenshot      Stakeholder Groups New Engagement Record in Viewing Grid

#    Log To Console    FR15 - Add_View Engagements_MS
#    # Open Engagements Record
#    Click Element                                   ${StakeGroupEngagementRecordNewXpath}
#    Sleep       8
#    Wait Until Element Is Not Visible               ${StakeGroupRelationsLoadingDataXpath}          90 seconds
#    Wait Until Element Is Enabled                   ${EngagementManagementProcessId}                90 seconds
#    Click Element                                   ${EngagementManagementProcessId}
#    Page Should Contain Element                     ${StakeGroupEngagementPFExecutedXpath}
#    Sleep       1
#    Screenshot      Stakeholder Groups New Engagement Record Opened
#
#    # Close Engagement Record
#    Click Element                                   ${StakeGroupEngagementCloseXpath}
#    Sleep       1
#    Wait Until Element Is Enabled                   ${StakeGroupEngagementRecordNewXpath}                60 seconds

#*********************************************** FR16 - Add_View Engagement Plan_MS_AS **************************************************
FR16 - Add_View Engagement Plan_MS_AS
    Log To Console    FR16 - Add_View Engagement Plan_AS

    # Engagements Tab
    Click Element                                   ${StakeholderGroupEngagementsTab}

    # Engagement Plan Tab
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanTabXpath}              30 seconds
    Click Element                                   ${StakeGroupEngagementPlanTabXpath}

    # Add an Engagement Plan
    Click Element                                   ${StakeGroupEngagementPlanAddBtnXpath}
    Sleep       8
    Select Window       NEW
    Sleep       7
    Screenshot      Stakeholder Groups Engagement Plan New Tab Opened
    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5

    # Engagement Process Flow
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanPFBtnXpath}                   60 seconds
    Click Element                                   ${StakeGroupEngagementPlanPFBtnXpath}

    # Add Phase
    Wait Until Page Contains Element                ${StakeGroupEngagementPlanPFAddXpath}
    Screenshot      Stakeholder Groups Engagement Plan Add Phase

    # Business unit
    Click Element                                   ${StakeGroupEngagementPlanBUDDXpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpandXpath}     40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUSelectID}        40 seconds
    Sleep    1
    Click Element                                   ${EngagementManagmentBUSelectID}
    # Capture Functional Location
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanFLDDXpath}    40 seconds
    Click Element                                   ${StakeGroupEngagementPlanFLDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanFLOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupEngagementPlanFLOptionID}

    # Engagement plan title
    Input Text                                      ${StakeGroupEngagementPlanTitleXpath}                          FR16 - Add_View Engagement Plan_MS_AS
    # Project link
    Click Element                                   ${StakeGroupEngagementPlanProjectLinkXpath}
    Click Element                                   ${StakeGroupEngagementPlanProjectDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanProjectSelectXpath}                  30 seconds
    Click Element                                   ${StakeGroupEngagementPlanProjectSelectXpath}
    Screenshot      Stakeholder Groups Engagement Plan_Business Unit Selected_Title_Project
    # Engagement Plan Start Date
    ${CurrentDate}      Get Current Date            result_format=%d-%m-%Y              increment=+1 day
    Set Global Variable                 ${CurrentDate}
#    Click Element                                   ${StakeGroupEngagementPlanStartDateXpath}
    Input Text                                      ${StakeGroupEngagementPlanStartDateXpath}                   ${CurrentDate}
    Press Keys                                      ${StakeGroupEngagementPlanStartDateXpath}                   ENTER
    # Frequency
    Click Element                                   ${StakeGroupEngagementPlanFrequencyDDXpath}
    Sleep   1
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanFrequencyDailyXpath}                  60 seconds
    Sleep   1
    Click Element                                   ${StakeGroupEngagementPlanFrequencyDailyXpath}
    # Engagement Plan End Date
    ${EndDate}          Get Current Date            result_format=%d-%m-%Y              increment=+3 day
    Set Global Variable                 ${EndDate}
#    Click Element                                   ${StakeGroupEngagementPlanEndDateXpath}
    Input Text                                      ${StakeGroupEngagementPlanEndDateXpath}                     ${EndDate}
    Press Keys                                      ${StakeGroupEngagementPlanEndDateXpath}                     ENTER
#    # On which day of the week
#    Click Element                                   ${StakeGroupEngagementPlanDayWeekDDXpath}
#    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanDayWeekOptXpath}                          60 seconds
#    Click Element                                   ${StakeGroupEngagementPlanDayWeekOptXpath}
    # Show in advance
    Clear Element Text                              ${StakeGroupEngagementPlanShowAdvanceXpath}
    Input Text                                      ${StakeGroupEngagementPlanShowAdvanceXpath}                         3
    Press Keys                                      ${StakeGroupEngagementPlanShowAdvanceXpath}                         ENTER
    # Purpose of engagement
    Click Element                                   ${StakeGroupEngagementPlanPurposeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanPurposeOptXpath}                          60 seconds
    Click Element                                   ${StakeGroupEngagementPlanPurposeOptXpath}
    Click Element                                   ${StakeGroupEngagementPlanPurposeDDXpath}

    # Method of engagement
    Click Element                                   ${StakeGroupEngagementPlanMethodDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanMethodOptXpath}                           60 seconds
    Click Element                                   ${StakeGroupEngagementPlanMethodOptXpath}
    # Responsible person
    Click Element                                   ${StakeGroupEngagementPlanResponsiblePersonDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanResponsiblePersonSrchXpath}               40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupEngagementPlanResponsiblePersonSrchXpath}               auto
    Press Keys                                      ${StakeGroupEngagementPlanResponsiblePersonSrchXpath}               ENTER
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanResponsiblePersonOptXpath}                40 seconds
    Click Element                                   ${StakeGroupEngagementPlanResponsiblePersonOptXpath}
    Sleep    1
    # Comments
    Input Text                                      ${StakeGroupEngagementPlanCommentsXpath}                         FR16 - Add_View Engagement Plan_MS_AS

    # Save and Continue
    Click Element                                   ${StakeGroupEngagementPlanSaveContinueBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupEngagementPlanRecordNoXpath}
    Wait Until Page Contains Element                ${StakeGroupEngagementPlanPFEditXpath}
    Screenshot      Stakeholder Groups Engagement Plan Record Saved

    # Attendees Tab
    Click Element                                   ${StakeGroupEngagementPlanAttendeesTabXpath}
    # Stakeholders
    Click Element                                   ${StakeGroupEngagementPlanStakeholderDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanStakeholderSrchXpath}                     40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupEngagementPlanStakeholderSrchXpath}                     fletcher
    Press Keys                                      ${StakeGroupEngagementPlanStakeholderSrchXpath}                     ENTER
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanStakeholderOptXpath}                40 seconds
    Click Element                                   ${StakeGroupEngagementPlanStakeholderOptXpath}
    Click Element                                   ${StakeGroupEngagementPlanStakeholderDDXpath}
    Sleep    1
    # Groups
    Click Element                                   ${StakeGroupEngagementPlanGroupsDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanGroupsSrchXpath}                          40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupEngagementPlanGroupsSrchXpath}                          auto test
    Press Keys                                      ${StakeGroupEngagementPlanGroupsSrchXpath}                          ENTER
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanGroupsOptXpath}                      40 seconds
    Click Element                                   ${StakeGroupEngagementPlanGroupsOptXpath}
    Click Element                                   ${StakeGroupEngagementPlanGroupsDDXpath}

    # Save Button
    Click Element                                   ${StakeGroupEngagementPlanSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupEngagementPlanRecordNoXpath}
    Screenshot      Stakeholder Groups Engagement Plan Groups Record Saved
    Sleep       2

    # Close Window
    Close Window
    Sleep       2
    Select Window       MAIN
    Screenshot      Stakeholder Groups Tab Visible
    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${StakeGroupEngagementPlanInLineEditTextXpath}
    Sleep       1

    # Refresh Button
    Click Element                                   ${StakeGroupEngagementPlanRefreshXpath}
    Sleep       3
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}                        30 seconds

    # New Engagement Plan Record in Viewing Grid
    Wait Until Element Is Visible                   ${StakeGroupEngagementPlanRecordNewXpath}            20 seconds
    Sleep       1
    Screenshot      Stakeholder Groups New Engagement Plan Record in Viewing Grid

#    Log To Console    FR16 - Add_View Engagement Plan_MS
#    # Open Engagements Record
#    Click Element                                   ${StakeGroupEngagementPlanRecordNewXpath}
#    Sleep       8
#    Wait Until Element Is Not Visible               ${StakeGroupRelationsLoadingDataXpath}          40 seconds
#    Wait Until Element Is Enabled                   ${StakeGroupEngagementPlanPFBtnXpath}                40 seconds
#    Click Element                                   ${StakeGroupEngagementPlanPFBtnXpath}
#    Page Should Contain Element                     ${StakeGroupEngagementPlanPFEditXpath}
#    Sleep       1
#    Screenshot      Stakeholder Groups New Engagement Record Opened
#
#    # Close Engagement Record
#    Click Element                                   ${StakeGroupEngagementPlanCloseXpath}
#    Sleep       1
#    Wait Until Element Is Enabled                   ${StakeGroupEngagementPlanRecordNewXpath}                40 seconds

#*********************************************** FR17 - View Commitments_MS **************************************************
FR17 - Capture Commitments_MS1
    Log To Console    FR17 - View Commitments_MS

    # Close Stakeholder Groups Record
    Click Element                                   ${StakeGroupCommitmentsStakeGroupRecordCloseXpath}
    Sleep       5
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsStakeGroupModRecordXpath}         40 seconds

    # Close Stakeholder Groups Record
    Click Element                                   ${StakeGroupCommitmentsStakeGroupModCloseXpath}
    Sleep       5
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsInterfaceXpath}                   40 seconds

    # Commitments Register
    Click Element                                   ${StakeGroupCommitmentsInterfaceXpath}
    Sleep       5
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsAddBtnXpath}                      40 seconds
    Click Element                                   ${StakeGroupCommitmentsAddBtnXpath}

    # Process Flow
    Sleep       3
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsPFXpath}                         20 seconds
    Click Element                                   ${StakeGroupCommitmentsPFXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsPFAddXpath}                      10 seconds
    Screenshot      Commitments Add Phase

    # Business unit
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsBUDDXpath}            40 seconds
    Click Element                                   ${StakeGroupCommitmentsBUDDXpath}
    Wait Until Element Is Visible                   ${StakeholderGroupBUExpandXpath}        40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeholderGroupBUExpandXpath}
    Wait Until Element Is Visible                   ${StakeholderGroupBUExpand2Xpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeholderGroupBUExpand2Xpath}
    Wait Until Element Is Visible                   ${StakeholderGroupBUExpand3Xpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeholderGroupBUExpand3Xpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsBUSelectXpath}        40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupCommitmentsBUSelectXpath}

    # Functional location
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsFunctionLocDDXpath}            40 seconds
    Click Element                                   ${StakeGroupCommitmentsFunctionLocDDXpath}
    Sleep    1
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsFunctionLocOptXpath}        40 seconds
    Click Element                                   ${StakeGroupCommitmentsFunctionLocOptXpath}

    # Commitment register title
    Input Text                                      ${StakeGroupCommitmentsRegistTitleXpath}        FR17 - View Commitments_MS
    # Commitment register owner
    Click Element                                   ${StakeGroupCommitmentsRegisterOwnerDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsRegisterOwnerSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                                      ${StakeGroupCommitmentsRegisterOwnerSrchXpath}      auto
    Press Keys                                      ${StakeGroupCommitmentsRegisterOwnerSrchXpath}      ENTER
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsRegisterOwnerOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupCommitmentsRegisterOwnerOptXpath}

    # Save to continue
    Click Element                                   ${StakeGroupCommitmentsSaveContinueBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupCommitmentsRecordNoXpath}
    Page Should Contain Element                     ${StakeGroupCommitmentsPFEditXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsSubModAddBtnXpath}       40 seconds
    Screenshot      Stakeholder Groups Commitments Record Saved
    Sleep       2

    # Commitments Add Button
    Click Element                                   ${StakeGroupCommitmentsSubModAddBtnXpath}
    Sleep    3
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}                      40 seconds
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsConditionsPFXpath}                   40 seconds

    # Process Flow
    Click Element                                   ${StakeGroupCommitmentsConditionsPFXpath}
    Page Should Contain Element                     ${StakeGroupCommitmentsConditionsPFAddXpath}                      10 seconds
    Screenshot      Conditions and Commitments Add Phase

    # Category
    Click Element                                   ${StakeGroupCommitmentsConditionsCatDDXpath}
    Sleep       1
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsCatOptXpath}                      40 seconds
    Click Element                                   ${StakeGroupCommitmentsConditionsCatOptXpath}
    # Title
    Input Text                                      ${StakeGroupCommitmentsConditionsTitleXpath}            FR17 - View Commitments_MS
    # Owner
    Click Element                                   ${StakeGroupCommitmentsConditionsOwnerDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsOwnerSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                                      ${StakeGroupCommitmentsConditionsOwnerSrchXpath}      auto
    Press Keys                                      ${StakeGroupCommitmentsConditionsOwnerSrchXpath}      ENTER
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsOwnerOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupCommitmentsConditionsOwnerOptXpath}

    # Approver
    Click Element                                   ${StakeGroupCommitmentsConditionsApproverDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsApproverSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                                      ${StakeGroupCommitmentsConditionsApproverSrchXpath}      auto
    Press Keys                                      ${StakeGroupCommitmentsConditionsApproverSrchXpath}      ENTER
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsApproverOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupCommitmentsConditionsApproverOptXpath}

    # Save to continue
    Click Element                                   ${StakeGroupCommitmentsConditionsSaveContinueBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupCommitmentsConditionsRecordNoXpath}
    Page Should Contain Element                     ${StakeGroupCommitmentsConditionsBenRegisterXpath}
    Screenshot      Stakeholder Conditions and Commitments Record Saved
    Sleep       2

    # Beneficiary Registers
    Scroll Element Into View                        ${StakeGroupCommitmentsConditionsGroupBenRegisterPanelXpath}
    Sleep       2
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupBenRegisterPanelXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupBenRegisterAddBtnXpath}             60 seconds

    # Add Button
    Sleep       1
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupBenRegisterAddBtnXpath}
    Sleep       2
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupBenRegisterDDXpath}             60 seconds

    # Stakeholder group beneficiary
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupBenRegisterDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupBenRegisterSrchXpath}       40 seconds
    Sleep    1
    Input Text                                      ${StakeGroupCommitmentsConditionsGroupBenRegisterSrchXpath}       auto test
    Press Keys                                      ${StakeGroupCommitmentsConditionsGroupBenRegisterSrchXpath}       ENTER
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupBenRegisterOptXpath}        40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupBenRegisterOptXpath}

    # Stakeholder level of expectation
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupLvlExpectDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupLvlExpectOptXpath}       40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupLvlExpectOptXpath}

    # Consequence of failure
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupConseqFailDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsGroupConseqFailOptXpath}       40 seconds
    Sleep    1
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupConseqFailOptXpath}

     # Save Button
    Click Element                                   ${StakeGroupCommitmentsConditionsGroupSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupCommitmentsConditionsRecordNoXpath}
    Page Should Contain Element                     ${StakeGroupCommitmentsConditionsBenRegisterXpath}
    Screenshot      Stakeholder Conditions and Commitments Record Saved
    Sleep       2

FR17 - View Commitments_MS2
    Log To Console    Starting FR17 - View Commitments_MS

    Wait Until Element Is Visible           ${iFrame}    30 seconds
    Select Frame                            ${iFrame}
    Sleep       3

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
    Input Text                              ${StakeGroupCommitmentsConditionsSearchAutoTestXpath}           Auto Test
    Click Element                           ${StakeholderGroupSearchID}
    Wait Until Element Is Visible           ${StakeGroupCommitmentsConditionsSearchSearchRecordXpath}        30 seconds
    Screenshot      FR17 Search button clicked_record visible

    # Open Record
    Click Element                           ${StakeGroupCommitmentsConditionsSearchSearchRecordXpath}
    Sleep       2
    Wait Until Element Is Enabled           ${StakeholderGroupPFID}     30 seconds
    Wait Until Element Is Visible           ${StakeholderGroupCommitmentsTab}        30 seconds

    # Commitments Tab
    Click Element                           ${StakeholderGroupCommitmentsTab}
    Sleep       2
    Scroll Element Into View                ${StakeGroupCommitmentsVGRefreshXpath}
    Wait Until Element Is Not Visible       ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}           60 seconds
    Wait Until Element Is Enabled           ${StakeGroupCommitmentsVGRecordXpath}     30 seconds

    # Open Commitments Record
    Click Element                           ${StakeGroupCommitmentsVGRecordXpath}
    Sleep       6
    Select Window       NEW
    Sleep       6
    Screenshot      Stakeholder Groups Commitments New Tab Opened
    # Select Frame
    Select Frame                                    ${iFrame}
    Sleep       6

    # Process Flow
    Wait Until Element Is Enabled                   ${StakeGroupCommitmentsConditionsPFXpath}    40 seconds

#*********************************************** FR18 - Add/View Grievances_MS **************************************************
FR18 - Add Grievances_MS
    Log To Console    FR18 - Add Grievances_MS

    # IsoMetrix Interface
    Unselect frame

    Click Element                                   ${StakeGroupGrievancesIsoMetrixLogoXpath}
    Sleep       3
    Wait Until Element Is Visible                   ${iFrame}    30 seconds
    Select Frame                                    ${iFrame}
    Sleep       2
    Wait Until Element Is Enabled                   ${StakeGroupEventsInterfaceXpath}           40 seconds

    # Event Management
    Click Element                                   ${StakeGroupEventsInterfaceXpath}
    Sleep       5
    Wait Until Element Is Enabled                   ${StakeGroupEventsSearchBtnID}              40 seconds

    # Add Button
    Wait Until Element Is Visible                   ${StakeGroupEventsAddBtnID}                 30 seconds
    Click Element                                   ${StakeGroupEventsAddBtnID}
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}       40 seconds
    Wait Until Element Is Enabled                   ${EngagementGrievanceProcessID}         40 seconds
    Click Element                                   ${EngagementGrievanceProcessID}
    Page Should Contain Element                     ${StakeGroupEventsPF1LogEventXpath}

    # Type of Event
    Wait Until Element Is Visible                   ${EngagementGrievanceEventDrp}    40 seconds
    Click Element                                   ${EngagementGrievanceEventDrp}
    Sleep    2 seconds
    Wait until Element Is Visible                   ${EngagementGrievanceEventSelect}    40 seconds
    Click Element                                   ${EngagementGrievanceEventSelect}

    # Capture Event Title
    Wait Until Element Is Visible                   ${EngagementGrievanceTitleInput}    40 seconds
    Click Element                                   ${EngagementGrievanceTitleInput}
    Input Text                                      ${EngagementGrievanceTitleInput}    FR18 - Add Grievances_MS

    # Capture Event Description
    Wait Until Element Is Visible                   ${EngagementGrievanceEventDesc}    40 seconds
    Click Element                                   ${EngagementGrievanceEventDesc}
    Input Text                                      ${EngagementGrievanceEventDesc}    FR18 - Add Grievances_MS

    # Capture Business Unit
    Wait Until Element Is Visible                   ${EngagementGrievanceBUSelectXpath}    40 seconds
    Click Element                                   ${EngagementGrievanceBUSelectXpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible                   ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                                   ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible                   ${EngagementManagementBUDrpSelect}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementManagementBUDrpSelect}
    Wait Until Element Is Visible                   ${EngagementManagementBUSelectID2}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementManagementBUSelectID2}

    # Capture Functional Location
    Wait Until Element Is Visible                   ${EnaggementGrievanceFLXpath}    40 seconds
    Click Element                                   ${EnaggementGrievanceFLXpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand1Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand2Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand3Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand4Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand4Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand5Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand5Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLExpand6Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLExpand6Xpath}
    Wait Until Element Is Visible                   ${EngagementGrievenceFLSelectNew}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievenceFLSelectNew}

    # Capture Date of Event
    Wait Until Element Is Visible                   ${EngagementGrievanceDateXpath}   40 seconds
    ${CurrentDate}          Get Current Date            result_format=%d-%m-%Y
    Set Global Variable                             ${CurrentDate}
    Click Element                                   ${EngagementGrievanceDateXpath}
    Input Text                                      ${EngagementGrievanceDateXpath}    ${CurrentDate}

    # Capture Time of event
    Wait Until Element Is Visible                   ${EngagementGrievanceTimeEventXpath}    40 seconds
    Click Element                                   ${EngagementGrievanceTimeEventXpath}
    Input Text                                      ${EngagementGrievanceTimeEventXpath}    10

    # Capture Immediate Action taken
    Wait Until Element Is Visible                   ${EngagementGrievanceActionInput}    40 seconds
    Click Element                                   ${EngagementGrievanceActionInput}
    Input Text                                      ${EngagementGrievanceActionInput}    FR18 - Add Grievances_MS

    # Capture Validator
    Wait Until Element Is Visible                   ${EngagementGrievanceValidatorXpath}    	40 seconds
    Click Element                                   ${EngagementGrievanceValidatorXpath}
    Wait Until Element Is Visible                   ${EngagementGrievanceValidatorSearch}    40 seconds
    Sleep    1 seconds
    Input Text                                      ${EngagementGrievanceValidatorSearch}    a
    Press Keys                                      ${EngagementGrievanceValidatorSearch}    ENTER
    Wait Until Element Is Visible                   ${EngagementGrievanceValidatorSelect}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievanceValidatorSelect}
    Sleep    2 seconds

    # Capture Responsible Supervisor
    Wait Until Element Is Visible                   ${EngagementGrievanceRespSupXpath}    	40 seconds
    Click Element                                   ${EngagementGrievanceRespSupXpath}
    Wait Until Element Is Visible                   ${EngagementGrievanceRespSupSearch}    40 seconds
    Sleep    1 seconds
    Input Text                                      ${EngagementGrievanceRespSupSearch}    a
    Press Keys                                      ${EngagementGrievanceRespSupSearch}    ENTER
    Wait Until Element Is Visible                   ${EngagementGrievanceRespSupSelectID1}    40 seconds
    Sleep    1 seconds
    Click Element                                   ${EngagementGrievanceRespSupSelectID1}

    # Save Grievance
    Wait Until Element Is Visible                   ${EngagementGrievanceSaveBtnID}     40 seconds
    Click Element                                   ${EngagementGrievanceSaveBtnID}
    Wait Until Element Is Not Visible               ${LoadingBarXpath}                  40 seconds
    Sleep   1
#    Wait Until Element Is Visible                   ${RecordSaved}                                  60 seconds
    Screenshot      Stakeholder Groups Events Record Added

    # Reportable to external parties
    Scroll Element Into View                        ${StakeGroupEventsReportExternPartyChckBoxXpath}
    Sleep       1
    Click Element                                   ${StakeGroupEventsReportExternPartyChckBoxXpath}
    Page Should Contain Element                     ${StakeGroupEventsReportExternPartyDDXpath}
    Sleep       1
    Click Element                                   ${StakeGroupEventsReportExternPartyDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEventsReportExternPartyOptXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsReportExternPartyOptXpath}
    Click Element                                   ${StakeGroupEventsReportExternPartyDDXpath}

    # What will be reported
    Input Text                                      ${StakeGroupEventsWhatReportedXpath}        FR18 - Add Grievances_MS

    # 2.Verification & Additional Detail Tab
    Click Element                                   ${StakeGroupEvents2VerificationTabXpath}
    Wait Until Element Is Visible                   ${StakeGroupEventsActivityDDXpath}    40 seconds

    # Activity
    Click Element                                   ${StakeGroupEventsActivityDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEventsActivityOptXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsActivityOptXpath}
    Click Element                                   ${StakeGroupEventsActivityLblXpath}
    Sleep   1

    # What happened (agency)
    Click Element                                   ${StakeGroupEventsWhatHappenDDXpath}
    Sleep   1
    Wait Until Element Is Visible                   ${StakeGroupEventsWhatHappenOptXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsWhatHappenOptXpath}
    Sleep   1

    # How did it happen (mechanism)
    Click Element                                   ${StakeGroupEventsHowHappenDDXpath}
    Sleep   1
    Wait Until Element Is Visible                   ${StakeGroupEventsHowHappenOptExpandXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsHowHappenOptExpandXpath}
    Sleep   1
    Wait Until Element Is Visible                   ${StakeGroupEventsHowHappenOptXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsHowHappenOptXpath}

    # Complaint anonymous
    Click Element                                   ${StakeGroupEventsComplaintDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupEventsComplaintOptXpath}    40 seconds
    Click Element                                   ${StakeGroupEventsComplaintOptXpath}

    # Save Grievance
    Click Element                                   ${EngagementGrievanceSaveBtnID}
    Wait Until Element Is Not Visible               ${LoadingBarXpath}                              40 seconds
#    Wait Until Element Is Visible                   ${RecordSaved}                                  60 seconds
    Screenshot      Stakeholder Groups Events Record Added

    # IsoMetrix Interface
    Unselect frame

    Click Element                                   ${StakeGroupGrievancesIsoMetrixLogoXpath}
    Sleep       3
    Wait Until Element Is Visible                   ${iFrame}    30 seconds
    Select Frame                                    ${iFrame}
    Sleep       2
    Wait Until Element Is Enabled                   ${StakeGroupEventsInterfaceXpath}           40 seconds

    # Click Social Sustainability
    Sleep       2
    Wait Until Page Contains Element                ${SocialSustainabilityXpath}        30 seconds
    Click Element                                   ${SocialSustainabilityXpath}

    # Click Stakeholder Group
    Sleep       2
    Wait Until Element Is Visible                   ${StakeholderGroupXpath}            30 seconds
    Click Element                                   ${StakeholderGroupXpath}

    # Search Button
    Sleep       4
    Wait Until Element Is Not Visible               ${StakeholderGroupModLoadingXpath}            30 seconds
    Sleep       2
    Wait Until Element Is Enabled                   ${StakeholderGroupSearchID}                 30 seconds
    Input Text                                      ${StakeGroupCommitmentsConditionsSearchAutoTestXpath}           Auto Test
    Click Element                                   ${StakeholderGroupSearchID}
    Wait Until Element Is Visible                   ${StakeGroupCommitmentsConditionsSearchSearchRecordXpath}        30 seconds
    Screenshot      FR18 Search button clicked_record visible

    # Open Record
    Click Element                                   ${StakeGroupCommitmentsConditionsSearchSearchRecordXpath}
    Sleep       2
    Wait Until Element Is Enabled                   ${StakeholderGroupPFID}     30 seconds
    Wait Until Element Is Visible                   ${StakeholderGroupCommitmentsTab}        30 seconds

    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${StakeholderGroupTabRightArrow}
    END
    Sleep       1

    # Related Grievances
    Wait Until Element Is Visible                   ${StakeholderGroupRelateGrievancesTab}        30 seconds
    Sleep       2
    Click Element                                   ${StakeholderGroupRelateGrievancesTab}
    Scroll Element Into View                        ${StakeGroupGrievancesInLineEditTextXpath}
    Sleep       1
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}            30 seconds
    Wait Until Element Is Visible                   ${StakeGroupGrievancesOpenVGXpath}                          60 seconds

    # Open Related Grievances VG
    Click Element                                   ${StakeGroupGrievancesOpenVGXpath}
    Sleep       5
    Wait Until Element Is Not Visible               ${StakeGroupRelationsLoadingDataXpath}            30 seconds
    Wait Until Element Is Enabled                   ${EngagementGrievanceProcessID}                          60 seconds
    Screenshot      Open Related Grievances

#*********************************************** FR19 - Capture StakeGroup Actions_MS **************************************************
FR19 - Capture StakeGroup Actions_MS
    Log To Console    FR19 - Capture StakeGroup Actions_MS

    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${StakeholderGroupTabRightArrow}
    END
    Sleep       1

    # Actions Tab
    Click Element                                   ${StakeholderGroupActionsTab}
    Sleep       1
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}            30 seconds
    Wait Until Element Is Visible                   ${StakeGroupActionsNoResultsXpath}     30 seconds

    # Actions Add Button
    Click Element                                   ${StakeGroupActionsAddBtnXpath}
    Sleep       1
    Wait Until Element Is Not Visible               ${StakeGroupOrdersRecordLoadingXpath}            30 seconds
    Wait Until Element Is Enabled                   ${StakeGroupActionsPFXpath}     30 seconds

    # Process Flow
    Click Element                                   ${StakeGroupActionsPFXpath}
    Page Should Contain Element                     ${StakeGroupActionsPFAddXpath}
    Sleep       1

    # Type of action
    Click Element                                   ${StakeGroupActionsTypeDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupActionsTypeOptXpath}    40 seconds
    Click Element                                   ${StakeGroupActionsTypeOptXpath}

    # Action description
    Input Text                                      ${StakeGroupActionsDescriptionXpath}            FR19 - Capture StakeGroup Actions_MS

    # Entity
    Click Element                                   ${StakeGroupActionsEntityDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupActionsEntityExpandXpath}        40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupActionsEntityExpandXpath}
    Wait Until Element Is Visible                   ${StakeGroupActionsEntityOptXpath}        40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupActionsEntityOptXpath}

    # Responsible person
    Click Element                                   ${StakeGroupActionsResponsibleDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupActionsResponsibleSrchXpath}      40 seconds
    Sleep    1 seconds
    Input Text                                      ${StakeGroupActionsResponsibleSrchXpath}      auto
    Press Keys                                      ${StakeGroupActionsResponsibleSrchXpath}      ENTER
    Wait Until Element Is Visible                   ${StakeGroupActionsResponsibleOptXpath}       40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupActionsResponsibleOptXpath}

    # Person responsible for verification
    Wait Until Element Is Visible                   ${StakeGroupActionVerificationID}           40 seconds
    Click Element                                   ${StakeGroupActionVerificationID}
    Sleep   1
    Wait Until Element Is Visible                   ${StakeGroupActionVerificationXpath}        40 seconds
    Input Text                                      ${StakeGroupActionVerificationXpath}        Admin
    Press Keys                                      ${StakeGroupActionVerificationXpath}        ENTER
    Wait Until Element Is Visible                   ${StakeGroupActionVerifyResultXpath}        40 seconds
    Sleep    1 seconds
    Click Element                                   ${StakeGroupActionVerifyResultXpath}

    # Action due date
    ${DueDate}          Get Current Date            result_format=%d-%m-%Y              increment=+3 day
    Set Global Variable                             ${DueDate}
    Click Element                                   ${StakeGroupActionsDueDateXpath}
    Input Text                                      ${StakeGroupActionsDueDateXpath}             ${DueDate}
    Press Keys                                      ${StakeGroupActionsDueDateXpath}      ENTER

    # Is this a recurring action?
    Click Element                                   ${StakeGroupActionsRecurringDDXpath}
    Wait Until Element Is Visible                   ${StakeGroupActionsRecurringOptXpath}    40 seconds
    Click Element                                   ${StakeGroupActionsRecurringOptXpath}

    # Save Button
    Click Element                                   ${StakeGroupActionsSaveBtnXpath}
    Wait Until Element Is Visible                   ${RecordSaved2}                                      60 seconds
    Page Should Contain Element                     ${StakeGroupActionsPFInitiatedXpath}
    Screenshot      Stakeholder Actions Record Saved

    # Close Button
    Click Element                                   ${StakeGroupActionsCloseBtnXpath}
    Sleep       1
    # Confirmation message
    Unselect frame
    Click Element                                   ${StakeGroupActionsPopupYesBtnXpath}

    # Select Frame
    Sleep       1
    Select Frame                                    ${iFrame}
    Sleep       1
    Wait Until Element Is Not Visible               ${StakeGroupRelationsLoadingDataXpath}             60 seconds
    Wait Until Element Is Enabled                   ${StakeholderGroupDetailsTab}                      60 seconds

    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${StakeholderGroupTabRightArrow}
    END
    Sleep       1

    # Actions Tab
    Click Element                                   ${StakeholderGroupActionsTab}
    Sleep       8
    Wait Until Element Is Not Visible               ${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}        30 seconds
    Sleep       1
    Page Should Contain Element                     ${StakeGroupActionsSubModRecordXpath}
    Screenshot      Stakeholder Actions Record in Sub-module









