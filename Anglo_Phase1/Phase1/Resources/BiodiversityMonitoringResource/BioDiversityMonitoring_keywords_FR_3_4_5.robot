*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/BioDiversityMonitoring_var.robot
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

    # Click Environmental Sustainability
    Sleep    2 seconds
    Wait Until Page Contains Element    ${EnvironmentalSustainabilityID}    60 seconds
    Click Element                       ${EnvironmentalSustainabilityID}

    # Click Biodiversity Monitoring
    Sleep    2 seconds
    Wait Until Element Is Visible       ${BioDiversityMonitoringID}    40 seconds
    Click Element                       ${BioDiversityMonitoringID}


    # Add Biodiversity Monitoring Record
    Wait Until Element Is Visible       ${BioMonAdd}    40 seconds
    Click Element                       ${BioMonAdd}


    # Check on Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${BioMonProcessID}    40 seconds
    Click Element                       ${BioMonProcessID}


    #validate process is on AddPhase
    Wait Until Element Is Visible       ${BioMonProcessAddPhase}    40 seconds
    Element Should Be Visible           ${BioMonProcessAddPhase}

    #Capture Business Unit
    Wait Until Element Is Visible       ${BioMonBUDrpXpath}    40 seconds
    Click Element                       ${BioMonBUDrpXpath}
    #Anglo
    Wait Until Element Is Visible       ${BioMonBUAnglo}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUAnglo}
    #Bulk
    Wait Until Element Is Visible       ${BioMonBUBulk}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUBulk}
    Wait Until Element Is Visible       ${BioMonBUKumba}    40 seconds
    Sleep    1 seconds
    #kumba
    Click Element                       ${BioMonBUKumba}
    #Komela
    Wait Until Element Is Visible       ${BioMonBUKolomela}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUKolomela}
    #Select Mining Operation
    Wait Until Element Is Visible       ${BioMonBUMining}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonBUMining}

    #Capture Monitoring Type
    Wait Until Element Is Visible       ${BioMonTypeDrp}    40 seconds
    Click Element                       ${BioMonTypeDrp}
    Wait Until Element Is Visible       ${BioMonTypeFauna}    40 seconds
    Sleep    1 seconds
    Click Element                       ${BioMonTypeSelect}

    #Wait Until Element Is Visible       ${BioMonTypeDrp2}    40 seconds
    #Click Element                       ${BioMonTypeDrp2}
    sleep    1 seconds
    #Capture Month And Year
    Wait Until Element Is Visible       ${BioMonMonthDrp}    40 seconds
    Click Element                       ${BioMonMonthDrp}
    Wait Until Element Is Visible       ${BioMonMonthSelect}    40 seconds
    Click Element                       ${BioMonMonthSelect}
    sleep    1 seconds
    Wait Until Element Is Visible       ${BioMonYearDrp}    40 seconds
    Click Element                       ${BioMonYearDrp}
    Wait Until Element Is Visible       ${BioMonYearSelect}    40 seconds
    Click Element                       ${BioMonYearSelect}

    #Capture Monitoring Point
    Wait Until Element Is Visible       ${BioMonMonitoringPtDrp}    40 seconds
    Click Element                       ${BioMonMonitoringPtDrp}
    Wait Until Element Is Visible       ${BioMonMonitoringPtSelect}    40 seconds
    Click Element                       ${BioMonMonitoringPtSelect}


    # Click Save
    Wait Until Element Is Visible       ${BioMonSave}    40 seconds
    Click Element                       ${BioMonSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #validate process is on Edit Phase
    Wait Until Element Is Visible       ${BioMonProcessEdit}    40 seconds
    Element Should Be Visible           ${BioMonProcessEdit}