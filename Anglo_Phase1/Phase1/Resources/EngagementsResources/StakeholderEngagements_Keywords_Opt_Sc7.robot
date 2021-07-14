*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
#Resource    Stakeholder_keywords.robot


*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

FR1 - Capture Engagements Optional Scenario 7
    Log To Console    Starting FR1 - Capture Engagements Optional Scenario 7

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Social Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${SocialSustainabilityXpath}    60 seconds
    Click Element                       ${SocialSustainabilityXpath}

    # Click Engagemet Management
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementManagementXpath}    40 seconds
    Click Element                       ${EngagementManagementXpath}


    # Add Stakeholder Engagement Record
    Wait Until Element Is Visible       ${EngagementManagementAddBtnID}    40 seconds
    Click Element                       ${EngagementManagementAddBtnID}


    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${EngagementManagementProcessId}    40 seconds
    Click Element                       ${EngagementManagementProcessId}


    #validate process is on AddPhase
    Wait Until Element Is Visible       ${EngagementManagementProcessAddPhase}    40 seconds
    Element Should Be Visible           ${EngagementManagementProcessAddPhase}



    # Capture Title
    Wait Until Element Is Visible       ${EngagementManagementTitleXpath}    40 seconds
    Click Element                       ${EngagementManagementTitleXpath}
    Input Text                          ${EngagementManagementTitleXpath}    Auto Test

    #Get the current date for the Non-Compliance date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}


    # Capture Engagement Date
    Wait Until Element Is Visible       ${EngagementManagementDateXpath}    40 seconds
    Click Element                       ${EngagementManagementDateXpath}
    Input Text                          ${EngagementManagementDateXpath}    ${CurrentDate}
    Click Element                       ${EngagementManagementTitleXpath}

    # Capture Business Unit
    Wait Until Element Is Visible       ${EngagementManagementBUDDID}    40 seconds
    Click Element                       ${EngagementManagementBUDDID}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible       ${EngagementManagementBUDrpSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUDrpSelect}
    Wait Until Element Is Visible       ${EngagementManagementBUSelectID2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUSelectID2}


    # Validate Project field is not visible (Alternate Scenario 1)
    Element Should Not Be Visible       ${EngagementManagmentProjectDDID}

    # Select Link to Project Check Box
    Wait Until Element Is Visible       ${EngagementManagmentLinkProjXpath}    40 seconds
    Click Element                       ${EngagementManagmentLinkProjXpath}

    # Capture Functional Location
    Wait Until Element Is Visible       ${EngagementManagmentFLDDID}    40 seconds
    Click Element                       ${EngagementManagmentFLDDID}
    Wait Until Element Is Visible       ${EngagementManagmentFLOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentFLOptionID}

    # Capture Project
    Wait Until Element Is Visible       ${EngagementManagmentProjectDDID}    	40 seconds
    Click Element                       ${EngagementManagmentProjectDDID}
    Wait Until Element Is Visible       ${EngagementManagmentProjSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementManagmentProjSrchXpath}    a
    Press Keys                          ${EngagementManagmentProjSrchXpath}    ENTER
    Wait Until Element Is Visible       ${EngagementManagmentProjOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentProjOptXpath}
    Click Element                       ${EngagementManagmentProjectDDID}

    # Capture Function of Engagement
    Wait Until Element Is Visible       ${EngagementManagmentFuncDDID}    40 seconds
    Click Element                       ${EngagementManagmentFuncDDID}
    Wait Until Element Is Visible       ${EngagementManagmentFuncOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentFuncOptXpath}
    Click Element                       ${EngagementManagmentFuncDDID}

    # Capture Method of Engagement
    Wait Until Element Is Visible       ${EngagementManagmentMethodDDID}    40 seconds
    Click Element                       ${EngagementManagmentMethodDDID}
    Wait Until Element Is Visible       ${EngagementManagmentMethodOptID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentMethodOptID}

    # Alternate scenario 2

    # Select Confidential Checkbox
    Wait Until Element Is Visible       ${EngagementManagmentConfChkXpath}    40 seconds
    Click Element                       ${EngagementManagmentConfChkXpath}

    # Capture Responsible Person
    Wait Until Element Is Visible       ${EngagementManagmentRespPersonDDID}    40 seconds
    Click Element                       ${EngagementManagmentRespPersonDDID}
    Wait Until Element Is Visible       ${EngagementManagmentRespSrchXpath}    40 seconds
    Input Text                          ${EngagementManagmentRespSrchXpath}    Auto
    Press Keys                          ${EngagementManagmentRespSrchXpath}    ENTER
    Wait Until Element Is Visible       ${EngagementManagmentRespRsltID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentRespRsltID}

    # Capture Contact Inquiry
    Wait Until Element Is Visible       ${EngagementManagmentCntInqDDID}    40 seconds
    Click Element                       ${EngagementManagmentCntInqDDID}
    Wait Until Element Is Visible       ${EngagementManagmentCntInqOptXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentCntInqOptXpath}

    # Capture Description
    Wait Until Element Is Visible       ${EngagementManagmentDescXpath}    40 seconds
    Click Element                       ${EngagementManagmentDescXpath}
    Input Text                          ${EngagementManagmentDescXpath}    Test


    # Capture Outcome
    Wait Until Element Is Visible       ${EngagementManagmentLocDDID}    40 seconds
    Click Element                       ${EngagementManagmentLocDDID}
    Wait Until Element Is Visible       ${EngagementManagmentLocOptID}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentLocOptID}




    #Add New Permit
    Wait Until Element Is Visible         ${EngagementManagementPermitBtn}    40 seconds
    Click Element                         ${EngagementManagementPermitBtn}


