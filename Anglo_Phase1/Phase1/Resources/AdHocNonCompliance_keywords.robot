*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    String
Library    Process
Resource    ../Resources/vars.robot
Resource  ../Resources/Common_keywords.robot
Library     DateTime


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}..\\Screenshots\\AdHocNonCompliance\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Capture Ad-Hoc Non-Compliance Intervention
    Log To Console    Starting FR1 - Capture Ad-Hoc Non-Compliance Intervention

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}    
    Sleep     3 seconds
    Wait Until Element Is Visible        ${InspectionObsvManegXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${InspectionObsvManegXpath}
    Wait Until Element Is Visible        ${AdHocNonCompXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${AdHocNonCompXpath}
    Screenshot    Navigate to Ad-Hoc Non-Compliance
    Sleep     3 seconds
    Wait Until Element Is Visible        ${AdHocNonCompAddButtonID}    40 seconds
    Click Element                        ${AdHocNonCompAddButtonID}
    Screenshot    Add button clicked
    Wait Until Element Is Visible        ${AdHocNonCompBussinessUnitDdID}    40 seconds
    Click Element                        ${AdHocNonCompBussinessUnitDdID}
    Wait Until Element Is Visible        ${AdNonCompBussUnitExpand1Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdNonCompBussUnitExpand1Xpath}
    Wait Until Element Is Visible        ${AdNonCompBussUnitExpand2Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdNonCompBussUnitExpand2Xpath}
    Wait Until Element Is Visible        ${AdNonCompBussUnitExpand3Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdNonCompBussUnitExpand3Xpath}
    Wait Until Element Is Visible        ${AdNonCompBussUnitExpand4Xpath}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdNonCompBussUnitExpand4Xpath}
    Wait Until Element Is Visible        ${AdNonCompBussinesUnitOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdNonCompBussinesUnitOptionID}
    Wait Until Element Is Visible        ${AdHocNonCompFuncLocationDdID}    40 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFuncLocationDdID}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand1Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand1Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand2Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand2Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand3Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand3Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand4Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand4Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand5Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand5Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLExpand6Xpath}                   60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLExpand6Xpath}
    Wait Until Element Is Visible        ${AdHocNonCompFLSelectNew}                      60 seconds
    Sleep    1 seconds
    Click Element                        ${AdHocNonCompFLSelectNew}
    Screenshot    Information selected and added
    Wait Until Element Is Visible        ${AdNonCompFuncLocationSaveID}    40 seconds
    Click Element                        ${AdNonCompFuncLocationSaveID}
    Screenshot    Save button clicked
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    60 seconds
    Wait Until Element Is Visible        ${AdNonCompInterventionGridID}    40 seconds
    Element Should Be Visible            ${AdNonCompInterventionGridID}

