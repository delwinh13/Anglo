*** Settings ***
Library     SeleniumLibrary
Library     String
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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\EmissionFactors\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep     10 seconds
    Screenshot    Home page

Navigate To Emission Factors Maintenance
    Log To Console    Navigate To Emission Factors Maintenance
    Wait Until Element Is Visible       ${iFrame}   40 seconds
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible       ${Eco2ManXpath}  40 seconds
    Click Element             ${Eco2ManXpath}
    Sleep     2 seconds
    Wait Until Element Is Visible       ${MonitoringMaintenancePageId}  40 seconds
    Screenshot    Eco 2 man tab clicked
    Click Element             ${MonitoringMaintenancePageId}
    Sleep     3 seconds
    Screenshot   Navigation to Monitoring maintenance
    Wait Until Element Is Visible       ${EmissionFactorsXpath}  40 seconds
    Log To Console    test
    scroll element into view  ${EmissionFactorsXpath}
    Click Element             ${EmissionFactorsXpath}
    Sleep     1 seconds
    Screenshot   Navigation to Emission Factors Maintenance

FR1 - Capture Emission Factors Maintenance
    click element             ${EmissionFactorsAddBtnID}
    sleep     2 seconds
    Screenshot   Add button clicked
    click element             ${EmissionFactorsPFlowID}
    sleep     1 seconds
    Screenshot   Process flow button clicked
    click element             ${EmissionFactorsDbDDXpath}
    sleep     1 seconds
    click element             ${EmissionFactorsDbDDSelectID}
    sleep     1 seconds
    Screenshot   Emission Factors Data entered
    click element             ${EmissionFactorsSaveBtnID}
    sleep     7 seconds
    Screenshot   Emission Factors save button clicked

FR2 - Emission Factors Maintenance Values
     click element             ${EFValuesAddBtnID}
     Sleep     2 seconds
     Screenshot   Value button clicked
     Click Element             ${EFValuesPFlowID}
     Sleep     1 seconds
     Screenshot   FR2 Process Flow Button clicked
     Click Element             ${EFSourceDDXpath}
     Sleep     1 seconds
     Click Element             ${EFSourceDDXpandXpath}
     Sleep     1 seconds
     Click Element             ${EFSourceDDXpand2Xpath}
     Sleep     1 seconds
     Click Element             ${EFSourceDDSelectID}
     Sleep     1 seconds
     Click Element             ${EFYearOfComplianceDDXpath}
     Sleep     1 seconds
     click element             ${EFYearOfComplianceDDSelectID}
     Sleep     1 seconds
     input text                ${EFCO2eFieldXpath}        882
     Sleep     1 seconds
     input text                ${EFCO2FieldXpath}         223
     Sleep     1 seconds
     input text                ${EFCH4FieldXpath}         767
     Sleep     1 seconds
     input text                ${EFN2OFieldXpath}         773
     Sleep     1 seconds
     Screenshot   FR2 info entered
     #Click Element             ${EFCO2eDDXpath}
     #Sleep     1 seconds
     #Click Element             ${EFCO2eDDSelectID}
     #Sleep     1 seconds
     #Click Element             ${EFCO2DDXpath}
     #Sleep     1 seconds
     #Click Element             ${EFCO2DDSelectXpath}
     #Sleep     1 seconds
     #Click Element             ${EFCH4DDXpath}
     #Sleep     1 seconds
     #Click Element             ${EFCH4DDSelectXpath}
     #Sleep     1 seconds
     #Click Element             ${EFN2ODDXpath}
     #Sleep     1 seconds
     #Click Element             ${EFN2ODDSelectXpath}
     #Sleep     1 seconds
     #Screenshot   FR2 Data entered
     click element             ${EFSaveBtnXpath}
     Screenshot   FR2 Save button clicked
     Sleep     10 seconds
     Screenshot  FR2 Save button clicked
     Click Element             ${EFCloseBtnXpath}
     Sleep     7 seconds
     Screenshot   Emission Factors Maintenance Values page closed

FR3 - Edit Emission Facotrs Maintenance
    click element             ${EmissionFactorsDbDDXpath}
    sleep     1 seconds
    click element             ${EmissionFactorsDbDDSelect2ID}
    sleep     1 seconds
    Screenshot   Edit info
    click element             ${EmissionFactorsSaveBtnID}
    Screenshot    FR3 save button clicked
    sleep     7 seconds
    Screenshot   Emission Factors Maintenance page edited
