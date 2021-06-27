*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
#Library    Mouse

# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
Resource    ../../Repository/StakeGroup_vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\StakeholderGroup\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

#************************************************* FR1 - Capture Stakeholder Group_MS ****************************************
FR1 - Capture Stakeholder Group_MS
    Log To Console    Starting FR1 - Capture Stakeholder Group_MS


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
    Wait Until Element Is Not Visible       ${StakeholderGroupModLoadingXpath}            60 seconds
    Wait Until Element Is Enabled           ${StakeholderGroupSearchID}                 60 seconds
    Click Element                           ${StakeholderGroupSearchID}
    Wait Until Element Is Visible           ${StakeholderGroupSearchRecordXpath}        60 seconds
    Screenshot      FR1 Search button clicked

    # Add Button
    Click Element                           ${StakeholderGroupAddBtnID}
    Sleep       2
    Wait Until Element Is Enabled           ${StakeholderGroupPFID}     60 seconds

    # Process Flow
    Click Element                           ${StakeholderGroupPFID}
    Wait Until Element Is Visible           ${StakeholderGroupPFAdd}    10 seconds
    Screenshot      FR1 Add button clicked

    # Group name
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${StakeholderGroupNameXpath}               Auto Test_MS ${CurrentDate}

    # Known as
    Input Text                              ${StakeholderGroupKnownAsXpath}            Auto Test_MS

    # Stakeholder categories
    Click Element                           ${StakeholderGroupCatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupCatDDLocalCommXpath}    10 seconds
    Click Element                           ${StakeholderGroupCatDDLocalCommXpath}
    Click Element                           ${StakeholderGroupCatDDReportExternPartyXpath}
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
    Input Text                              ${StakeholderGroupDescXpath}                  FR1 - Capture Stakeholder Group_MS ${CurrentDate}

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

#    # FR1 - Capture Stakeholder Group_OS2
#    # Group logo image field
#    Click Element                           ${StakeholderGroupImageUploadXpath}


    #Save and continue
    Click Element                           ${StakeholderGroupSaveContinueXpath}
    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds

    #Validations after save
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

#************************************************* FR1 - Capture Stakeholder Group_OS1 ****************************************
FR1 - Capture Stakeholder Group_OS1
    Log To Console    Starting FR1 - Capture Stakeholder Group_OS1

    # Permanent Address
        # Street address
    Input Text                              ${StakeholderGroupPermAddStreetXpath}           Auto Street Test
        # Town
    Input Text                              ${StakeholderGroupPermAddTownXpath}             Auto Town Test
        # Zip code
    Input Text                              ${StakeholderGroupPermAddZipXpath}              1234
        # Location
    Click Element                           ${StakeholderGroupPermAddLocDDXpath}
    Sleep    1
    Wait Until Element Is Visible           ${StakeholderGroupPermAddLocOptXpath}           40 seconds
    Click Element                           ${StakeholderGroupPermAddLocOptXpath}

    # Supporting Documents
    FOR  ${i}     IN RANGE  1  5
    Click Element                           ${StakeholderGroupTabRightArrow}
    END
    Sleep       1
    Click Element                           ${StakeholderGroupSupportDocs}
    Wait Until Element Is Visible           ${StakeholderGroupSuppDocsLinkXpath}            20 seconds
    Click Element                           ${StakeholderGroupSuppDocsLinkXpath}
    #Alert should be present
    Switch Window
    Sleep       1
    Wait Until Element Is Visible           ${StakeholderGroupSuppDocsURLXpath}             20 seconds
    Clear Element Text                      ${StakeholderGroupSuppDocsURLXpath}
    Input Text                              ${StakeholderGroupSuppDocsURLXpath}             www.isomertix.com
    Input Text                              ${StakeholderGroupSuppDocsURLTitleXpath}        Isometrix
    Click Element                           ${StakeholderGroupSuppDocsAddXpath}
    Screenshot       Supporting Documents Link Added
    sleep       1
    Select Frame                            ${iFrame}

    FOR  ${i}     IN RANGE  1  7
    Click Element                           ${StakeholderGroupTabLeftArrow}
    END
    Sleep       1

