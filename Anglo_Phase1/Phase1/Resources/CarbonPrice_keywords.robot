*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/vars.robot
Library     DateTime
Resource  ../Resources/Common_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\CarbonPrice\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login

Navigating to Carbon Price
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${Eco2ManXpath}
    Sleep     2 seconds
    Click Element             ${MonitoringMaintenancePageId}
    Sleep     1 seconds
    scroll element into view  ${CarbonPriceXpath}
    Click Element             ${CarbonPriceXpath}
    Sleep     1 seconds
    Screenshot    Navigated to Carbon Price

FR1 - Capture Carbon Price
    click element             ${CarbonPriceAddBtnID}
    sleep     2 seconds
    Screenshot    Add Price button Clicked
    click element             ${CarbonPFlowID}
    sleep     1 seconds
    Screenshot    FR1 process Flow button clicked
    click element             ${CarbonBusinessUnitDdXpath}
    sleep     1 seconds
    click element             ${CarbonBusinessUnitXpandXpath}
    sleep     1 seconds
    click element             ${CarbonBusinessUnitXpand2Xpath}
    sleep     1 seconds
    click element             ${CarbonBusinessUnitSelectXpath}
    sleep     1 seconds
    click element             ${CarbonBusinessUnitDdXpath}
    sleep     1 seconds
    click element             ${CEmissionSourceDdXpath}
    sleep     1 seconds
    click element             ${CEmissionSourceDdXpandXpath}
    sleep     1 seconds
    click element             ${CEmissionSourceDdXpand2Xpath}
    sleep     1 seconds
    click element             ${CEmissionSourceDdSelectXpath}
    sleep     1 seconds
    click element             ${CEmissionSourceDdXpath}
    sleep     1 seconds
    input text                ${CarbonPriceNumberFieldXpath}      30
    sleep     1 seconds
    input text                ${CarbonStartDateXpath}      22-01-2021
    sleep     1 seconds
    Screenshot    FR1 Data entered
    click element             ${CarbonSaveBtnID}
    Screenshot    FR1 save button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds
    sleep     10 seconds

FR2 - Edit Carbon Price
    input text                ${CarbonPriceNumberFieldXpath}      350
    sleep     1 seconds
    Screenshot    FR2 Carbon price edited
    click element             ${CarbonSaveBtnID}
    Screenshot    FR2 Save button clicked
    sleep     10 seconds