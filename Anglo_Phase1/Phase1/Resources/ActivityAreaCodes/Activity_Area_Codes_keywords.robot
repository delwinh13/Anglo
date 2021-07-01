*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Activity_Area_Codes_vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\ActivityAreaCodes\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials entered ActivityAreaCodes
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Activity Area Codes
    Log To Console    Starting FR1 - Activity Area Codes

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneButton}
    Click Element                       ${HygieneButton}
    Sleep     3 seconds

    # Click on HygieneButton
    Wait Until Element Is Visible       ${HygieneMaintenanceButton}
    Click Element                       ${HygieneMaintenanceButton}
    Sleep     3 seconds

    # Click on Activity Area Codes
    Wait Until Element Is Visible       ${ActivityAreaCodesButton}
    Click Element                       ${ActivityAreaCodesButton}
    Sleep     3 seconds
    Screenshot      Search page of Activity Area Codes module opens

    # Click on Add Button
    Wait Until Element Is Visible       ${AACAddButton}
    Click Element                       ${AACAddButton}
    Sleep     3 seconds

    #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButton}    10 seconds
    Click Element                       ${ProcessflowButton}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhase}    10 seconds
    Element Should Be Visible           ${ProcessflowAddPhase}
    Sleep    5 seconds
    Screenshot      Activity Area Codes add form opens in the Add phase

    #Capture GeographicLocation
    Wait Until Element Is Visible       ${GeographicLocationDropdown}    10 seconds
    Click Element                       ${GeographicLocationDropdown}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${SouthAfricaDaimondButton}    10 seconds
    Click Element                       ${SouthAfricaDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${GautengDaimondButton}    10 seconds
    Click Element                       ${GautengDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${CenturionDaimondButton}    10 seconds
    Click Element                       ${CenturionDaimondButton}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${KIOHeadOfficeSelection}    10 seconds
    Click Element                       ${KIOHeadOfficeSelection}
    Sleep    1 seconds

    #Capture ActivityAreaTextbox
    Wait Until Element Is Visible       ${ActivityAreaTextbox}    10 seconds
    Input Text                          ${ActivityAreaTextbox}        you are

    #Capture MonitoringReferenceTextbox
    Wait Until Element Is Visible       ${DescriptionTextbox}    10 seconds
    Input Text                          ${DescriptionTextbox}        you are my friend

    #Capture SampleSizePercentageDropDown
    Wait Until Element Is Visible       ${ActiveInactiveDropdown}    10 seconds
    Sleep    1 seconds
    Click Element                       ${ActiveInactiveDropdown}
    Wait Until Element Is Visible       ${ActiveSelection}    10 seconds
    Sleep    1 seconds
    Click Element                       ${ActiveSelection}

   #Clck on Save button
    Wait Until Element Is Visible       ${SaveButtonXpath}    20 seconds
    Click Element                       ${SaveButtonXpath}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhase}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhase}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase