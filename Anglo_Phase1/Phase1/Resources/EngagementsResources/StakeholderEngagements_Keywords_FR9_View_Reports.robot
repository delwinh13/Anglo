*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
#Resource    Stakeholder_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix

Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Click Element             ${SubmitButtonid}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

FR9 - View Reports
    Log To Console    FR9 - View Reports



    # Click Social Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${SocialSustainabilityXpath}    60 seconds
    Click Element                       ${SocialSustainabilityXpath}

    # Click Engagemet Management
    Sleep    2 seconds
    Wait Until Element Is Visible       ${EngagementManagementXpath}    40 seconds
    Click Element                       ${EngagementManagementXpath}
    Sleep    2 seconds

    Wait Until Element Is Visible       ${EngagementManagementSearchInput}    40 seconds
    Click Element                       ${EngagementManagementSearchInput}
    Input Text                          ${EngagementManagementSearchInput}    auto

    Wait Until Element Is Visible       ${EngagementManagementSearchBtn}    40 seconds
    Click Element                       ${EngagementManagementSearchBtn}

    Sleep    5 seconds

    Click Element                                   ${SIReportsBtn}
    #Wait Until Element Is Visible                   ${SEReportSITitle}                  40 seconds
    #View Reports
    #Log to Console      View Reports
    Click Element                                   ${SIViewReportsBtn}
    #Switch Window
    #Log to Console      Switch Window
    #Switch Window
    Unselect Frame
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    #Log to Console      Select Window - NEW
    #Select Window       NEW

    Sleep       2
    #Report Right Arrow
    #Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    #${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    #Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       30
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN


    #Full Reports
    #Log to Console      Full Reports
    Select Frame                                    ${iFrame}
    Click Element                                   ${SIFullReportsBtn}
    #Switch Window
    #Log to Console      Switch Window
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    #Log to Console      Select Window - NEW
    Select Window       NEW
    Sleep       2
    #Report Right Arrow
    #Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    #${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Full Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    #Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       30
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN




