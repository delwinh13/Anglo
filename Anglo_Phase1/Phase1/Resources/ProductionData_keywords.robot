*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Resource     ../Repository/Common.robot
Resource  ../Repository/ProductionData.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\ProductionData\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    Sleep     10 seconds
    Screenshot    Home page

Navigate to Production Data
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${Eco2ManXpath}
    Click Element                        ${Eco2ManXpath}
    Sleep     2 seconds
    Wait Until Element Is Visible        ${ProductionDatabtn}    30 seconds
    Screenshot    Eco 2 Man tab clicked
    Click Element                        ${ProductionDatabtn}
    Sleep     2 seconds
    Wait Until Element Is Visible        ${Addbtn}    30 seconds
    Screenshot    Navigated to Production Data

FR1 - Capture Production Data
    Click Element                        ${Addbtn}
    Sleep     2 seconds
    Screenshot    Add button clicked
    Wait Until Element Is Visible        ${ProcessFlowbtn}
    CLick Element                        ${ProcessFlowbtn}
    Sleep     2 seconds
    Screenshot    Process flow utton clicked
    Click Element                        ${BusinessType}
    Sleep     2 seconds
    Click Element                        ${BusinessTypeBaseMetals}
    Sleep     2 seconds
    Click Element                        ${BaseMetalsChile}
    Sleep     2 seconds
    Click Element                        ${BaseMetalsCollahuasi}
    Sleep     2 seconds
    Click Element                        ${MonitoringType}
    Sleep     5 seconds
    Click Element                        ${EnergyandCarbon}
    Sleep     5 seconds
    Click Element                        ${MonitoringType}
    Sleep    2 seconds
    Click Element                        ${Monthdrpdwn}
    Sleep     2 seconds
    Click Element                        ${FebMonthdrpdwn}
    Sleep     2 seconds
    Click Element                        ${Yeardrpdwn}
    Sleep     2 seconds
    Click Element                        ${2017Yeardrpdwn}
    Sleep     2 seconds
    Screenshot    Info selected
    Click Element                        ${SaveToContinuebtn}
    Screenshot    Save in progress
    Sleep     15 seconds
    Screenshot    FR1 Record saved

FR2 - Capture Mineral Produced
    Wait Until Element Is Visible        ${EditAddbtn}     20 seconds
    Click Element                        ${EditAddbtn}
    Wait Until Element Is Visible        ${ProductIndicatorslct}     20 seconds
    Screenshot    Edit add button clicked
    Click Element                        ${ProductIndicatorslct}
    Sleep     2 seconds
    Click Element                        ${Aggregatesdrpdwn}
    input text                           ${QtyofMineralProducedtxtbx}      30
    Click Element                        ${QtyofMineralUOMtxtbx}
    Sleep     2 seconds
    Click Element                        ${UOMEnergyandCardbon}
    Screenshot    Captured mineral produced
    Click Element                        ${Savebtn}
    Sleep     10 seconds
    Screenshot    Mineral Record saved

FR3 - Edit Production Data
    Wait Until Element Is Visible        ${ProcessFlowbtn}
    Click Element                        ${Monthdrpdwn}
    Sleep     2 seconds
    Click Element                        ${AprilMonthdrpdwn}
    Sleep     2 seconds
    Screenshot    Info edited
    Click Element                        ${ProductionDataSavebtn}
    Screenshot    Saving
    Wait Until Element Is Visible        ${RecordSaved}     20 seconds
    Screenshot    Edited record saved