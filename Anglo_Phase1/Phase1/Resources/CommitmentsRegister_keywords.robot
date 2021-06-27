*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Set Record Variable
    ${RecordNumber1}   Return RecordNumber
    Set Global Variable   ${RecordNumber}

Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\CommitmentsRegister\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials captured
    Click Element             ${SubmitButtonid}
    Sleep     10 seconds
    Screenshot    Login

FR1 - Capture Commitments Register 
    Select Frame                     ${iFrame}
    Wait Until Element Is Visible    ${CommitmentsRegisterXpath}    10 seconds
    Click Element                    ${CommitmentsRegisterXpath}
    Wait Until Element Is Visible    ${CommitmentsRegisterAddButtonID}    10 seconds
    Screenshot    FR1 Commitments Tab clicked
    Click Element                    ${CommitmentsRegisterAddButtonID}
    Wait Until Element Is Visible    ${BusinessUnitLabelXpath}
    Screenshot    FR1 Commitments Add button clicked
    Click Element                    ${CommBusinessUnitDdID}
    Wait Until Element Is Visible    ${SearchBusinessUnitXpath}
    Click Element                    ${SearchBusinessUnitXpath}
    Input Text                       ${SearchBusinessUnitXpath}    ACP
    Sleep     3 seconds
    Click Element                    ${CommBusinessUnitDdExpandXpath}
    Sleep     2 seconds
    Click Element                    ${CommBusinessUnitDdExpand2Xpath}
    Sleep     2 seconds
    Click Element                    ${CommBusinessUnitDdExpand3Xpath}
    Sleep    2 seconds
    Click Element                    ${CommBusinessUnitDdSelectID}
    Sleep    1 seconds
    Click Element                    ${FunctionalLocationDdID}
    Sleep    1 seconds
    Click Element                    ${FunctionalLocationDdExpandXpath}
    Sleep    1 seconds
    Click Element                    ${FunctionalLocationDdSelectID}
    Sleep    1 seconds
    Click Element                    ${CommitmentRegisteritleXpath}
    Sleep    1 seconds
    Input Text                       ${CommitmentRegisteritleXpath}    Automation Test
    Sleep    1 seconds
    Click Element                    ${CommitmentRegisterOwnerDdID}
    Sleep    1 seconds
    Click Element                    ${SearchRegisterOwnerXpath}
    Sleep    1 seconds
    Input Text                       ${SearchRegisterOwnerXpath}    AutoTest
    Sleep    2 seconds
    Press Keys                       ${SearchRegisterOwnerXpath}    ENTER
    Sleep    1 seconds
    Click Element                    ${SearchUserResultXpath}
    Sleep    2 seconds
    Screenshot    FR1 Record info added
    Click Element                    ${SaveToContinueButtonXpath}
    Sleep    10 seconds
    Screenshot    FR1 Save button clicked
    Wait Until Element Is Visible    ${RecordNumberFieldXpath}    10 seconds
    Get Text      ${RecordNumberFieldXpath}
    Wait Until Element Is Visible    ${RecordNumberFieldXpath}    10 seconds
    ${RecordNumber}   Get Text    ${RecordNumberFieldXpath}
    #Fetch From Right    ${RecordNumberFieldXpath}    Record #
    #${RecordNumber}   Return Record
    #Set Global Variable   ${RecordNumber}
    Click Element                    ${CommSupportingDocID}
    Sleep    1 seconds
    Screenshot    FR1 Supporting doc clicked
    Click Element                    ${CommSupportingDocLinkXpath}
    Sleep    1 seconds
    Unselect Frame
    Click Element                    ${CommSupportingDocLinkFieldID}
    Input Text                       ${CommSupportingDocLinkFieldID}    www.google.com
    Sleep    1 seconds
    Click Element                    ${CommSupportingDocLinkFieldID}
    Input Text                       ${CommSupportingDocTileFieldID}    Google
    Sleep    1 seconds
    Screenshot    FR1 Supporting doc info captured
    Click Element                    ${CommSupportingDocAddBtnID}
    Sleep    1 seconds
    Screenshot    FR1 Supporting doc add button clicked
    Select Frame                     ${iFrame}
    Sleep    1 seconds
    #Log To Console    Record Number is ${RecordNumber}

