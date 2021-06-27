*** Settings ***
Library     SeleniumLibrary
Library    String
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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\UnitOfMeasure\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered
    Click Element             ${SubmitButtonid}
    sleep   7 seconds

Navigate To Unit Of Measure Module
    Log To Console    Navigate To Unit Of Measure Module
    Wait Until Element Is Visible    ${iFrame}    40 seconds
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Screenshot    Login
    Click Element             ${EnvSustainabilityXpath}
    Sleep     2 seconds
    Screenshot    Environment sustainability clicked
    Click Element             ${EPMaintenanceID}
    Sleep     2 seconds
    Screenshot   EP Maintenance Clicked
    Click Element             ${UnitOfMeasureID}
    Sleep     1 seconds
    Screenshot    Naviagted to Unit of measure
    Click Element             ${AddButtonID}
    Sleep     2 seconds
    Screenshot    Add button clicked

FR1 - Capture Unit Of Measure
    Log To Console    Capture Unit Of Measure
    Sleep     1 seconds
    Click Element             ${PFlowBtnID}
    Sleep     1 seconds
    Screenshot    Process flow button clicked
    Click Element             ${ComponentDdID}
    Sleep     2 seconds
    Click Element             ${ComponentDdSelectID}
    Sleep     1 seconds
    Click Element             ${SaveBtnID}
    Sleep     5 seconds
    Screenshot    Save button clicked

FR2 - Measure Unit
    Log To Console    Measure Unit
    Click Element             ${AddMeasureUnitBtnID}
    Sleep     3 seconds
    input text                ${UnitOfMeasureTxtFieldXpath}     AutoTest
    Sleep     3 seconds
    Click Element             ${UnitOfMeasureLabelXpath}
    Screenshot    Measure Unit info added
    Sleep     2 seconds
    Click Element             ${UnitOfMeasureSaveBtnID}
    Screenshot    FR2 Save button clicked in progres
    Sleep     5 seconds
    Screenshot    FR2 Save button clicked

FR3 - Edit Measure Unit
    Log To Console    Edit Measure Unit
    Sleep     5 seconds
    Click Element             ${ComponentDdID}
    Sleep     2 seconds
    Click Element             ${ComponentDdSelect2ID}
    Screenshot    Unit of measure edited
    Sleep     1 seconds
    Click Element             ${SaveBtnID}
    Screenshot    Edit Save button clicked in progress
    Sleep     5 seconds
    Screenshot    Edit Save button clicked