# FR1_02 - Update Stakeholder Group Details_MS_OS
    Click Element                           ${StakeholderGroupDetailsTab}
    Scroll Element Into View                ${StakeholderGroupPermCommentsXpath}
    Sleep       1

    # Comments
    Input Text                              ${StakeholderGroupPermCommentsXpath}        FR1_02 - Update Stakeholder Group Details_MS_OS
    # Map Panel
    Click Element                           ${StakeholderGroupPermAddMapPanelXpath}
    Sleep       1
    # Correspondence Address
    Click Element                           ${StakeholderGroupCorrAddPanelXpath}
    Input Text                              ${StakeholderGroupCorrAddTextXpath}         FR1_02 - Update Stakeholder Group Details_MS_OS
    Input Text                              ${StakeholderGroupCorrAddZipXpath}          4321
    # Save Button
    Click Element                           ${StakeholderGroupSaveBtnXpath}
    Wait Until Element Is Visible           ${RecordSaved}                              120 seconds
    Sleep       1
    Screenshot      Update Stakeholder Group Details

    # Validate Latitude and Longitude
    Scroll Element Into View                ${StakeholderGroupPermAddLatXpath}
    Sleep       1
    Page Should Contain Element             ${StakeholderGroupPermAddLatXpath}
    Page Should Contain Element             ${StakeholderGroupPermAddLatXpath}
    Sleep       1
    Screenshot      Latitude and Longitude autopopulated_readonly
    Scroll Element Into View                ${StakeholderGroupPermCommentsXpath}
    Sleep       1
    # Map Panel
    Click Element                           ${StakeholderGroupPermAddMapPanelXpath}
    Sleep       1
    Scroll Element Into View                ${StakeholderGroupPermCommentsXpath}
    Sleep       1
#    Page Should Contain Element             ${StakeholderGroupPermAddMapCSS}
    Screenshot      Australia Map X

#    # Save supporting documents
#    Click Element                           ${StakeholderGroupSuppDocsSaveSupDocXpath}
#    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds
#    Wait Until Page Contains Element        ${StakeholderGroupSuppDocsLinkAdded}
#
#
##************************************************* FR1_02 - Update Stakeholder Group Details_MS_OS ****************************************
#FR1_02 - Update Stakeholder Group Details_MS_OS
#    Log To Console    FR1_02 - Update Stakeholder Group Details_MS_OS
#
#    Click Element                           ${StakeholderGroupDetailsTab}
#    # Validate Latitude and Longitude
#    Scroll Element Into View                ${StakeholderGroupPermAddLatXpath}
#    Page Should Contain Element             ${StakeholderGroupPermAddLatXpath}
#    Page Should Contain Element             ${StakeholderGroupPermAddLatXpath}
#    Sleep       1
#    Screenshot      Latitude and Longitude autopopulated_readonly
#    Scroll Element Into View                ${StakeholderGroupPermCommentsXpath}
#    Sleep       1
#    Page Should Contain Element             ${StakeholderGroupPermAddMapCSS}
#    Screenshot      Australia Map X
#    # Comments
#    Input Text                              ${StakeholderGroupPermCommentsXpath}        FR1_02 - Update Stakeholder Group Details_MS_OS
#    # Map Panel
#    Click Element                           ${StakeholderGroupPermAddMapPanelXpath}
#    Sleep       1
#    # Correspondence Address
#    Click Element                           ${StakeholderGroupCorrAddPanelXpath}
#    Input Text                              ${StakeholderGroupCorrAddTextXpath}         FR1_02 - Update Stakeholder Group Details_MS_OS
#    Input Text                              ${StakeholderGroupCorrAddZipXpath}          4321
#    # Save Button
#    Click Element                           ${StakeholderGroupSaveBtnXpath}
#    Wait Until Element Is Visible           ${RecordSaved}                              120 seconds
#    Sleep       1
#    Screenshot      Update Stakeholder Group Details

FR1_StakeGroup_AddedNotification
    Log To Console    FR1_StakeGroup_AddedNotification

    Open Browser                            ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    #Sign In Button
    Click Element                           ${SignInBtn}
    Wait Until Element Is Visible           ${EmailField}               20 seconds
    Input Text                              ${EmailField}               ${outlookusername}
    Wait Until Element Is Visible           ${EmailNext}                20 seconds
    Click Element                           ${EmailNext}
    Wait Until Element Is Visible           ${EmailPasswordField}       20 seconds
    Input Text                              ${EmailPasswordField}       ${outlookpassword}
    Wait Until Element Is Visible           ${EmailSignInBtn}           20 seconds
    Click Element                           ${EmailSignInBtn}
    Screenshot      Office Emails
    #Outlook Folder
    Wait Until Element Is Visible           ${Outlook}                  20 seconds
    Click Element                           ${Outlook}
    Screenshot      Outlook Folder
    sleep       15
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Wait Until Element Is Visible           ${SystemMailFolder}         20 seconds
    sleep       5
    Click Element                           ${SystemMailFolder}
    Screenshot      Outlook SystemMail Folder
    #StakeIndividual - Logged Notification
    sleep       3
    Wait Until Element Is Visible           ${StakeGroupAddedSubject}          60 seconds
    Click Element                           ${StakeGroupAddedSubject}
    Screenshot      Stakeholder Group Added Email Selection
    #Link Back to Record
    Click Element                           ${EmailLinkBacktoRecord}
    sleep       5
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Screenshot      IsoMetrix Tab Opened
    Wait Until Element Is Enabled           ${IsoMetrixSignInXpath}           60 seconds
    Click Element                           ${IsoMetrixSignInXpath}
    Wait Until Element Is Visible           ${Usernameid}
    Input Text                              ${Usernameid}    ${Username Value}
    Input Text                              ${Passwordid}    ${Password Value}
    Click Element                           ${SubmitButtonid}
    #Wait for StakeGroup Record
    sleep       20
    Select Frame                            ${iFrame}
    Wait Until Element Is Enabled           ${StakeholderGroupPFID}           60 seconds
    Click Element                           ${StakeholderGroupPFID}
    Wait Until Page Contains Element        ${StakeholderGroupPFEdit}
    Screenshot      Stakeholder Group Record Opened

