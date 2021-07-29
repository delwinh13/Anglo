*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/PPE Register.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\PPE Register\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      10 seconds

   #FR1- Capture PPE Register
    Log To Console    Starting FR1 - Capture PPE Register
    # Click AngloLandingPage
    Mouse over                          ${AngloMainMenuXpath}
    sleep      3 seconds
    Wait Until Page Contains Element       ${AngloLandingXpath}    20 seconds
    Click Element                          ${AngloLandingXpath}
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    # Click PPE Register
    Wait Until Page Contains Element       ${PPERegisterModuleXpath}    20 seconds
    click element                           ${PPERegisterModuleXpath}
    Sleep     5 seconds
    screenshot  PPE Register search page opens on page
    click element                     ${PPERegisterAddButtonXpath}
    Sleep     5 seconds
    screenshot   Register and Supporting Documents tabs are displayed
     # Check on Process Flow
     CLICK ELEMENT      ${ModuleDataFlowXpath}
    #validate process is on PPE Register Logged
    Wait Until Element Is Visible         ${PPERegisterDataFlowXpath}    40 seconds
    Element Should Be Visible             ${PPERegisterDataFlowXpath}
    Screenshot   PPE Register Logged
    Wait Until Element Is Visible        ${PPEBusinessUnitXpath}    40 seconds
    Click Element                        ${PPEBusinessUnitXpath}
    Sleep    5 seconds
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
    click element                 ${IssuedByXpath}
    Sleep    3 seconds
    input text            ${IssuedByDrpDwnXpath}    Test
    Press Keys              ${IssuedByDrpDwnXpath}    ENTER
    click element          ${IssuedByDrpDwnValueXpath}
    sleep   3 seconds
    # Select DataIssued
    ${CurrentDate}                  Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${DataIssuedXpath}        ${CurrentDate}
    sleep   4 seconds
    click element                ${PersonResponsbleForXpath}
    sleep   3 seconds
    input text                ${PersonResponsbleForDrpDwnXpath}    test
    Press Keys              ${PersonResponsbleForDrpDwnXpath}    ENTER
    sleep   3 seconds
    click element           ${PersonResponsbleForDrpDwnValueXpath}
    sleep  3 seconds
    click element          ${PPERegisterSaveButtonXpath}
    sleep  10 seconds
    #validate process is on Item Issued Phase
    Wait Until Element Is Visible         ${PPERegisterItemIssuedXpath}    40 seconds
    Element Should Be Visible                        ${PPERegisterItemIssuedXpath}
    screenshot     Record automatically moves to the Items Issued Phase.
    screenshot     Items issued sub-module is displayed.
    screenshot     Status is updated to In Progress

 FR2-Capture Items Issued
      Log To Console    Starting FR2-Capture Items Issued
      sleep     3  seconds
      click element       ${ItemIssueAdd}
      sleep    3 seconds
      screenshot  A new line opens in the Items Issued editable grid
      click element       ${PPE}
      sleep    3 seconds
      click element       ${AddLinePPEDrpDown}
      sleep    3 seconds
      click element       ${PPEDrpDownValue}
      sleep    3 seconds
      click element     ${PPEDrpDownLinkValue}
      sleep    3 seconds
      click element        ${EmployeeType}
      Sleep    3 seconds
      click element     ${AddLineVister}
      sleep   3 seconds
      click element      ${AddlineNoofItems}
      input text        ${AddlineNoofItems}      1
      sleep   5 seconds
      click element    ${SaveButton}
      sleep   15 seconds
      click element      ${InlineEditorXpath}
      sleep   3 seconds
      click element  ${ItemIssueAdd}
      sleep   10 seconds
      # Check on Process Flow
      CLICK ELEMENT      ${ProcessFlow}
      #validate process is Add Phase
      Wait Until Element Is Visible         ${AddFlow}    40 seconds
      Element Should Be Visible             ${AddFlow}
      screenshot  The record is in the Add phase
      click element           ${AddEmployeeType}
      sleep   3   seconds
      click element     ${VisterXpath}
      sleep   3   seconds
      click element  ${AddPPE}
      sleep   3  seconds
      click element     ${PPEDrpDown}
      sleep   3 seconds
      WAIT UNTIL ELEMENT IS VISIBLE   ${PPEDrpDownValue}     40 seconds

      click element     ${PPEDrpDownValue}
      sleep   3 seconds
      click element  ${PPEDrpDownLinkValue}
      sleep   3  seconds
       input text     ${NoOfItemIssued}     1
       click element   ${ButtonSaved}
       #validate process is Edit Phase
       Wait Until Element Is Visible         ${Editphase}    40 seconds
       Element Should Be Visible             ${Editphase}






























