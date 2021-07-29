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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\EmissionLinking\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep  7 seconds
    Screenshot    Home page

Navigate To Emission Linking
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${Eco2ManXpath}
    Sleep     2 seconds
    Screenshot    Navigate to Eco2Man
    Click Element             ${MonitoringMaintenancePageId}
    Sleep     1 seconds
    Screenshot    Navigate to Monitoring Maintenance
    scroll element into view  ${EmissionLinkingXpath}
    Click Element             ${EmissionLinkingXpath}
    Sleep     3 seconds
    Screenshot    Emission linking Tab clicked

FR1 - Capture Emission Linking
    click element             ${EmissionLinkingAddBtnID}
    sleep     2 seconds
    Screenshot    FR1 add button clicked
    click element             ${EmissinLinkingPFlowID}
    sleep     1 seconds
    Screenshot    FR1 Process flow button clicked
    click element             ${EmissionBusinessUnitDdXpath}
    sleep     1 seconds
    click element             ${EmissionBusinessUnitDdXpandXpath}
    sleep     1 seconds
    click element             ${EmissionBusinessUnitDdXpand2Xpath}
    sleep     1 seconds
    click element             ${EmissionBusinessUnitDdSelectID}
    sleep     1 seconds
    click element             ${EmissionFactorDBDdXpath}
    sleep     1 seconds
    click element             ${EmissionFactorDBDdSelectID}
    sleep     1 seconds
    Screenshot    FR1 info selected
    click element             ${EmissionLinkingSaveBtnID}
    sleep     7 seconds
    Screenshot    FR1 save button clicked

FR2 - Emission Linking Values Replicated
     Click Element             ${EmissionLinkingValuesAddBtnID}
     Sleep     5 seconds
     Screenshot    FR2 Emission Linking Values Add button clicked
     Click Element             ${EmissionLinkingValuesPFlowID}
     Sleep     1 seconds
     Screenshot    FR2 Emission Linking Values Process flow button clicked
     Click Element             ${EmissionLinkingSourceDdXpath}
     Click Element             ${EmissionLinkingSourceDdXpandXpath}
     Click Element             ${EmissionLinkingSourceDdSelectID}
     Sleep     1 seconds
     Click Element             ${YearOfComplianceDdXpath}
     Sleep     1 seconds
     Click Element             ${YearOfComplianceDdSelectID}
     Sleep     1 seconds
     input text                ${CO2eFactorNumberFieldXpath}        467
     Sleep     1 seconds
     input text                ${CO2FactorNumberFieldXpath}         882
     Sleep     1 seconds
     input text                ${CH4FactorNumberFieldXpath}         223
     Sleep     1 seconds
     input text                ${N2OFactorNumberFieldXpath}         767
     Sleep     1 seconds
     Screenshot    FR2 Emission Linking Values Information added
     #Click Element             ${CO2eFactorUnitDdXpath}
     #Sleep     1 seconds
     #Click Element             ${CO2eFactorUnitDdSelectID}
     #Sleep     1 seconds
     #Click Element             ${CO2FactorUnitDdXpath}
     #Sleep     1 seconds
     #Click Element             ${CO2FactorUnitDdSelectXpath}
     #Sleep     1 seconds
     #Click Element             ${CH4FactorUnitDdXpath}
     #Sleep     1 seconds
     #Click Element             ${CH4FactorUnitDdSelectXpath}
     #Sleep     1 seconds
     #Click Element             ${N2OFactorUnitDdXpath}
     #Sleep     1 seconds
     #Click Element             ${N2OFactorUnitDdSelectXpath}
     #Sleep     1 seconds
     #Click Element             ${DefaultEmissionFactorBoxXpath}
     Sleep     1 seconds
     input text                ${CalculationsTxtBoxXpath}           22635
     Sleep     1 seconds
     Screenshot    FR2 Emission Linking Values Info added
     Click Element             ${EmissionLinkingSaveBtnXpath}
     Sleep     7 seconds
     Click Element             ${EmissionLinkingCloseBtnXpath}
     Sleep     7 seconds
     Screenshot    FR2 Save button clicked

FR3 - Edit Emission Linking
    Log To Console    FR3 - Edit Emission Linking
    click element             ${EmissionFactorDBDdXpath}
    sleep     1 seconds
    click element             ${EmissionFactorDbSelect2ID}
    sleep     1 seconds
    Screenshot    FR3 record info edited
    click element             ${EmissionLinkingSaveBtnID}
    Screenshot    FR3 save button clicked in progress
    sleep     7 seconds
    Screenshot    FR3 save button clicked
