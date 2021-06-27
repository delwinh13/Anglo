*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
#Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
#Resource    Stakeholder_keywords.robot

*** Keywords ***

FR1 - Capture Engagements Optional Scenerio 1
    Log To Console    Starting FR1 - Capture Engagements Optional Scenario 1

    # Click Supporting Documents
    Wait Until Element Is Visible       ${SupportingDocXpath}    10 seconds
    Click Element                       ${SupportingDocXpath}

    # Click on Link document
    Wait Until Element Is Visible       ${SupportingDocLinkDoc}    10 seconds
    Click Element                       ${SupportingDocLinkDoc}

    # change to pop-up frame
    Unselect frame

    # validate pop up  name
    Sleep    2 seconds
    Element Should Be Visible           ${SupportingDocPopName}



    #Enter URL
    Click Element                       ${SupportingDocAddLink}
    Clear Element Text                  ${SupportingDocAddLink}
    Input Text                          ${SupportingDocAddLink}    https://www.isometrix.com/
    Sleep    2 seconds

    # Enter Title
    Click Element                        ${SupportingDocAddTitle}
    Input Text                          ${SupportingDocAddTitle}    AutoTest

    # Add Link to Document Button
    Wait Until Element Is Visible       ${SupportingDocAddBtn}    10 seconds
    Click Element                       ${SupportingDocAddBtn}



    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # validate uploaded link document

    Wait Until Element Is Visible       ${SupportingDocValidate}    40 seconds
    Element Should Be Visible           ${SupportingDocValidate}

    # Save
    Wait Until Element Is Visible       ${SupportingDocSave}
    Click Element                       ${SupportingDocSave}
    #Wait Until Element Is not Visible   ${SupportingDocSave}    40 seconds




