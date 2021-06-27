*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Resource    ../Resources/vars.robot
Resource    StakeholderIndividual_keywords.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\StakeholderIndividual\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep   7 seconds
    Screenshot    Home page

Add Stakeholder Individual
    
    Wait Until Element Is Visible    ${StakeholderIndividualFNameXpath}    40 seconds
    Click Element                    ${StakeholderIndividualFNameXpath}
    Screenshot    Stakeholder Individual clicked
    Input Text                       ${StakeholderIndividualFNameXpath}    AutoTest
    Wait Until Element Is Visible    ${StakeholderIndividualLNameXpath}    40 seconds
    Click Element                    ${StakeholderIndividualLNameXpath}
    Input Text                       ${StakeholderIndividualLNameXpath}    User
    Wait Until Element Is Visible    ${StakeholderIndividualTitleDdID}    40 seconds
    Click Element                    ${StakeholderIndividualTitleDdID}
    Wait Until Element Is Visible    ${StakeIndividualTitleOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeIndividualTitleOptionID}
    Wait Until Element Is Visible    ${StakeholderIndividualCatDdID}    40 seconds
    Click Element                    ${StakeholderIndividualCatDdID}
    Wait Until Element Is Visible    ${StakeIndividualCatOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeIndividualCatOptionXpath}
    Wait Until Element Is Visible    ${StakeIndividualCatOption2Xpath}    40 seconds
    Screenshot   Record information entered
    Sleep    1 seconds
    Click Element                    ${StakeIndividualCatOption2Xpath}
    Sleep    1 seconds
    Click Element                    ${StakeholderIndividualFNameXpath}
    Wait Until Element Is Visible    ${StakeholderIndividualOwnerDdID}    40 seconds
    Click Element                    ${StakeholderIndividualOwnerDdID}
    Wait Until Element Is Visible    ${StakeholderIndOwnerSrchXpath}    40 seconds
    Input Text                       ${StakeholderIndOwnerSrchXpath}    AutoTest
    Press Keys                       ${StakeholderIndOwnerSrchXpath}    ENTER
    Wait Until Element Is Visible    ${StakeholderIndOwnerResultXpath}    60 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndOwnerResultXpath}
    Wait Until Element Is Visible    ${StakeholderIndividualBUDdID}    40 seconds
    Click Element                    ${StakeholderIndividualBUDdID}
    Wait Until Element Is Visible    ${StakeholderIndBUExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndBUExpand1Xpath}
    Wait Until Element Is Visible    ${StakeholderIndBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndBUExpand2Xpath}
    Wait Until Element Is Visible    ${StakeholderIndBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndBUExpand3Xpath}
    Wait Until Element Is Visible    ${StakeholderIndBUOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndBUOptionID}
    Click Element                    ${StakeholderIndividualBUDdID}
    Wait Until Element Is Visible    ${StakeholderIndSaveBtnID}    40 seconds
    Screenshot   Record info entered
    Click Element                    ${StakeholderIndSaveBtnID}
    Screenshot    Record saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot   Record saved

FR1 - Capture Stakeholder Individual
    Log To Console    Starting FR1 - Capture Stakeholder Individual

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    # Click Social Sustainability
    Sleep       2
    Wait Until Page Contains Element        ${SocialSustainabilityXpath}        30 seconds
    Click Element                           ${SocialSustainabilityXpath}

    Wait Until Element Is Visible    ${StakeholderIndividualXpath}    40 seconds
    Click Element                    ${StakeholderIndividualXpath}
    Wait Until Element Is Visible    ${StakeholderIndividualAddButtonID}    40 seconds
    Click Element                    ${StakeholderIndividualAddButtonID}
    Screenshot    FR1 Capture Add button clicked

    Add Stakeholder Individual

    # Asserts
    Wait Until Element Is Visible    ${StakeholderIndSocialStatusGridID}    40 seconds
    Element Should Be Visible        ${StakeholderIndSocialStatusGridID}

    Wait Until Element Is Visible    ${StakeholderIndDetailsTabID}    40 seconds
    Element Should Be Visible        ${StakeholderIndDetailsTabID}

    # Wait Until Element Is Visible    ${StakeholderIndAnalysisTabID}    40 seconds
    Element Should Be Visible        ${StakeholderIndAnalysisTabID}

    # Wait Until Element Is Visible    ${StakeholderIndRelTabID}    40 seconds
    Element Should Be Visible        ${StakeholderIndRelTabID}

    # Wait Until Element Is Visible    ${StakeholderIndRelGrpTabID}    40 seconds
    Element Should Be Visible        ${StakeholderIndRelGrpTabID}

    # Wait Until Element Is Visible    ${StakeholderIndEngageTabXpath}    40 seconds
    # Element Should Be Visible        ${StakeholderIndEngageTabXpath}

    # Wait Until Element Is Visible    ${StakeholderIndActionsTabID}    40 seconds
    # Element Should Be Visible        ${StakeholderIndActionsTabID}

    # Wait Until Element Is Visible    ${StakeholderIndCommitmentsTabID} 40 seconds
    Element Should Be Visible        ${StakeholderIndCommitmentsTabID}

    # Wait Until Element Is Visible    ${StakeholderIndRelGrievTabID}    40 seconds
    Element Should Be Visible        ${StakeholderIndRelGrievTabID}

    # Wait Until Element Is Visible    ${StakeholderIndSuppDocTabID}    40 seconds
    # Element Should Be Visible        ${StakeholderIndSuppDocTabID}