FR2 - Capture Commitment
    Click Element                    ${CommitmentsTabID}
    Sleep    1 seconds
    Screenshot    Commitments tab clicked
    Click Element                    ${CommitmentAddButtonID}
    Wait Until Element Is Visible    ${CommOriginId}
    Sleep    1 seconds
    Screenshot    FR2 Commitments Add button clicked
    Click Element                    ${CommCategoryDdID}
    Sleep    1 seconds
    Click Element                    ${CommCategoryOptionID}
    Sleep    1 seconds
    Click Element                    ${CommTitleXpath}
    Sleep    1 seconds
    Input Text                       ${CommTitleXpath}    Auto Testing
    Sleep    1 seconds   
    Click Element                    ${CommNatureDdID}
    Sleep    1 seconds
    Click Element                    ${CommNatureOptionID}
    Sleep    1 seconds
    Click Element                    ${CommOwnerDdID}
    Sleep    1 seconds
    Click Element                    ${CommOwnerSearchXpath}
    Sleep    1 seconds
    Input Text                       ${CommOwnerSearchXpath}    AutoTest
    Sleep    2 seconds
    Press Keys                       ${CommOwnerSearchXpath}    ENTER
    Sleep    45 seconds
    Click Element                    ${CommOwnerSearchResultID}
    Sleep    1 seconds
    Click Element                    ${CommApproverDdID}
    Sleep    1 seconds
    Click Element                    ${CommApproverSearchXpath}
    Sleep    1 seconds
    Input Text                       ${CommApproverSearchXpath}    AutoTest
    Sleep    2 seconds
    Press Keys                       ${CommApproverSearchXpath}    ENTER
    Sleep    5 seconds
    Click Element                    ${CommApproverSearchResultID}
    Sleep    1 seconds
    Screenshot    FR2 Record info aptured
    Click Element                    ${CommConditionSaveButtonID}
    Sleep    5 seconds
    Screenshot    FR2 Conditions save button clicked
    Click Element                    ${CommFormID}
    Sleep    1 seconds
    Click Element                    ${CommPreviousPageXpath}
    Sleep    1 seconds

FR3 - View Conditions and Commitments from a Permit
    Click Element                    ${PermitCondtionAndCommTabID}
    Sleep    7 seconds
    Screenshot    FR3 Conditions and commitments from Permit tab clicked

FR4 - Commitments Register Status Automatically Update to Complete
    Wait Until Element Is Visible    ${CommitmentsTabID}    10 seconds
    Click Element                    ${CommitmentsTabID}
    Sleep    1 seconds
    Screenshot    FR4 Commitments Tab clicked
    Click Element                    ${CommGridRefreshLinkXpath}
    Sleep    10 seconds
    Click Element                    ${CommRegisterSelectRecordXpath}
    Sleep    7 seconds
    Click Element                    ${CommProgressFieldXpath}
    Sleep    1 seconds
    Click Element                    ${CommProgressPercentageOptionID}
    Sleep    1 seconds
    Click Element                    ${CommConditionSaveButtonID}
    Sleep    10 seconds
    Screenshot    FR4 Save button clicked
    Click Element                    ${CommConditionSearchIconLinkXpath}
    Sleep    1 seconds
    Click Element                    ${CommRecordSearchFieldXpath}
    ${RecordNumber}=   Input Text       ${CommRecordSearchFieldXpath}   [Return]
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    10 seconds
    Click Element                    ${CommSearchFilterButtonID}
    Sleep    10 seconds
    Click Element                    ${CommSearchFilterRecordXpath}
    Sleep    5 seconds
    SeleniumLibrary.Element Text Should Be           ${CommStatusDdFieldID}    Completed

FR5 - Edit Commitments Register Record
    Click Element                    ${CommSearchIconLinkXpath}
    Sleep    1 seconds
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    10 seconds
    Click Element                    ${CommSearchFilterRecordXpath2}
    Sleep    5 seconds
    Click Element                    ${CommitmentRegisteritleXpath}
    Input Text                       ${CommitmentRegisteritleXpath}     Edited
    Sleep    1 seconds
    Click Element                    ${CommSaveButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    10 seconds
    Screenshot    FR5 Save button clicked
    Click Element                    ${CommSearchIconLinkXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    10 seconds
    Click Element                    ${CommSearchFilterRecordXpath}
    Sleep    5 seconds
    ${TitleValue}=    Get Value       ${CommitmentRegisteritleXpath}
    Should Be Equal    ${TitleValue}    Edited
    Screenshot    FR5 Record searched
    #Close the browser at the end to dipose of the chromedriver process
    Close Browser
    