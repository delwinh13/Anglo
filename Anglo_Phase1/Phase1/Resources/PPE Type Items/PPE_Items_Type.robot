*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/PPETypeItems.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\PPE Type Library\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      10 seconds

FR1 - Capture PPE Type Library
    Log To Console    Starting FR1 - Capture PPE Type Library
    # Click AngloMaintenanceButton
        Mouse over                          ${AngloMainMenuXpath}
    Wait Until Page Contains Element       ${AngloMaintanceInterfaceXpath}    20 seconds
    Click Element                          ${AngloMaintanceInterfaceXpath}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    #cLICK PPE Type Library
    CLICK ELEMENT                        ${PPETypeLibraryXpath}
    Sleep     10 seconds
    SCREENSHOT      PPE Type Library search page opens
    CLICK ELEMENT                       ${PPETypeLibraryADDButtonXpath}
    Sleep     10 seconds
    SCREENSHOT    PPE Type Library add page opens showing the PPE Type and Supporting Documents tabs
    # Check on Process Flow
    CLICK ELEMENT      ${ProcessFlowButtonXpath}
    #validate process is on AddPhase
  Wait Until Element Is Visible         ${ProcessFlowAddPhaseXpath}    40 seconds
   Element Should Be Visible             ${ProcessFlowAddPhaseXpath}
    Screenshot   PPE Type Library in the Add phase
    Wait Until Element Is Visible        ${BusinessUnitDrpDwnXpath}    40 seconds
    Click Element                        ${BusinessUnitDrpDwnXpath}
    Sleep    3 seconds
    Wait Until Element Is Visible        ${BUDrpValueXpath}    40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueXpath}
    Wait Until Element Is Visible       ${BUDrpValueBulkXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${BUDrpValueBulkXpath}
    Wait Until Element Is Visible       ${BUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${BUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueSishenXpath}
    Sleep    3 seconds
    CLICK ELEMENT                  ${BUDrpValueClickXpath}
    Sleep    3 seconds
    INPUT TEXT                       ${PPETypeXpath}    Test
    Sleep    3 seconds
    CLICK ELEMENT                      ${PPETypeButtonSaveXpath}
    Sleep    10 seconds
    SCREENSHOT                    Record is saved and PPE Items tab is displayed
    # Check on Process Flow
    #validate process is on EditPhase
  Wait Until Element Is Visible         ${ProcessFlowEditPhaseXpath}    40 seconds
   Element Should Be Visible             ${ProcessFlowEditPhaseXpath}
   SCREENSHOT       PPE Type Library in the Add phase
   # Click Supporting Documents Tab
  WAIT UNTIL ELEMENT IS VISIBLE                      ${SupportingDocXpath}                      40 seconds
  Click Element                                      ${SupportingDocXpath}
#Click Supporting Document Link
  Wait Until element Is visible                               ${SupportingDocLinkDoc}      40 seconds
   Click Element                                               ${SupportingDocLinkDoc}
    Sleep    10 seconds
# change to pop-up frame
  Unselect frame

# validate pop up  name
  Sleep     10 seconds
  Element Should Be Visible            ${SupportingDocPopName}                                 40 seconds

#Enter URL
  Click Element                       ${SupportingDocAddLink}
  Clear Element Text                  ${SupportingDocAddLink}
  Input Text                          ${SupportingDocAddLink}        https://www.isometrix.com/
  Sleep     10 seconds

# Enter Title
  Click Element                        ${SupportingDocAddTitle}
  Input Text                          ${SupportingDocAddTitle}             AutoTest

# Add Link to Document Button
  Wait Until Element Is Visible       ${SupportingDocAddBtn}                10 seconds
  Click Element                        ${SupportingDocAddBtn}
  Sleep     3 seconds
  Select Frame                            ${iFrame}
  Wait Until Element Is Visible       ${SupportingDocSave}                40 seconds
  Click Element                       ${SupportingDocSave}
  Sleep     5 seconds
FR2 -Capture PPE Items
    Log To Console    Starting FR2 - Capture PPE Items
    CLICK ELEMENT   ${PPEItemsXpath}
    Sleep     3 seconds
    SCREENSHOT       	PPE Items editable grid is displayed
       Sleep     3 seconds
    CLICK ELEMENT     ${InlineEditorXpath}
    Sleep     3 seconds
    CLICK ELEMENT      ${PPEAddButtonXpath}
    Sleep     3 seconds
    SCREENSHOT  	A new line opens in the PPE Items editable grid
    # Check on Process Flow
    CLICK ELEMENT      ${ProcessFlowXpath}
    #validate process is on AddPhase
  Wait Until Element Is Visible         ${PPEProcessFlowAddPhaseXpath}    40 seconds
   Element Should Be Visible             ${PPEProcessFlowAddPhaseXpath}
    Screenshot   PPE Items in the Add phase
    INPUT TEXT     ${PPEXpath}     Test
    Sleep     3 seconds
    CLICK ELEMENT   ${PPETypeSaveXpath}
    Sleep     10 seconds
     #validate process is on EditPhase
  Wait Until Element Is Visible         ${PPEProcessFlowEditPhaseXpath}    40 seconds
   Element Should Be Visible             ${PPEProcessFlowEditPhaseXpath}
   SCREENSHOT  PPE Items in the Edit phase