FR1 - Add Supporting Documents
    Log To Console    Starting FR1 - Add Supporting Documents

    Wait Until Element Is Visible    ${StakeholderRightArrowTabXpath}    40 seconds
    Click Element                    ${StakeholderRightArrowTabXpath}
    Sleep    1 seconds
    Screenshot    FR1 Add Right arrow tab clicked
    Click Element                    ${StakeholderRightArrowTabXpath}
    Sleep    2 seconds
    Click Element                    ${StakeholderIndSuppDocTabID}
    Wait Until Element Is Visible    ${StakeholderIndSuppDocLinkXpath}    40 seconds
    Click Element                    ${StakeholderIndSuppDocLinkXpath}
    Sleep    1 seconds
    Unselect Frame
    Wait Until Element Is Visible    ${StakeholderIndSuppDocLinkFieldID}    40 seconds
    Click Element                    ${StakeholderIndSuppDocLinkFieldID}
    Input Text                       ${StakeholderIndSuppDocLinkFieldID}    www.google.com
    Wait Until Element Is Visible    ${StakeholderIndSuppDocTileFieldID}    40 seconds
    Click Element                    ${StakeholderIndSuppDocTileFieldID}
    Input Text                       ${StakeholderIndSuppDocTileFieldID}    Google
    Wait Until Element Is Visible    ${StakeholderIndSuppDocAddBtnID}    40 seconds
    Click Element                    ${StakeholderIndSuppDocAddBtnID}
    Sleep    1 seconds
    Select Frame                     ${iFrame}
    Screenshot    FR1 Add button clicked
    