FR2 - Capture Non-Compliance Intervention
    Log To Console    Starting FR2 - Capture Non-Compliance Intervention

    Sleep    5 seconds

    Wait Until Element Is Visible    ${AdNonCompInterventionAddBtnXpath}    40 seconds
    Click Element                    ${AdNonCompInterventionAddBtnXpath}
    Wait Until Element Is Visible    ${AdNonCompInterventionDateXpath}      40 seconds
    Screenshot    FR2 Add button clicked

    #Get the current date for the Non-Compliance date
    ${CurrentDate}    Get Current Date    result_format=%d-%m-%Y
    Set Global Variable    ${CurrentDate}

    Click Element                    ${AdNonCompInterventionDateXpath}
    Input Text                       ${AdNonCompInterventionDateXpath}    ${CurrentDate}

    Wait Until Element Is Visible    ${NonCompInterReportedDateXpath}    40 seconds
    Click Element                    ${NonCompInterReportedDateXpath}
    Input Text                       ${NonCompInterReportedDateXpath}    ${CurrentDate}

    Wait Until Element Is Visible    ${NonCompInterReportedByDdID}    40 seconds
    Click Element                    ${NonCompInterReportedByDdID}
    Wait Until Element Is Visible    ${NonCompInterReportedBySrchXpath}    40 seconds
    Sleep    2 seconds
    Input Text                       ${NonCompInterReportedBySrchXpath}    A
    Press Keys                       ${NonCompInterReportedBySrchXpath}    ENTER
    Wait Until Element Is Visible    ${NonCompInterReportedByResultXpath}    40 seconds
    Sleep    2 seconds
    Screenshot    FR2 Information Captured
    Click Element                    ${NonCompInterReportedByResultXpath}
    Wait Until Element Is Visible    ${NonCompInterIssuedToDdID}    40 seconds
    Click Element                    ${NonCompInterIssuedToDdID}
    Wait Until Element Is Visible    ${NonCompInterIssuedToSrchXpath}
    Sleep    1 seconds
    Input Text                       ${NonCompInterIssuedToSrchXpath}    a
    Press Keys                       ${NonCompInterIssuedToSrchXpath}    ENTER
    Wait Until Element Is Visible    ${NonCompInterIssuedToOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterIssuedToOptionID}
    Wait Until Element Is Visible    ${NonCompInterRespPersonDdID}    40 seconds
    Click Element                    ${NonCompInterRespPersonDdID}
    Wait Until Element Is Visible    ${NonCompInterRespPersonSrchXpath}    40 seconds
    Sleep    1 seconds
    Input Text                       ${NonCompInterRespPersonSrchXpath}    AutoTest
    Press Keys                       ${NonCompInterRespPersonSrchXpath}    ENTER
    Wait Until Element Is Visible    ${NonCompInterRespPersonResultXpath}    40 seconds
    Sleep    2 seconds
    Click Element                    ${NonCompInterRespPersonResultXpath}
    Wait Until Element Is Visible    ${NonCompInterTypeDdID}    40 seconds
    Click Element                    ${NonCompInterTypeDdID}
    Wait Until Element Is Visible    ${NonCompInterTypeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterTypeOptionID}
    Wait Until Element Is Visible    ${NonCompInterStoppageDdID}    40 seconds
    Click Element                    ${NonCompInterStoppageDdID}
    Wait Until Element Is Visible    ${NonCompInterStoppageOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterStoppageOptionID}
    Wait Until Element Is Visible    ${NonCompInterWrkStoppageDdID}    40 seconds
    Click Element                    ${NonCompInterWrkStoppageDdID}
    Wait Until Element Is Visible    ${NonCompInterWrkStoppageOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterWrkStoppageOptionID}
    Wait Until Element Is Visible    ${NonCompInterWrkStopReasonXpath}    40 seconds
    Click Element                    ${NonCompInterWrkStopReasonXpath}
    Input Text                       ${NonCompInterWrkStopReasonXpath}    Testing
    Wait Until Element Is Visible    ${NonCompInterClassificationDdID}    40 seconds
    Screenshot    FR2 Information captured
    Click Element                    ${NonCompInterClassificationDdID}
    Wait Until Element Is Visible    ${NonCompInterClassOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterClassOptionID}
    Wait Until Element Is Visible    ${NonCompInterStoppageDueDdID}    40 seconds
    Click Element                    ${NonCompInterStoppageDueDdID}
    Wait Until Element Is Visible    ${NonCompInterStopDueOptionXpath}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterStopDueOptionXpath}
    Wait Until Element Is Visible    ${NonCompInterStopOutcomeDdID}    40 seconds
    Click Element                    ${NonCompInterStopOutcomeDdID}
    Wait Until Element Is Visible    ${NonCompInterStopOutcomeOptionID}    40 seconds
    Sleep    1 seconds
    Click Element                    ${NonCompInterStopOutcomeOptionID}
    Screenshot    Info selected
    Wait Until Element Is Visible    ${NonCompInterventionSaveID}    40 seconds
    Click Element                    ${NonCompInterventionSaveID}
    Screenshot    Save button selected
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    60 seconds
    Sleep    5 seconds
    Wait Until Element Is Visible    ${NonCompInterventionActionGridID}    60 seconds
    Screenshot    Info saved successfully
    Element Should Be Visible        ${NonCompInterventionActionGridID}