#************************************************* FR1 - Capture Stakeholder Group_AS1 ****************************************
FR1 - Capture Stakeholder Group_AS1
    Log To Console    Starting FR1 - Capture Stakeholder Group_AS1

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
    Wait Until Element Is Not Visible       ${StakeholderGroupModLoadingXpath}            30 seconds
    Wait Until Element Is Enabled           ${StakeholderGroupSearchID}                 30 seconds
    Click Element                           ${StakeholderGroupSearchID}
    Wait Until Element Is Visible           ${StakeholderGroupSearchRecordXpath}        30 seconds
    Screenshot      FR1 Search button clicked

    # Add Button
    Click Element                           ${StakeholderGroupAddBtnID}
    Sleep       3
    Wait Until Element Is Enabled           ${StakeholderGroupPFID}     30 seconds

    # Process Flow
    Click Element                           ${StakeholderGroupPFID}
    Wait Until Element Is Visible           ${StakeholderGroupPFAdd}    10 seconds
    Screenshot      FR1 Add button clicked

    # Group name
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${StakeholderGroupNameXpath}               Auto Test_AS1 ${CurrentDate}

    # Known as
    Input Text                              ${StakeholderGroupKnownAsXpath}            Auto Test_AS1

    # Stakeholder categories
    Click Element                           ${StakeholderGroupCatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupCatDDAcaInstXpath}        10 seconds
    Click Element                           ${StakeholderGroupCatDDAcaInstXpath}
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
    Input Text                              ${StakeholderGroupDescXpath}                  FR1 - Capture Stakeholder Group_AS1 ${CurrentDate}

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

    #Save and continue
    Click Element                           ${StakeholderGroupSaveContinueXpath}
    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds

    #Validations after save
    Element Should Be Visible               ${StakeholderGroupPFEdit}
    Element Should Be Visible               ${StakeholderGroupRecordNoXpath}
    Element Should Be Visible               ${StakeholderGroupStatusActiveXpath}
    Element Should Be Visible               ${StakeholderGroupSocialPanelXpath}
    Element Should Be Visible               ${StakeholderGroupDetailsTab}
    Element Should Be Visible               ${StakeholderGroupAnalysisTab}
    Element Should Be Visible               ${StakeholderGroupMembersTab}
    Element Should Be Visible               ${StakeholderGroupAssGroupsTab}
    Element Should Be Visible               ${StakeholderGroupEngagementsTab}
    FOR  ${i}     IN RANGE  1  2
    Click Element                           ${StakeholderGroupTabRightArrow}
    END
    Sleep       1
    Element Should Be Visible               ${StakeholderGroupActionsTab}
    Element Should Be Visible               ${StakeholderGroupSupportDocs}
    Screenshot      FR1 Save button clicked
    FOR  ${i}     IN RANGE  1  3
    Click Element                           ${StakeholderGroupTabLeftArrow}
    END
    Sleep       1