FR1 - Update Stakeholder Details
    Log To Console    Starting FR1 - Update Stakeholder Details

    Sleep    1 seconds
    Click Element                    ${StakeholderLeftArrowTabXpath}
    Sleep    1 seconds
    Click Element                    ${StakeholderLeftArrowTabXpath}
    Wait Until Element Is Visible    ${StakeholderIndDetailsTabID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderIndDetailsTabID}
    Wait Until Element Is Visible    ${StakeholderIndDetailsXpath}    40 seconds
    Click Element                    ${StakeholderIndDetailsXpath}
    Input Text                       ${StakeholderIndDetailsXpath}    Test
    Wait Until Element Is Visible    ${StakeholderDtlsContactXpath}    40 seconds
    Click Element                    ${StakeholderDtlsContactXpath}
    Input Text                       ${StakeholderDtlsContactXpath}    +(1234)56789
    Sleep    1 seconds
    Wait Until Element Is Visible    ${StakeholderDtlsStrtAddressXpath}    40 seconds
    Click Element                    ${StakeholderDtlsStrtAddressXpath}
    Input Text                       ${StakeholderDtlsStrtAddressXpath}    1 Test Street
    Wait Until Element Is Visible    ${StakeholderDtlsPostalXpath}    40 seconds
    Click Element                    ${StakeholderDtlsPostalXpath}
    Input Text                       ${StakeholderDtlsPostalXpath}    1234
    Wait Until Element Is Visible    ${StakeholderDtlsGeoLocDdID}    40 seconds
    Click Element                    ${StakeholderDtlsGeoLocDdID}
    Wait Until Element Is Visible    ${StakeholderDtlsGeoLocOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${StakeholderDtlsGeoLocOptionID}
    Sleep    1 seconds
    Screenshot    FR1 Update Info added
    Click Element                    ${StakeholderIndSaveBtnID}
    Screenshot    FR1 Update saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR1 Update saved

FR1 - Select Do not checkbox
    Log To Console    Starting FR1 - Select Do not checkbox

    Wait Until Element Is Not Visible    ${WaitLoaderID}    40 seconds
    Sleep    7 seconds

    Wait Until Element Is Visible    ${StakeholderDtlsDoNotContactXpath}    40 seconds
    Click Element                    ${StakeholderDtlsDoNotContactXpath}

    # Validate fields are visible
    Wait Until Element Is Visible    ${StakeholderDtlsAltContactDdXpath}    40 seconds
    Element Should Be Visible        ${StakeholderDtlsAltContactDdXpath}

    Wait Until Element Is Visible    ${StakeholderDtlsContactNumbID}    40 seconds
    Element Should Be Visible        ${StakeholderDtlsContactNumbID}

    Wait Until Element Is Visible    ${StakeholderDtlsEmailAddID}    40 seconds
    Element Should Be Visible        ${StakeholderDtlsEmailAddID}

    Click Element                    ${StakeholderDtlsDoNotContactXpath}

    # Wait Until Element Is Visible    ${StakehlrDtlsAltContactSrchXpath}    40 seconds
    # Input Text                       ${StakehlrDtlsAltContactSrchXpath}    AutoTest
    # Press Keys                       ${StakehlrDtlsAltContactSrchXpath}    ENTER
    # Wait Until Element Is Visible    ${StakehlrDtlsAltContactResultXpath}    40 seconds
    # Sleep    1 seconds
    # Click Element                    ${StakehlrDtlsAltContactResultXpath}

FR2 - Capture Stakeholder Analysis
    Log To Console    Starting FR2 - Capture Stakeholder Analysis

    Wait Until Element Is Visible    ${StakeholderIndAnalysisTabID}    40 seconds
    Click Element                    ${StakeholderIndAnalysisTabID}

    Wait Until Element Is Visible    ${SDAnalysisImpactRatingDdID}    40 seconds
    Screenshot    FR2 Capture Stakeholder analysis tab clicked
    Click Element                    ${SDAnalysisImpactRatingDdID}
    Wait Until Element Is Visible    ${SDAnalysisImpactRatingOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SDAnalysisImpactRatingOptionID}
    Wait Until Element Is Visible    ${SDAnalysisInterestRatingDdID}    40 seconds
    Click Element                    ${SDAnalysisInterestRatingDdID}
    Wait Until Element Is Visible    ${SDAnalysisIntrstRatingOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SDAnalysisIntrstRatingOptXpath}
    Screenshot    FR2 Capture Stakeholder analysis info
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

FR2 - Expand Guidlines Panel
    Log To Console    Starting FR2 - Expand Guidlines Panel

    Wait Until Element Is Visible    ${SDAnalysisGuidelinesPanelXpath}    40 seconds
    Click Element                    ${SDAnalysisGuidelinesPanelXpath}
    Wait Until Element Is Visible    ${SDAnalysisGuidelinesTextXpath}    40 seconds
    Element Should Be Visible        ${SDAnalysisGuidelinesTextXpath}
    Screenshot    FR2 Expand Guide lines expanded

FR2 - Capture Topic Issue Assessment
    Log To Console    Starting FR2 - Capture Topic Issue Assessment
    
    Wait Until Element Is Visible    ${SDAnalysisIssueAssessPanelXpath}    40 seconds
    Click Element                    ${SDAnalysisIssueAssessPanelXpath}

    Wait Until Element Is Visible    ${SDAnalysisIssueAssessAddBtnXpath}    40 seconds
    Screenshot    FR2 Capture Issue asses tab clicked
    Click Element                    ${SDAnalysisIssueAssessAddBtnXpath}
    Wait Until Element Is Visible    ${SDAnalysisIssueDdID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR2 Capture issue assess add button clicked
    Click Element                    ${SDAnalysisIssueDdID}
    Wait Until Element Is Visible    ${SDAnalysisIssueOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SDAnalysisIssueOptionID}
    Wait Until Element Is Visible    ${SDAnalysisImpactDdID}    40 seconds
    Click Element                    ${SDAnalysisImpactDdID}
    Wait Until Element Is Visible    ${SDAnalysisImpactOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SDAnalysisImpactOptionXpath}
    Wait Until Element Is Visible    ${SDAnalysisInterestDdID}    40 seconds
    Click Element                    ${SDAnalysisInterestDdID}
    Wait Until Element Is Visible    ${SDAnalysisInterestOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SDAnalysisInterestOptionXpath}
    Screenshot    FR2 Capture info captured
    Click Element                    ${StakeholderIndSaveBtnID}
    Screenshot    FR2 Capture saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR2 Capture saved

FR3 - Capture and Update Related Stakeholders
    Log To Console    Starting FR3 - Capture and Update Related Stakeholders

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    
    Sleep    7 seconds
    Wait Until Element Is Visible    ${StakeholderIndRelTabID}    40 seconds
    Click Element                    ${StakeholderIndRelTabID}
    Screenshot    FR3 Capture related stakeholders tab clicked
    Wait Until Element Is Visible    ${SHRelationshipsGridID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHRelationshipsAddBtnXpath}
    Wait Until Element Is Visible    ${SHRelationshipsStkldrNameID}    40 seconds
    Sleep    4 seconds
    Screenshot    FR3 Capture Add button clicked
    Click Element                    ${SHRelationshipsStkldrNameID}   
    Wait Until Element Is Visible    ${SHRelationshipNameSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${SHRelationshipNameSrchXpath}    a
    Press Keys                       ${SHRelationshipNameSrchXpath}    ENTER
    Wait Until Element Is Visible    ${SHRelationshipNameResultXpath}    40 seconds
    Sleep    15 seconds
    Click Element                    ${SHRelationshipNameResultXpath}
    Wait Until Element Is Visible    ${SHRelationshipsTypeDdID}    40 seconds
    Click Element                    ${SHRelationshipsTypeDdID}
    Wait Until Element Is Visible    ${SHRelationshipsTypeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHRelationshipsTypeOptionID}
    Screenshot    FR3 Capture info captured
    Click Element                    ${StakeholderIndSaveBtnID}
    Screenshot    FR3 Update Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR3 Update saved

FR3 - Related Stakeholder Create New Individual
    Log To Console    Starting FR3 - Related Stakeholder Create New Individual

    Wait Until Element Is Visible    ${SHRelationshipsCreateNewBtnXpath}    40 seconds
    Click Element                    ${SHRelationshipsCreateNewBtnXpath}

    # Select Frame    ${iFrame}
    Sleep    5 seconds
    Screenshot    FR3 Relatioship create new button clicked
    Select Window    NEW
    
    Sleep    2 seconds
    Select Frame    ${iFrame}
    Add Stakeholder Individual
    # Close Window

    ${Window_list} =  Get Window Names
    Close Window
    Select Window   ${Window_list}[1]

FR4 - Capture Related Groups
    Log To Console    Starting FR4 - Capture Related Groups

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Sleep    3 seconds
    
    Switch Window    MAIN
    Select Frame    ${iFrame}

    Wait Until Element Is Visible    ${StakeholderIndRelGrpTabID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${StakeholderIndRelGrpTabID}

    Wait Until Element Is Visible    ${SHRelatedGrpsGridID}    40 seconds
    Sleep    5 seconds
    Screenshot    FR4 related group tab clicked
    Click Element                    ${SHRelatedGrpsAddBtnXpath}
    Wait Until Element Is Visible    ${SHRelatedGrpsNameID}    40 seconds
    Sleep    3 seconds
    Screenshot  FR4 related group Add button clicked
    Click Element                    ${SHRelatedGrpsNameID}
    Wait Until Element Is Visible    ${SHRelatedGrpsNameSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${SHRelatedGrpsNameSrchXpath}    A
    Press Keys                       ${SHRelatedGrpsNameSrchXpath}    ENTER
    Wait Until Element Is Visible    ${SHRelatedGrpsNameResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHRelatedGrpsNameResultXpath}
    Wait Until Element Is Visible    ${SHRelatedGrpsPositionDdID}    40 seconds
    Click Element                    ${SHRelatedGrpsPositionDdID}
    Wait Until Element Is Visible    ${SHRelatedGrpsPositionOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHRelatedGrpsPositionOptionID}
    Screenshot    FR4 related group info added
    Click Element                    ${StakeholderIndSaveBtnID}
    Screenshot    FR4 related group saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR4 related group Saved

FR4 - Related Groups Create New Stakeholder Group
    Log To Console    Starting FR4 - Related Groups Create New Stakeholder Group

    Wait Until Element Is Visible    ${StakeholderIndRelGrpTabID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${StakeholderIndRelGrpTabID}
    Screenshot    FR4 group tab clicked
    Wait Until Element Is Visible    ${SHRelatedGrpsCreateNewBtnXpath}    40 seconds
    Screenshot    FR4
    Sleep    2 seconds
    Click Element                    ${SHRelatedGrpsCreateNewBtnXpath}

    Sleep    5 seconds
    Switch Window    NEW
    Sleep    2 seconds
    Select Frame    ${iFrame}

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Wait Until Element Is Visible        ${SHGroupNameXpath}    40 seconds
    Screenshot    FR4 Create new button clicked
    Click Element                        ${SHGroupNameXpath}
    Input Text                           ${SHGroupNameXpath}    Auto Test Group

    Wait Until Element Is Visible        ${SHGroupCategoriesDdID}    40 seconds
    Click Element                        ${SHGroupCategoriesDdID}
    Wait Until Element Is Visible        ${SHGroupCategoriesOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${SHGroupCategoriesOptionXpath}
    Sleep    1 seconds
    Click Element                        ${SHGroupCategoriesDdID}

    Wait Until Element Is Visible        ${SHGroupDescriptionXpath}    40 seconds
    Screenshot    FR4 Category added
    Click Element                        ${SHGroupDescriptionXpath}
    Input Text                           ${SHGroupDescriptionXpath}    Auto testing

    Wait Until Element Is Visible        ${SHGroupApplicableBUDdID}    40 seconds
    Click Element                        ${SHGroupApplicableBUDdID}
    Wait Until Element Is Visible        ${SHGroupApplicableBUExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${SHGroupApplicableBUExpand1Xpath}
    Wait Until Element Is Visible        ${SHGroupApplicableBUOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${SHGroupApplicableBUOptionXpath}
    Sleep    1 seconds
    Click Element                        ${SHGroupApplicableBUDdID}
    Wait Until Element Is Visible        ${SHGroupSaveBtnID}    40 seconds
    Screenshot    FR4 group info captured
    Click Element                        ${SHGroupSaveBtnID}
    Screenshot    FR4 Group saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Stakeholder Details
    Wait Until Element Is Visible        ${SHGroupContactPhoneXpath}    40 seconds
    Screenshot    FR4group saved
    Click Element                        ${SHGroupContactPhoneXpath}
    Input Text                           ${SHGroupContactPhoneXpath}    0111234567
    Wait Until Element Is Visible        ${SHGroupContactEmailXpath}    40 seconds
    Click Element                        ${SHGroupContactEmailXpath}
    Input Text                           ${SHGroupContactEmailXpath}    test@automation.com
    Wait Until Element Is Visible        ${SHGroupStreetAddressXpath}    40 seconds
    Click Element                        ${SHGroupStreetAddressXpath}
    Input Text                           ${SHGroupStreetAddressXpath}    1 Test Street
    Wait Until Element Is Visible        ${SHGrouppostalCodeXpath}    40 seconds
    Click Element                        ${SHGrouppostalCodeXpath}
    Input Text                           ${SHGrouppostalCodeXpath}    1234
    Wait Until Element Is Visible        ${SHGroupLocationDdID}    40 seconds
    Click Element                        ${SHGroupLocationDdID}
    Wait Until Element Is Visible        ${SHGroupLocationOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                        ${SHGroupLocationOptionID}
    Screenshot    FR4 Info added
    Click Element                        ${SHGroupSaveBtnID}
    Screenshot    FR4 Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR4 Saved

    ${Window_list} =  Get Window Names
    Close Window
    Select Window   ${Window_list}[1]

FR5 - Add/View Engagements
    Log To Console    Starting FR5 - Add/View Engagements

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Sleep    3 seconds

    Switch Window    MAIN
    Select Frame    ${iFrame}

    Wait Until Element Is Visible    ${StakeholderIndEngageTabXpath}    40 seconds
    Click Element                    ${StakeholderIndEngageTabXpath}

    Wait Until Element Is Visible    ${SHEngagementsGridID}    40 seconds
    Wait Until Element Is Visible    ${SHPreviousEngagementsAddBtnXpath}    40 seconds
    Screenshot    FR5 Engagement Tab clicked
    Click Element                    ${SHPreviousEngagementsAddBtnXpath}

    Sleep    5 seconds
    Switch Window    NEW
    Sleep    2 seconds
    Select Frame    ${iFrame}

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Wait Until Element Is Visible    ${SHPreviousEngagementsTitleXpath}    40 seconds
    Screenshot    FR5 add button clicked
    Click Element                    ${SHPreviousEngagementsTitleXpath}
    Input Text                       ${SHPreviousEngagementsTitleXpath}    Auto Test
    
    #Get the current date for the engagement date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}
    Wait Until Element Is Visible    ${SHPreviousEngagementsDateXpath}    40 seconds
    Click Element                    ${SHPreviousEngagementsDateXpath}
    Input Text                       ${SHPreviousEngagementsDateXpath}    ${CurrentDate}

    Wait Until Element Is Visible    ${SHPreviousEngagementsBUDdID}    40 seconds
    Click Element                    ${SHPreviousEngagementsBUDdID}
    Wait Until Element Is Visible    ${SHPrevEngagementsBUExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementsBUExpand1Xpath}
    Wait Until Element Is Visible    ${SHPrevEngagementsBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementsBUExpand2Xpath}
    Wait Until Element Is Visible    ${SHPrevEngagementsBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementsBUExpand3Xpath}
    Wait Until Element Is Visible    ${SHPrevEngagementsBUOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementsBUOptionID}

    Wait Until Element Is Visible    ${SHPrevEngagementsFuncDdID}    40 seconds
    Click Element                    ${SHPrevEngagementsFuncDdID}
    Wait Until Element Is Visible    ${SHPrevEngagementsFuncOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementsFuncOptionXpath}
    Click Element                    ${SHPrevEngagementsFuncDdID}

    Wait Until Element Is Visible    ${SHPrevEngagementsMethodDdID}    40 seconds
    Click Element                    ${SHPrevEngagementsMethodDdID}
    Wait Until Element Is Visible    ${SHPrevEngagementMethodOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngagementMethodOptionXpath}

    Wait Until Element Is Visible    ${SHPrevEngagementRespPersonDdID}    40 seconds
    Click Element                    ${SHPrevEngagementRespPersonDdID}
    Wait Until Element Is Visible    ${SHPrevEngageRespPersonSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${SHPrevEngageRespPersonSrchXpath}    Auto
    Press Keys                       ${SHPrevEngageRespPersonSrchXpath}    ENTER
    Wait Until Element Is Visible    ${SHPrevEngageRespPersonResultXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngageRespPersonResultXpath}

    Wait Until Element Is Visible    ${SHPrevEngageTopicDdID}    40 seconds
    Click Element                    ${SHPrevEngageTopicDdID}
    Wait Until Element Is Visible    ${SHPrevEngageTopicOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngageTopicOptionXpath}
    Click Element                    ${SHPrevEngageTopicDdID}

    Wait Until Element Is Visible    ${SHPrevEngageDescriptonXpath}    40 seconds
    Screenshot    FR5 information added
    Click Element                    ${SHPrevEngageDescriptonXpath}
    Input Text                       ${SHPrevEngageDescriptonXpath}    Auto Testing

    Wait Until Element Is Visible    ${SHPrevEngageGeoLocDdID}    40 seconds
    Click Element                    ${SHPrevEngageGeoLocDdID}
    Wait Until Element Is Visible    ${SHPrevEngageGeoLocOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHPrevEngageGeoLocOptionXpath}

    Wait Until Element Is Visible    ${SHPrevEngageSaveBtnID}    40 seconds
    Screenshot    FR5 info captured
    Click Element                    ${SHPrevEngageSaveBtnID}
    Screenshot    FR5 Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR5 Saved
    
    ${Window_list} =  Get Window Names
    Close Window
    Select Window   ${Window_list}[1]

FR6 - Add/View Engagement Plan
    Log To Console    FR6 - Add/View Engagement Plan

    Switch Window    MAIN
    Select Frame    ${iFrame}

    Wait Until Element Is Visible    ${SHEngagePlanTabID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${SHEngagePlanTabID}

    Wait Until Element Is Visible    ${SHEngagePlanAddBtnID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${SHEngagePlanAddBtnID}

    Sleep    5 seconds
    Switch Window    NEW
    Sleep    2 seconds
    Select Frame    ${iFrame}
    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds

    Wait Until Element Is Visible    ${SHEngagePlanBUDdID}    40 seconds
    Screenshot    FR6 Add button clicked
    Click Element                    ${SHEngagePlanBUDdID}
    Wait Until Element Is Visible    ${SHEngagePlanBUDdExpandXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 Engagement plan BUD clicked
    Click Element                    ${SHEngagePlanBUDdExpandXpath}
    Wait Until Element Is Visible    ${SHEngagePlanBUDdExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 Expand
    Click Element                    ${SHEngagePlanBUDdExpand2Xpath}
    Wait Until Element Is Visible    ${SHEngagePlanBUDdExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 expand 2
    Click Element                    ${SHEngagePlanBUDdExpand3Xpath}
    Wait Until Element Is Visible    ${SHEngagePlanBUDdSelectID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 expand 3
    Click Element                    ${SHEngagePlanBUDdSelectID}

    Wait Until Element Is Visible    ${SHEngagePlanTitleXpath}    40 seconds
    Click Element                    ${SHEngagePlanTitleXpath}
    Input Text                       ${SHEngagePlanTitleXpath}    Testing

    Wait Until Element Is Visible    ${SHEngagePlanStartDateXpath}    40 seconds
    Click Element                    ${SHEngagePlanStartDateXpath}
    Input Text                       ${SHEngagePlanStartDateXpath}    ${CurrentDate}

    Wait Until Element Is Visible    ${SHEngagePlanFrequencyDdID}    40 seconds
    Click Element                    ${SHEngagePlanFrequencyDdID}
    Wait Until Element Is Visible    ${SHEngagePlanFrequencyOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHEngagePlanFrequencyOptionID}

    Wait Until Element Is Visible    ${SHEngagePlanPurposeID}    40 seconds
    Click Element                    ${SHEngagePlanPurposeID}
    Wait Until Element Is Visible    ${SHEngagePlanPurposeOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHEngagePlanPurposeOptionXpath}
    Click Element                    ${SHEngagePlanPurposeID}

    Wait Until Element Is Visible    ${SHEngagePlanResponsiblePrsnDdID}    40 seconds
    Click Element                    ${SHEngagePlanResponsiblePrsnDdID}
    Wait Until Element Is Visible    ${SHEngagePlanRespPrsnSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                        ${SHEngagePlanRespPrsnSrchXpath}    Auto
    Press Keys                        ${SHEngagePlanRespPrsnSrchXpath}    ENTER
    Wait Until Element Is Visible     ${SHEngagePlanRespPrsnResultID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR6 info captured
    Click Element                     ${SHEngagePlanRespPrsnResultID}
    Screenshot    FR6 Result clicked
    Wait Until Element Is Visible    ${SHEngagePlanSaveBtnID}    40 seconds
    Click Element                    ${SHEngagePlanSaveBtnID}
    Screenshot    FR6 Engagement plan saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR6 Engagement plan saved

    ${Window_list} =  Get Window Names
    Close Window
    Select Window   ${Window_list}[1]

FR7 - Add/View Commitments
    Log To Console    FR7 - Add/View Commitments

    Switch Window    MAIN
    Select Frame    ${iFrame}

    Wait Until Element Is Visible    ${StakeholderIndCommitmentsTabID}    40 seconds
    Click Element                    ${StakeholderIndCommitmentsTabID}

    Wait Until Element Is Visible    ${SHCommitmentsBtnAddXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR7 Commitments tab clicked
    Click Element                    ${SHCommitmentsBtnAddXpath}

    Sleep    5 seconds
    Switch Window    NEW
    Sleep    2 seconds
    Select Frame    ${iFrame}
    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds

    Wait Until Element Is Visible    ${SHCommitmentsBUDdID}    40 seconds
    Click Element                    ${SHCommitmentsBUDdID}
    Wait Until Element Is Visible    ${SHCommitmentsBUDdExpandXpath}    40 seconds
    Sleep    1 seconds
    Screenshot    FR7 Add button clicked
    Click Element                    ${SHCommitmentsBUDdExpandXpath}
    Wait Until Element Is Visible    ${SHCommitmentsBUDdExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHCommitmentsBUDdExpand2Xpath}
    Wait Until Element Is Visible    ${SHCommitmentsBUDdExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHCommitmentsBUDdExpand3Xpath}
    Wait Until Element Is Visible    ${SHCommitmentsBUDdSelectID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHCommitmentsBUDdSelectID}

    Wait Until Element Is Visible    ${SHCommitmetsFuncLocationDdID}    40 seconds
    Click Element                    ${SHCommitmetsFuncLocationDdID}
    Wait Until Element Is Visible    ${SHCommitmetsFuncLocationOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHCommitmetsFuncLocationOptionID}

    Wait Until Element Is Visible    ${SHCommitmentsRegTitleXpath}    40 seconds
    Click Element                    ${SHCommitmentsRegTitleXpath}
    Input Text                       ${SHCommitmentsRegTitleXpath}    Auto Test

    Wait Until Element Is Visible    ${SHCommitmentsRegOwnerDdID}    40 seconds
    Click Element                    ${SHCommitmentsRegOwnerDdID}
    Wait Until Element Is Visible    ${SHCommitmentsRegOwnerSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${SHCommitmentsRegOwnerSrchXpath}    Auto
    Press Keys                       ${SHCommitmentsRegOwnerSrchXpath}    ENTER
    Wait Until Element Is Visible    ${SHCommitmentsRegOwnerRsltID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHCommitmentsRegOwnerRsltID}

    Wait Until Element Is Visible    ${SHCommitmentsSaveBtnID}    40 seconds
    Screenshot    FR7  Info added
    Click Element                    ${SHCommitmentsSaveBtnID}
    Screenshot    FR7 Commitments Saving
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR7 Commitments Saved
    StakeholderIndRelGrievTabID

    ${Window_list} =  Get Window Names
    Close Window
    Select Window   ${Window_list}[1]

FR8 - View Grievances
    Log To Console    FR8 - View Grievances

    Switch Window    MAIN
    Select Frame    ${iFrame}

    Wait Until Element Is Visible    ${StakeholderIndRelGrievTabID}    40 seconds
    Click Element                    ${StakeholderIndRelGrievTabID}

    Wait Until Element Is Visible    ${SHGrievancesGridID}    40 seconds
    Element Should Be Visible        ${SHGrievancesGridID}
    Screenshot    FR8 Stakeholder Ind Rel Griev Tab clicked

FR9 - Capture Actions
    Log To Console    FR9 - Capture Actions

    Wait Until Element Is Visible    ${StakeholderRightArrowTabXpath}    40 seconds
    Click Element                    ${StakeholderRightArrowTabXpath}

    Wait Until Element Is Visible    ${StakeholderIndActionsTabID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR9 Right arrow tab clicked
    Click Element                    ${StakeholderIndActionsTabID}

    Wait Until Element Is Visible    ${SHActionsAddBtnXpath}    40 seconds
    Sleep    2 seconds
    Screenshot    FR9 Actions tab clicked
    Click Element                    ${SHActionsAddBtnXpath}

    Wait Until Element Is Visible    ${SHActionsTypeDdID}    40 seconds
    Screenshot    FR9 Add button clicked
    Click Element                    ${SHActionsTypeDdID}
    Wait Until Element Is Visible    ${SHActionsTypeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsTypeOptionID}

    Wait Until Element Is Visible    ${SHActionsDescriptionXpath}    40 seconds
    Click Element                    ${SHActionsDescriptionXpath}
    Input Text                       ${SHActionsDescriptionXpath}    Auto Testing

    Wait Until Element Is Visible    ${SHActionsEntityDdID}    40 seconds
    Click Element                    ${SHActionsEntityDdID}
    Wait Until Element Is Visible    ${SHActionsEntityExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsEntityExpandXpath}
    Wait Until Element Is Visible    ${SHActionsEntityExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsEntityExpand2Xpath}
    Wait Until Element Is Visible    ${SHActionsEntityExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsEntityExpand3Xpath}
    Wait Until Element Is Visible    ${SHActionsEntitySelectXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsEntitySelectXpath}

    Wait Until Element Is Visible    ${SHActionsRespPersonDdID}    40 seconds
    Click Element                    ${SHActionsRespPersonDdID}
    Wait Until Element Is Visible    ${SHActionsRespPersonSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${SHActionsRespPersonSrchXpath}    Auto
    Press Keys                       ${SHActionsRespPersonSrchXpath}    ENTER
    Wait Until Element Is Visible    ${SHActionsRespPersonRsltXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${SHActionsRespPersonRsltXpath}

    #Get the current date for the engagement date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}
    Wait Until Element Is Visible    ${SHActionsDueDateXpath}    40 seconds
    Click Element                    ${SHActionsDueDateXpath}
    Input Text                       ${SHActionsDueDateXpath}    ${CurrentDate}

    Wait Until Element Is Visible    ${SHActionsSaveArrowBtnXpath}    40 seconds
    Screenshot    FR9 Info added
    Click Element                    ${SHActionsSaveArrowBtnXpath}
    Wait Until Element Is Visible    ${SHActionsSaveAndCloseBtnID}    40 seconds
    Sleep    1 seconds
    Screenshot    FR9 Actions save arrow button clicked
    Click Element                    ${SHActionsSaveAndCloseBtnID}
    Screenshot    FR9 Save and close
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR9 save and close btn clicked

FR10 - Edit Stakeholder Individual
    Log To Console    FR10 - Edit Stakeholder Individual

    Wait Until Element Is Visible    ${SHIndividualKnownAsXpath}    40 seconds
    Click Element                    ${SHIndividualKnownAsXpath}
    Input Text                       ${SHIndividualKnownAsXpath}    AutoTest
    Screenshot    FR Edit Stakeholder Individual
    Wait Until Element Is Visible    ${StakeholderIndSaveBtnID}    40 seconds
    Click Element                    ${StakeholderIndSaveBtnID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Screenshot    FR10 Save button clicked
    