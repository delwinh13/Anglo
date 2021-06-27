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
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\MonitoringPoints\\${Date}

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials Entered
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep  4 seconds
    Screenshot   Home page

Navigate To Monitoring Points Module
    Select Frame              ${iFrame}
    Sleep     3 seconds
    Click Element             ${EnvSustainabilityXpath}
    Sleep     2 seconds
    Screenshot    Navigated to Enviromental Sustainability
    Click Element             ${EPMaintenanceID}
    Sleep     2 seconds
    Screenshot    Navigated to EP Maintenance
    Click Element             ${MonitoringPointsID}
    Sleep     1 seconds
    Screenshot     Monitoring point tab selected
    Wait Until Element Is Visible    ${AddButtonID}    20 seconds
    Click Element             ${AddButtonID}
    Sleep     2 seconds
    Screenshot     Add button clicked

FR1 - Capture Monitoring Points
    Log To Console    FR1 - Capture Monitoring Points
    Sleep     1 seconds
    Wait Until Element Is Visible    ${PFlowBtn2ID}    20 seconds
    Click Element             ${PFlowBtn2ID}
    Sleep     1 seconds
    Screenshot    FR1 Process flow selected
    Click Element             ${BusinessUnitDdID}
    Sleep     1 seconds
    Click Element             ${BusinessUnitDdExpandXpath}
    Sleep     1 seconds
    Click Element             ${BusinessUnitDdExpand2Xpath}
    Sleep     1 seconds
    Click Element             ${BusinessUnitDdExpand3Xpath}
    Sleep     1 seconds
    Click Element             ${BusinessUnitDdSelectID}
    Sleep     1 seconds
    Click Element             ${ParameterCompDdID}
    Sleep     2 seconds
    Click Element             ${ParameterCompSelectID}
    Sleep     1 seconds
    Click Element             ${SuppportDocumentTabID}
    Sleep     1 seconds
    Click Element             ${LinkToDocumentBtnXpath}
    Sleep     1 seconds
    unselect frame
    Sleep     1 seconds
    input text                ${URLTextFieldID}         AutoTesting
    input text                ${URLTitleTextFieldID}         Testing
    Sleep     1 seconds
    Click Element             ${URLAddBtnID}
    Sleep     1 seconds
    Select Frame              ${iFrame}
    Sleep     1 seconds
    Screenshot     Info added
    Click Element             ${MonitoringPointsSaveBtnID}
    Sleep     7 seconds
    Screenshot     FR1 Save button clicked
    Wait Until Element Is Visible    ${PointsTabID}    20 seconds
    Click Element             ${PointsTabID}

FR2 - Capture Points
    Log To Console    FR2 - Capture Points
    Sleep     1 seconds
    Screenshot     Point Tab clicked
    Wait Until Element Is Visible   ${PointsAddBtnID}    20 seconds
    click element             ${PointsAddBtnID}
    Sleep     3 seconds
    Screenshot     FR2 Points add button clicked
    click element             ${PointsPFlowBtnID}
    Sleep     1 seconds
    Screenshot     FR2 Points process flow button clicked
    input text                ${PointRefTextFieldXpath}     AutoTest
    Sleep     1 seconds
    click element             ${EnvClassDdID}
    Sleep     2 seconds
    click element             ${EnvClassDdExpandXpath}
    Sleep     2 seconds
    click element             ${EnvClassDdSelectID}
    Sleep     1 seconds
    input text                ${PointDescriptionTxtFieldXpath}      Points
    Sleep     1 seconds
    input text                ${LatitudeFiledXpath}                    7676 7683647
    Sleep     1 seconds
    input text                ${LongitudeFiledXpath}                   9279 2374217
    Sleep     1 seconds
    Screenshot     point info added
    click element             ${PointsSaveBtnID}
    Sleep     5 seconds
    Screenshot     FR1 Save button clicked

FR3 - Edit Monitoring Points
    Log To Console    FR3 - Edit Monitoring Points
    click element             ${PointsCloseBtnXpath}
    Sleep     3 seconds
    Click Element             ${ParameterCompDdID}
    Sleep     2 seconds
    Click Element             ${ParameterCompSelect2ID}
    sleep   1 seconds
    Screenshot     Monitoring points edited
    Click Element             ${MonitoringPointsSaveBtnID}
    Screenshot     FR3 Saving
    Sleep     5 seconds
    Screenshot     FR3 Save button clicked