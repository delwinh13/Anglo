*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Resource    ../Resources/vars.robot
Resource    AuditLauncher_keywords.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\AuditLauncher\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login

FR1 - Add Internal Audit Launcher
    Log To Console    Starting FR1 - Add Internal Audit Launcher

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds
    Wait Until Element Is Visible    ${AuditLauncherXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherXpath}
    Wait Until Element Is Visible    ${AuditLauncherAddButtonID}    40 seconds
    Click Element                    ${AuditLauncherAddButtonID}
    Screenshot    FR1 Add button Clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    Wait Until Element Is Visible    ${AuditLauncherTitleXpath}    40 seconds
    Click Element                    ${AuditLauncherTitleXpath}
    Input Text                       ${AuditLauncherTitleXpath}    Auto Test
    Wait Until Element Is Visible    ${AuditLauncherTypeDdID}    40 seconds
    Click Element                    ${AuditLauncherTypeDdID}
    Wait Until Element Is Visible    ${AuditLauncherTypeInternalXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherTypeInternalXpath}
    Click Element                    ${AuditLauncherTypeDdID}
    Element Should Not Be Visible    ${AuditLauncherStakeholderDdID}
    Wait Until Element Is Visible    ${AuditLauncherProtocolDdID}    40 seconds
    Click Element                    ${AuditLauncherProtocolDdID}
    Wait Until Element Is Visible    ${AuditLauncherProtocolExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherProtocolExpandXpath}
    Wait Until Element Is Visible    ${AuditLauncherProtocolOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherProtocolOptionID}
    Sleep    1 seconds
    Click Element                    ${AuditLauncherSaveBtnID}
    Sleep    1 seconds
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditLauncherSiteManagementID}    40 seconds
    Element Should Be Visible        ${AuditLauncherSiteManagementID}
    Close Browser

FR1 - Add Supplier Audit Launcher
    Log To Console    Starting FR1 - Add Supplier Audit Launcher
    
    Launch IsoMetrix Application
    Login with Valid Credentials

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds

    Wait Until Element Is Visible    ${AuditLauncherXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherXpath}
    Wait Until Element Is Visible    ${AuditLauncherAddButtonID}    40 seconds
    Click Element                    ${AuditLauncherAddButtonID}
    Screenshot    FR1 Add button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    Wait Until Element Is Visible    ${AuditLauncherTitleXpath}    40 seconds
    Click Element                    ${AuditLauncherTitleXpath}
    Input Text                       ${AuditLauncherTitleXpath}    Auto Test
    Wait Until Element Is Visible    ${AuditLauncherTypeDdID}    40 seconds
    Click Element                    ${AuditLauncherTypeDdID}
    Wait Until Element Is Visible    ${AuditLauncherTypeSupplierXpath}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditLauncherTypeSupplierXpath}
    Click Element                    ${AuditLauncherTypeDdID}
    Wait Until Element Is Visible    ${AuditLauncherStakeholderDdID}    40 seconds
    Click Element                    ${AuditLauncherStakeholderDdID}
    Wait Until Element Is Visible    ${AuditLauncherStakeholderSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${AuditLauncherStakeholderSrchXpath}    A Van
    Press Keys                       ${AuditLauncherStakeholderSrchXpath}    ENTER
    Wait Until Element Is Visible    ${AuditLauncherStakeholderOptionID}    40 seconds
    Sleep    5 seconds
    Click Element                    ${AuditLauncherStakeholderOptionID}
    Wait Until Element Is Visible    ${AuditLauncherProtocolDdID}    40 seconds
    Click Element                    ${AuditLauncherProtocolDdID}
    Wait Until Element Is Visible    ${AuditLauncherProtocolExpandXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherProtocolExpandXpath}
    Wait Until Element Is Visible    ${AuditLauncherProtocolOptionID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditLauncherProtocolOptionID}
    Sleep    2 seconds
    Click Element                    ${AuditLauncherSaveBtnID}
    Sleep    3 seconds
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditLauncherSiteManagementID}    40 seconds
    Element Should Be Visible        ${AuditLauncherSiteManagementID}
    Close Browser

FR1 - Add External Audit Launcher
    Log To Console    Starting FR1 - Add External Audit Launcher
    
    Launch IsoMetrix Application
    Login with Valid Credentials
    
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    Wait Until Element Is Visible    ${AuditLauncherXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherXpath}
    Wait Until Element Is Visible    ${AuditLauncherAddButtonID}    40 seconds
    Click Element                    ${AuditLauncherAddButtonID}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    Wait Until Element Is Visible    ${AuditLauncherTitleXpath}    40 seconds
    Click Element                    ${AuditLauncherTitleXpath}
    Input Text                       ${AuditLauncherTitleXpath}    Auto Test
    Wait Until Element Is Visible    ${AuditLauncherTypeDdID}    40 seconds
    Click Element                    ${AuditLauncherTypeDdID}
    Wait Until Element Is Visible    ${AuditLauncherTypeExternalXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherTypeExternalXpath}
    Click Element                    ${AuditLauncherTypeDdID}
    Element Should Not Be Visible    ${AuditLauncherProtocolDdID}
    Sleep    1 seconds
    Click Element                    ${AuditLauncherSaveBtnID}
    Sleep    2 seconds
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditLauncherSiteManagementID}    40 seconds
    Element Should Be Visible        ${AuditLauncherSiteManagementID}

    #Get the record number
    ${RecordNumberFieldText}    Get Text      ${RecordNumberFieldXpath}
    ${RecordNumber}             Fetch From Right    ${RecordNumberFieldText}    Record #
    Set Global Variable    ${RecordNumber}
    Log To Console    Record Number is ${RecordNumber}

    # Close Browser

