*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Emergency Drill Type.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Emergency Drill Types\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      10 seconds
FR1- Capture Emergency Drill Type
    Log To Console    Starting FR1 - Capture Emergency Drill Type
    # Click AngloMaintenanceButton
        Mouse over                          ${AngloMainMenuXpath}
    Wait Until Page Contains Element       ${AngloMaintanceInterfaceXpath}    20 seconds
    Click Element                          ${AngloMaintanceInterfaceXpath}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
     # Click EMERGENCY GRILL  Button
    CLICK ELEMENT                        ${EmergencyGrillTypes}
    sleep     5 seconds
    screenshot          Emergency Drill Type search page opens
    click element       ${EmergencyAddButton}
    sleep     5 seconds
    # Check on Process Flow
    Wait Until Element Is Visible       ${DataFlowxpath}  40 seconds
    click element       ${DataFlowxpath}
    sleep    3  seconds
    #validate process is on AddPhase
  Wait Until Element Is Visible         ${DataFlowAddFlow}    40 seconds
   Element Should Be Visible             ${DataFlowAddFlow}
   screenshot  Emergency Drill Type add page opens in the Add phase
   click element                           ${BusinessUnitDrpDwn}
   sleep      5 seconds
   click element                    ${BusinessUnitDrpDwnValue}
   sleep      3 seconds
   click element                    ${BusinessUnitBackLink}
   sleep      3  seconds
    input text                        ${GrillType}        test
    click element                  ${SaveButton}
    sleep    5  seconds
    #validate process is on AddPhase
  Wait Until Element Is Visible         ${DataFlowEditFlow}    40 seconds
   Element Should Be Visible             ${DataFlowEditFlow}
   screenshot       Emgerency Grill Tyep in Edit Phase