#************************************************* Permit tab ******************************************************
    #Switch window frame
    Switch Window       NEW
    Sleep               5
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame        ${iFrame}

    # Check on Process Flow
    Sleep    10 seconds
    Wait Until Element Is Visible       ${EngagementPermitProcessID}    40 seconds
    Click Element                       ${EngagementPermitProcessID}



    # Capture Business Unit

    Wait Until Element Is Visible       ${EngagementPermitBUXpath}    40 seconds
    Click Element                       ${EngagementPermitBUXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpandXpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagmentBUExpand2Xpath}
    Wait Until Element Is Visible       ${EngagementManagmentBUExpand3Xpath}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${EngagementManagmentBUExpand3Xpath}
    Wait Until Element Is Visible       ${EngagementManagementBUDrpSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUDrpSelect}
    Wait Until Element Is Visible       ${EngagementManagementBUSelectID2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementManagementBUSelectID2}

    # Capture Commodity
    Wait Until Element Is Visible       ${EngagementPermitCommodityXpath}    40 seconds
    Click Element                       ${EngagementPermitCommodityXpath}
    Wait Until Element Is Visible       ${EngagementPermitCommoditySelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitCommoditySelect}

    #Save and continue to next Tab
    Wait until element is visible       ${EngagementPermitSaveAndContinue}    40 seconds
    click element                       ${EngagementPermitSaveAndContinue}
    Sleep    5 seconds

    # Validate Edit Phase



    #Capture permit tab
    Wait Until Element Is Visible       ${EngagementPermitTab}    40 seconds
    click element                       ${EngagementPermitTab}
    Sleep    1 seconds



    #Add new permit
    Wait Until Element Is Visible       ${EngagementPermitAddNew}    40 seconds
    click element                       ${EngagementPermitAddNew}

     # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${EngagementPermitProcessID2}    40 seconds
    Click Element                       ${EngagementPermitProcessID2}

    # Capture New Permit
    Wait Until Element Is Visible       ${EngagementPermitNew}    40 seconds
    Click Element                       ${EngagementPermitNew}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementPermitNewSelect}    40 seconds
    Click Element                       ${EngagementPermitNewSelect}



    #Capture Title
    Wait Until Element Is Visible       ${EngagementPermitTitle}    40 seconds
    Click Element                       ${EngagementPermitTitle}
    Input Text                          ${EngagementPermitTitle}    Auto Test ${CurrentDate}

    # Capture Description
    Wait Until Element Is Visible       ${EngagementPermitDescription}    40 seconds
    Click Element                       ${EngagementPermitDescription}
    Input Text                          ${EngagementPermitDescription}    Auto Test Permit

    # Capture Permit Nature
    Wait Until Element Is Visible       ${EngagementPermitNatureXpath}    40 seconds
    Click Element                       ${EngagementPermitNatureXpath}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementPermitNatureSelect}    40 seconds
    Click Element                       ${EngagementPermitNatureSelect}

    # Capture Permit Owner Department

    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath}    40 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath}
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath2}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath2}
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath3}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath3}
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath4}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${EngagementPermitOwnerDeptXpath4}
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath5}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath5}
    Wait Until Element Is Visible       ${EngagementPermitOwnerDeptXpath6}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitOwnerDeptXpath6}





    # Capture Permit Owner

    Wait Until Element Is Visible       ${EngagementPermitOwnerXpath}    40 seconds
    scroll element into view            ${EngagementPermitOwnerXpath}
    Click Element                       ${EngagementPermitOwnerXpath}
    Wait Until Element Is Visible       ${EngagementPermitOwnerSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementPermitOwnerSearch}    a
    Press Keys                          ${EngagementPermitOwnerSearch}    ENTER
    #Wait Until Element Is Visible       ${EngagementCommitSelectXpath}    40 seconds
    Sleep    1 seconds
    wait until element is visible       ${EngagementPermitOwnerSelect}    40 seconds
    Click Element                       ${EngagementPermitOwnerSelect}
    #Click Element                       ${EngagementGrievanceValidatorXpath}
    Sleep    2 seconds

    # Capture Accountable Person
    Wait Until Element Is Visible       ${EngagementPermitAcctPersonXpath}    40 seconds
    Scroll Element Into View            ${EngagementPermitAcctPersonXpath}
    Click Element                       ${EngagementPermitAcctPersonXpath}
    Wait Until Element Is Visible       ${EngagementPermitAcctPersonSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementPermitAcctPersonSearch}    a
    Press Keys                          ${EngagementPermitAcctPersonSearch}    ENTER
    #Wait Until Element Is Visible       ${EngagementCommitSelectXpath}    40 seconds
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EngagementPermitAcctPersonSelect}    40 seconds
    Click Element                       ${EngagementPermitAcctPersonSelect}
    Click Element                       ${EngagementPermitAcctPersonXpath}
    Sleep    2 seconds


    # Capture Stakeholder Legal Group
    Wait Until Element Is Visible       ${EngagementPermitLegalStakeXpath}    40 seconds
    Click Element                       ${EngagementPermitLegalStakeXpath}
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementPermitLegatStakeSelect}    40 seconds
    Click Element                       ${EngagementPermitLegatStakeSelect}



    # Capture Granting Authority


    Wait Until Element Is Visible       ${EngagementPermitGrantingXpath}    40 seconds
    Scroll Element Into View            ${EngagementPermitGrantingXpath}
    Click Element                       ${EngagementPermitGrantingXpath}
    Wait Until Element Is Visible       ${EngagementPermitGrantingSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementPermitGrantingSearch}    a
    Press Keys                          ${EngagementPermitGrantingSearch}    ENTER
    #Wait Until Element Is Visible       ${EngagementCommitSelectXpath}    40 seconds
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EngagementPermitGrantingSelect}    40 seconds
    Click Element                       ${EngagementPermitGrantingSelect}
    #Click Element                       ${EngagementPermitGrantingXpath}
    Sleep    2 seconds


    # Capture Inspecting Authority
    Wait Until Element Is Visible       ${EngagementPermitInsAuthXpath}    40 seconds
    Scroll Element Into View            ${EngagementPermitInsAuthXpath}
    Click Element                       ${EngagementPermitInsAuthXpath}
    Wait Until Element Is Visible       ${EngagementPermitInsAuthSearch}    40 seconds
    Sleep    1 seconds
    Input Text                          ${EngagementPermitInsAuthSearch}    a
    Press Keys                          ${EngagementPermitInsAuthSearch}    ENTER
    #Wait Until Element Is Visible       ${EngagementCommitSelectXpath}    40 seconds
    Sleep    1 seconds
    Wait Until Element Is Visible       ${EngagementPermitInsAuthSelect}    40 seconds
    Click Element                       ${EngagementPermitInsAuthSelect}
    #Click Element                       ${EngagementPermitGrantingXpath}
    Sleep    2 seconds

    # Save Permit
    Wait Until Element Is Visible       ${EngagementPermitSaveID}    40 seconds
    Click Element                       ${EngagementPermitSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds










    #Close Window and return to main window
    Sleep    2 seconds
    Close Window

#************************************************* Details Tab *********************************************************

    Sleep               5
    Switch Window       MAIN
    Select Frame        ${iFrame}

# Capture Permits
    Wait Until Element Is Visible       ${EngagementManagementPermitDrp}    40 seconds
    Click Element                       ${EngagementManagementPermitDrp}
    Wait Until Element Is Visible       ${EngagementManagementPermitInput}    40 seconds
    Sleep    2 seconds
    Input Text                          ${EngagementManagementPermitInput}    Auto Test ${CurrentDate}
    Press Keys                          ${EngagementManagementPermitInput}    ENTER
    Wait Until Element Is Visible       ${EngagementPermitSelectAll}    40 seconds
    Sleep    1 seconds
    Click Element                       ${EngagementPermitSelectAll}
    Click Element                       ${EngagementManagementPermitDrp}
    Sleep    2 seconds

     # Click Save
    Wait Until Element Is Visible       ${EngagementManagmentSaveID}    40 seconds
    Click Element                       ${EngagementManagmentSaveID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds



   # validate the process is on planned
    Wait Until Element Is Visible       ${EngagementManagementProcessPlanCo}    40 seconds
    Element Should be Visible           ${EngagementManagementProcessPlanCo}
