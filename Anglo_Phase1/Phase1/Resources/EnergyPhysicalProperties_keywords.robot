*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\EnergyPhysicalProperties\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    Sleep     5 seconds
    Screenshot    Home page

Navigate To Energy Physical Properties
    Log To Console    Navigate To Energy Physical Properties
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible       ${Eco2ManXpath}   50 seconds
    Click Element             ${Eco2ManXpath}
    Sleep     2 seconds
    Screenshot    Navigated to Eco 2 Man
    Click Element             ${MonitoringMaintenancePageId}
    Sleep     1 seconds
    Screenshot    Navigated to Monitoring Maintenance page
    scroll element into view  ${EnergyPhysicalPropertiesXpath}
    Click Element             ${EnergyPhysicalPropertiesXpath}
    Sleep     1 seconds
    Screenshot    Navigated to Energy Physical Properties

FR1 - Capture Energy Physical Properties
    Log To Console    FR1 - Capture Energy Physical Properties
    click element             ${EPPAddBtnID}
    sleep     2 seconds
    Screenshot    FR1 Add button clicked
    click element             ${EPPPFlowBtnID}
    sleep     1 seconds
    Screenshot    FR! Process Flow button clicked
    click element             ${EPPBusinessUnitDdXpath}
    sleep     1 seconds
    click element             ${EPPBusinessUnitDdXpandXpath}
    sleep     1 seconds
    click element             ${EPPBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    click element             ${EPPBusinessUnitDdSelectID}
    sleep     1 seconds
    click element             ${EPPEmissionSourceDdXpath}
    sleep     1 seconds
    click element             ${EPPEmissionSourceDdXpandXpath}
    sleep     1 seconds
    click element             ${EPPEmissionSourceDdXpand2Xpath}
    sleep     1 seconds
    click element             ${EPPEmissionSourceDdSelectID}
    sleep     1 seconds
    input text                ${EPPDensityFieldXpath}           356
    sleep     1 seconds
    click element             ${EPPDensityDdXpath}
    sleep     1 seconds
    click element             ${EPPDensityDdSelectID}
    sleep     1 seconds
    input text                ${EPPDensitySourceFieldXpath}     Tim Testing
    sleep     1 seconds
    input text                ${EPPNCVFieldXpath}               223
    sleep     1 seconds
    click element             ${EPPNCVUnitDdXpath}
    sleep     1 seconds
    click element             ${EPPNCVUnitDdSelectXpath}
    sleep     1 seconds
    input text                ${EPPNCVSourceFieldXpath}         Testing
    sleep     1 seconds
    Screenshot    FR1 recored info added
    click element             ${EPPSaveBtnXpath}
    Screenshot    FR1 Saving
    sleep     7 seconds
    Screenshot    FR1 saved

FR2 - Emission Energy Physical Properties
    Log To Console    FR2 - Emission Energy Physical Properties
    input text                ${EPPNCVSourceFieldXpath}         Testing Done!
    sleep     1 seconds
    Screenshot    FR2 Info added to recored
    click element             ${EPPSaveBtnXpath}
    Screenshot    FR2 Saving
    sleep     7 seconds
    Screenshot    FR2 Saved
