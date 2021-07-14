*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/FunctionalGroups_var.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Functional Groups\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1- Add Functional Group
    Log To Console    Starting FR1 - Add Functional Group
    # Click AngloMaintenanceButton
    Mouse over                             ${AngloMaintenanceButtonXpath}
    Wait Until Page Contains Element       ${AngloMaintanceInterfaceXpath}    40 seconds
    Click Element                          ${AngloMaintanceInterfaceXpath}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    # Click Functional Groups Button
    Click Element                        ${FunctionalGroupModuleXpath}
    Sleep    3 seconds
    Screenshot  Navigate to Functional Groups Module
    Wait Until Element Is Visible        ${FunctionalAddButtonXpath}    40 seconds
    Click Element                        ${FunctionalAddButtonXpath}
    Sleep    3 seconds
    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${ProcessFlowXpath}    40 seconds
    Click Element                       ${ProcessFlowXpath}
    #validate process is on AddPhase
    Wait Until Element Is Visible         ${AddPhaseXpath}    40 seconds
    Element Should Be Visible             ${AddPhaseXpath}
    Sleep    4 seconds
    Screenshot   Functional Groups opens in the Add phase
    Wait Until Element Is Visible        ${FunctionalBUDrpXpath}    40 seconds
    Click Element                        ${FunctionalBUDrpXpath}
    Sleep    3 seconds
    Wait Until Element Is Visible        ${FunctionalBUDrpXpath}    40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueBulkXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${FunctionalBUDrpValueBulkXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${FunctionalBUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${FunctionalBUDrpValueSishenXpath}
    Input Text                          ${FunctionalGroupNameXpath}  test
    Input Text                          ${FunctionalGroupDescriptionXpath}  test
    Click Element                       ${FunctioanlPermitRectrictionGroupXpath}
    Sleep    3 seconds
    Click Element                       ${FunctioanlPermitRectrictionGroupDrpNoXpath}
    Click Element                       ${ButtonSaveXpath}
    Sleep    3 seconds
    #validate process is on EditPhase
    Wait Until Element Is Visible         ${EditPhaseXpath}    40 seconds
    Element Should Be Visible             ${EditPhaseXpath}
    Screenshot                        Functional Groups editable grid is displayed
    Click Element                       ${FunctioanlPermitRectrictionGroupXpath}
    Sleep    3 seconds
    Click Element                       ${FunctioanlPermitRectrictionGroupDrpYesXpath}
    Sleep    4 seconds
    Screenshot               Functional location and Administrative owner drop downs are displayed.
    Sleep    3 seconds
    MOUSE OVER                       ${FunctionalLocationDrpXpath}
    Sleep    2 seconds
    Click Element                    ${FunctionalLocationDrpXpath}
    Sleep    50 seconds
    Wait Until Element Is Visible     ${FunctionalLocationDrpValueXpath}
    Sleep    3 seconds
    Click Element                     ${FunctionalLocationDrpValueXpath}
    Sleep    3 seconds
    MOUSE OVER                        ${AdministrativeDrpXpath}
    Click Element                     ${AdministrativeDrpXpath}
    Sleep    3 seconds
    Input Text                       ${Administrativevalue}   AutoTest
    Sleep    3 seconds
    Press Keys                       ${Administrativevalue}    ENTER
    Sleep    30 seconds
    Click Element                    ${AdministrativeAutoTestvalue}
    Click Element                    ${ButtonSaveXpath}

FR2- Add One or More Users
    Sleep       20 seconds
    Wait Until Element Is Visible     ${AddGroupMembersXpath}
    Click Element                     ${AddGroupMembersXpath}
    MOUSE OVER                        ${GroupMembersDropwnXpath}
    Click Element                     ${GroupMembersDropwnXpath}
    Sleep    3 seconds
    Input Text                       ${GroupMembersDropwnValueXpath}   AutoTest
    Sleep    3 seconds
    Press Keys                       ${GroupMembersDropwnValueXpath}    ENTER
    Sleep    20 seconds
    Click Element                    ${GroupMembersDropwnValueSelectedXpath}
    Click Element                    ${SaveButtonXpath}
    Sleep    20 seconds
    Click Element                     ${InlineEditorXpath}
    Sleep    3 seconds
    Click Element                    ${AddGroupMembersXpath}
    Sleep    3 seconds
     # Check on Process Flow
     Sleep    4 seconds
    Wait Until Element Is Visible       ${GroupMembersProcessFlowXpath}    40 seconds
    Click Element                       ${GroupMembersProcessFlowXpath}
#validate process is on AddPhase
    Wait Until Element Is Visible       ${GroupMembersAddFlowXpath}    40 seconds
    Element Should Be Visible           ${GroupMembersAddFlowXpath}
    Screenshot    Group Members opens in the Add phase
    MOUSE OVER                        ${GroupMembersDropwnXpath}
    Click Element                     ${GroupMembersDropwnXpath}
    Sleep    3 seconds
    Input Text                       ${GroupMembersDropwnValueXpath}   AutoTest
    Sleep    3 seconds
    Press Keys                       ${GroupMembersDropwnValueXpath}    ENTER
    Sleep    20 seconds
    Click Element                    ${GroupMembersDropwnValueSelectedXpath}
    Sleep    3 seconds
    Click Element                    ${UserSaveXpath}
    Sleep    3 seconds
    #validate process is on EditPhase
    Wait Until Element Is Visible       ${GroupMembersEditFlowXpath}    40 seconds
    Element Should Be Visible           ${GroupMembersEditFlowXpath}
    Screenshot                        Group Members editable grid is displayed

    #Download report
    Sleep               20
    Switch Window       MAIN
    Select Frame        ${iFrame}