#************************************************* FR1 - Capture Stakeholder Group_AS2 ****************************************
FR1 - Capture Stakeholder Group_AS2
    Log To Console    Starting FR1 - Capture Stakeholder Group_AS2

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
    Wait Until Element Is Not Visible       ${StakeholderGroupModLoadingXpath}            30 seconds
    Wait Until Element Is Enabled           ${StakeholderGroupSearchID}                 30 seconds
    Click Element                           ${StakeholderGroupSearchID}
    Wait Until Element Is Visible           ${StakeholderGroupSearchRecordXpath}        30 seconds
    Screenshot      FR1 Search button clicked

    # Add Button
    Click Element                           ${StakeholderGroupAddBtnID}
    Sleep      3
    Wait Until Element Is Enabled           ${StakeholderGroupPFID}     30 seconds

    # Process Flow
    Click Element                           ${StakeholderGroupPFID}
    Wait Until Element Is Visible           ${StakeholderGroupPFAdd}    10 seconds
    Screenshot      FR1 Add button clicked

    # Group name
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${StakeholderGroupNameXpath}               Auto Test_AS2 ${CurrentDate}

    # Known as
    Input Text                              ${StakeholderGroupKnownAsXpath}            Auto Test_AS2

    # Stakeholder categories
    Click Element                           ${StakeholderGroupCatDDXpath}
    Wait Until Element Is Visible           ${StakeholderGroupCatDDServProvXpath}       10 seconds
    Click Element                           ${StakeholderGroupCatDDServProvXpath}
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
    Input Text                              ${StakeholderGroupDescXpath}                  FR1 - Capture Stakeholder Group_AS2 ${CurrentDate}

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

    #Save and continue
    Click Element                           ${StakeholderGroupSaveContinueXpath}
    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds

    #Validations after save
    Element Should Be Visible               ${StakeholderGroupPFEdit}
    Element Should Be Visible               ${StakeholderGroupRecordNoXpath}
    Element Should Be Visible               ${StakeholderGroupStatusActiveXpath}
    Element Should Be Visible               ${StakeholderGroupSocialPanelXpath}
    Element Should Be Visible               ${StakeholderGroupDetailsTab}
    Element Should Be Visible               ${StakeholderGroupAnalysisTab}
    Element Should Be Visible               ${StakeholderGroupMembersTab}
    Element Should Be Visible               ${StakeholderGroupAssGroupsTab}
    Element Should Be Visible               ${StakeholderGroupContractSupplierTabXpath}
    FOR  ${i}     IN RANGE  1  4
    Click Element                           ${StakeholderGroupTabRightArrow}
    END
    Sleep       1
    Element Should Be Visible               ${StakeholderGroupEngagementsTab}
    Element Should Be Visible               ${StakeholderGroupActionsTab}
    Element Should Be Visible               ${StakeholderGroupSupportDocs}
    Screenshot      FR1 Save button clicked
    FOR  ${i}     IN RANGE  1  5
    Click Element                           ${StakeholderGroupTabLeftArrow}
    END
    Sleep       1

##************************************************* FR1_03 - Conduct Stakeholder Group Analysis_MS_OS ****************************************
#FR1_03 - Conduct Stakeholder Group Analysis_MS_OS
#    Log To Console    FR1_03 - Conduct Stakeholder Group Analysis_MS_OS
#
#    # Stakeholder Analysis Tab
#    Wait Until Element Is Visible           ${StakeholderGroupAnalysisTab}            40 seconds
#    Click Element                           ${StakeholderGroupAnalysisTab}
#    Sleep       1
#
#    # Social Status Panel
#    Click Element                           ${StakeholderGroupSocialPanelXpath}
#
#
#    # Validate Stakeholder Individual matrix; Topic / Issue Assessment and Guidelines panels
#    Page Should Contain Element             ${StakeholderGroupAnalysisSIMatrixXpath}
#    Page Should Contain Element             ${StakeholderGroupAnalysisTopIssAssPanelXpath}
#    Page Should Contain Element             ${StakeholderGroupAnalysisGuidePanelXpath}
#    Screenshot      matrix; Topic_Issue Assessment and Guidelines panels
#
#    # Impact rating
#    Click Element                           ${StakeholderGroupAnalysisImpactRatDDXpath}
#    Wait Until Element Is Visible           ${StakeholderGroupAnalysisImpactRatMedXpath}        60 seconds
#    Click Element                           ${StakeholderGroupAnalysisImpactRatMedXpath}
#
#    # Influence / Interest rating
#    Click Element                           ${StakeholderGroupAnalysisInfRatDDXpath}
#    Wait Until Element Is Visible           ${StakeholderGroupAnalysisInfRatMedXpath}           60 seconds
#    Click Element                           ${StakeholderGroupAnalysisInfRatMedXpath}
#
#    # Comments
#    Input Text                              ${StakeholderGroupAnalysisCommentsXpath}            FR1_03 - Conduct Stakeholder Group Analysis_MS_OS
#
#    # Optional scenario
#    Scroll Element Into View                ${StakeholderGroupAnalysisGuidePanelXpath}
#    Sleep       1
#    Click Element                           ${StakeholderGroupAnalysisGuidePanelXpath}
#    Scroll Element Into View                ${StakeholderGroupAnalysisGuidelinesExampleToolsLabelXpath}
#    Sleep       1
#    Screenshot      Guidelines Panel opened
#    Scroll Element Into View                ${StakeholderGroupNameXpath}
#    Sleep       1
#
#    # Save Button
#    Click Element                           ${StakeholderGroupSaveBtnXpath}
#    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds





