FR2 - Add Site Management
    Log To Console    Starting FR2 - Add Site Management
    
    Sleep    5 seconds
    Wait Until Element Is Visible    ${AuditLauncherSiteMngAddBtnXpath}    40 seconds
    Click Element                    ${AuditLauncherSiteMngAddBtnXpath}
    Wait Until Element Is Visible    ${AuditSiteMngBussinesUnitID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngBussinesUnitID}
    Wait Until Element Is Visible    ${AuditSiteMngBussinesUnitSrchXpath}    40 seconds
    Input Text                       ${AuditSiteMngBussinesUnitSrchXpath}    Anglo
    Press Keys                       ${AuditSiteMngBussinesUnitSrchXpath}    ENTER
    Wait Until Element Is Visible    ${AuditSiteMngBussUnitExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngBussUnitExpand1Xpath}
    Wait Until Element Is Visible    ${AuditSiteMngBussUnitExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngBussUnitExpand2Xpath}
    Wait Until Element Is Visible    ${AuditSiteMngBussUnitExpand3Xpath}    40 seconds
    Sleep    1
    Click Element                    ${AuditSiteMngBussUnitExpand3Xpath}
    Wait Until Element Is Visible    ${AuditSiteMngBussinesUnitOptionID}
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngBussinesUnitOptionID}
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngFuncLocationDdID}
    Wait Until Element Is Visible    ${AuditSiteMngFuncLocationOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngFuncLocationOptionID}
    Wait Until Element Is Visible    ${AuditSiteMngAuitMngDdID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngAuitMngDdID}
    Wait Until Element Is Visible    ${AuditSiteMngAuditMngSearchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${AuditSiteMngAuditMngSearchXpath}    AutoTest
    Press Keys                       ${AuditSiteMngAuditMngSearchXpath}    ENTER
    Wait Until Element Is Visible    ${AuditSiteMngAuditMngSearchReultID}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditSiteMngAuditMngSearchReultID}
    Wait Until Element Is Visible    ${AuditSiteMngYearDdID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngYearDdID}
    Wait Until Element Is Visible    ${AuditSiteMngYearOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngYearOptionXpath}
    Screenshot    FR2 Info seleced
    Wait Until Element Is Visible    ${AuditSiteMngSaveBtnXpath}    40 seconds
    Sleep    2 seconds
    Click Element                    ${AuditSiteMngSaveBtnXpath}
    Screenshot    FR2 Save button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    10 seconds
    Close Browser

FR3 - Edit Audit Launcher
    Log To Console    Starting FR3 - Edit Audit Launcher

    Launch IsoMetrix Application
    Login with Valid Credentials
    
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    Wait Until Element Is Visible    ${AuditLauncherXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditLauncherXpath}
    Screenshot    FR3 Audit launcher clicked
    # Search for records
    Wait Until Element Is Visible    ${AuditLaunchSrchNumberXpath}    40 seconds
    Sleep    3 seconds
    Click Element                    ${AuditLaunchSrchNumberXpath}
    Input Text                       ${AuditLaunchSrchNumberXpath}    ${RecordNumber}
    Wait Until Element Is Visible    ${AuditLaunchSrchBtnID}    40 seconds
    Click Element                    ${AuditLaunchSrchBtnID}
    Wait Until Element Is Visible    ${AuditLaunchSrchResultXpath}    40 seconds
    Screenshot    Record searched
    Sleep    1 seconds
    Click Element                    ${AuditLaunchSrchResultXpath}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Wait Until Element Is Visible    ${AuditLauncherTitleXpath}
    Sleep    5 seconds
    Click Element                    ${AuditLauncherTitleXpath}
    Input Text                       ${AuditLauncherTitleXpath}    Auto Test Updated
    Sleep    1 seconds
    Screenshot    FR4 info saved
    Click Element                    ${AuditLauncherSaveBtnID}
    Screenshot    FR4 Save button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    ${AuditTitle}=    Get Value       ${AuditLauncherTitleXpath}
    Should Be Equal    ${AuditTitle}    Auto Test Updated

FR5 - Edit Site Management
    Sleep    5 seconds
    Wait Until Element Is Visible    ${AuditSiteMngYearDdID}    40 seconds
    Click Element                    ${AuditSiteMngYearDdID}
    Wait Until Element Is Visible    ${AuditSiteMngYearOption2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${AuditSiteMngYearOption2Xpath}
    Sleep    1 seconds
    Screenshot    FR5 Record edited
    Click Element                    ${AuditSiteMngSaveBtnXpath}
    Screenshot    FR5 save button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    Sleep    7 seconds