*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Meeting_Template_vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\MeetingTemplate\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Capture Meeting Template
    Log To Console    Starting FR1 - Capture Meeting Template

    # Click AngloMaintenanceButton
    Mouse over  ${AngloMaintenanceButtonXpath}
    Wait Until Page Contains Element    ${AngloMaintenanceButtonXpath1}    20 seconds
    Click Element                       ${AngloMaintenanceButtonXpath1}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click MeetingTemplateButton
    Sleep    2 seconds
    Wait Until Element Is Visible       ${MeetingTemplateButtonXpath}    30 seconds
    Click Element                       ${MeetingTemplateButtonXpath}


    # Click on Add Button
    Wait Until Element Is Visible       ${MeetingTemplateAddButtonXpath}    20 seconds
    Click Element                       ${MeetingTemplateAddButtonXpath}

     #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButtonXpath}    20 seconds
    Click Element                       ${ProcessflowButtonXpath}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhaseXpath}    40 seconds
    Element Should Be Visible           ${ProcessflowAddPhaseXpath}
    Sleep    5 seconds
    Screenshot      Meeting Template add form opens in the Add phase

    #Capture Meeting Template text box
    Wait Until Element Is Visible       ${MeetingTemplateXpath}    20 seconds
    Input Text                          ${MeetingTemplateXpath}        testing

    #Capture Business Unit
    Wait Until Element Is Visible       ${BusinessUnitDropdownXpath}    20 seconds
    Click Element                       ${BusinessUnitDropdownXpath}
    Wait Until Element Is Visible       ${BUAAGOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUAAGOptionXpath}
    Wait Until Element Is Visible       ${BUAApOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUAApOptionXpath}
    Wait Until Element Is Visible       ${BUAApOptionXpath1}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUAApOptionXpath1}
    Wait Until Element Is Visible       ${BUAApOptionXpath2}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUAApOptionXpath2}
    Sleep    1 seconds
    Click Element                       ${BusinessUnitDropdownXpath}

    #Capture Risk Descipline
    Wait Until Element Is Visible       ${RiskDeciplineXpath}    20 seconds
    Click Element                       ${RiskDeciplineXpath}
    Wait Until Element Is Visible       ${RishDeciplineSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${RishDeciplineSelectionXpath}
    Wait Until Element Is Visible       ${RiskDeciplineXpath}    20 seconds
    Click Element                       ${RiskDeciplineXpath}
    Sleep    1 seconds

    #Capture Meeting Description text box
    Wait Until Element Is Visible       ${MeetingDescriptionXpath}    20 seconds
    Input Text                          ${MeetingDescriptionXpath}        testing1

    #Optional Scenario :
    # Click Supporting Documents Tab
    Wait Until Element Is Visible       ${SupportingDocXpath}    40 seconds
    Click Element                       ${SupportingDocXpath}
    #Click Supporting Document Link
    Wait Until element Is visible       ${SupportingDocLinkDoc}    40 seconds
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
    Input Text                           ${SupportingDocAddTitle}    AutoTest
    # Add Link to Document Button
    Wait Until Element Is Visible        ${SupportingDocAddBtn}    10 seconds
    Click Element                        ${SupportingDocAddBtn}
    # Change to main frame
    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    #Clck on Save button
    Wait Until Element Is Visible       ${MTSavebuttonXpath}    20 seconds
    Click Element                       ${MTSavebuttonXpath}
    Sleep    5 seconds

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhaseXpath}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhaseXpath}
    Sleep    5 seconds
    Screenshot    Record is saved Attendees and Agenda tabs are also displayed

FR2 - Capture Meeting Attendee Template
    Log To Console    Starting FR2 - Capture Meeting Attendee Template

    # Click on Attendees Tab
    Wait Until Element Is Visible       ${AttendeesTabXpath}    40 seconds
    Click Element                       ${AttendeesTabXpath}
    Sleep    10 seconds
    Screenshot    Default attendance status field is displayed and defaulted to Present


    # Click on Add Button
    Wait Until Element Is Visible        ${AAddButton}    10 seconds
    Click Element                        ${AAddButton}

    # Click Name DropDown
    Wait Until Element Is Visible        ${NameXpath}    10 seconds
    Click Element                        ${NameXpath}
    Sleep    2 seconds
    #Enter a in selection dropdown
    Click Element                        ${NameSearchXpath}
    Sleep    2 seconds
    Input text                           ${NameSearchXpath}    AARON COLIN
    Press Keys                           ${NameSearchXpath}    ENTER
    Wait Until Element Is Visible        ${NameSelectOptionXpath}               40 seconds
    Click Element                        ${NameSelectOptionXpath}

    # Click on Save button
    Wait Until Element Is Visible        ${SaveButtonXpath}    10 seconds
    Click Element                        ${SaveButtonXpath}
    Sleep    10 seconds


    # Click on Inline Edit Button
    Wait Until Element Is Visible        ${InlineEditButtonXpath}    10 seconds
    Click Element                        ${InlineEditButtonXpath}
    Sleep    10 seconds

    # Click on Add Button
    Wait Until Element Is Visible        ${AAddButton}    10 seconds
    Click Element                        ${AAddButton}

    #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButtonXpath1}    20 seconds
    Click Element                       ${ProcessflowButtonXpath1}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhaseXpath1}    20 seconds
    Element Should Be Visible           ${ProcessflowAddPhaseXpath1}
    Sleep    5 seconds
    Screenshot    A new row is displayed in the Add phase Email address and Attendee’s business unit fields are rea

    # Click Name DropDown
    Wait Until Element Is Visible        ${NameXpath}    10 seconds
    Click Element                        ${NameXpath}
    Sleep    5 seconds
    #Enter a in selection dropdown
    Click Element                        ${NameSearchXpath}
    Sleep    10 seconds
    Input text                           ${NameSearchXpath}    AARON COLIN
    Press Keys                           ${NameSearchXpath}    ENTER
    Wait Until Element Is Visible        ${NameSelectOptionXpath}               40 seconds
    Click Element                        ${NameSelectOptionXpath}

    # Click on Save button
    Wait Until Element Is Visible        ${SaveButtonXpath1}    10 seconds
    Click Element                        ${SaveButtonXpath1}

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase

    # Click on Close button
    Sleep    5 seconds
    Wait Until Element Is Visible        ${AtCloseButtonXpath}    10 seconds
    Click Element                        ${AtCloseButtonXpath}
    Sleep    5 seconds

FR3 - Capture Meeting Agenda Template
    Log To Console    Starting FR3 - Capture Meeting Agenda Template

    # Click on Agenda Tab
    Wait Until Element Is Visible       ${AgendaTabXpath}   40 seconds
    Click Element                       ${AgendaTabXpath}
    Sleep    10 seconds
    Screenshot    Meeting Agenda Template editable grid is displayed

    Wait Until Element Is Visible       ${InlineEditItemButton}   40 seconds
    Click Element                       ${InlineEditItemButton}
    Sleep    10 seconds

    # Click on Add Button
    Wait Until Element Is Visible        ${AgAddButton}    10 seconds
    Click Element                        ${AgAddButton}

    #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${AgProcessflowButtonXpath1}    20 seconds
    Click Element                       ${AgProcessflowButtonXpath1}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${AgProcessflowAddPhaseXpath1}    20 seconds
    Element Should Be Visible           ${AgProcessflowAddPhaseXpath1}
    Sleep    5 seconds
    Screenshot    A new row is displayed in the Add phase

    #Enter text in agendatextbox
    Click Element                        ${AgendaOrderXpath}
    Input text                           ${AgendaOrderXpath}    12
    Sleep    5 seconds

    #Enter text in agendaitem
    Click Element                        ${AgendaItemXpath}
    Input text                           ${AgendaItemXpath}    agenda2
    Sleep    5 seconds

    # Click on Save button
    Wait Until Element Is Visible        ${AgendaSaveButtonXpath}    10 seconds
    Click Element                        ${AgendaSaveButtonXpath}

    #validate process is on EditPhase
    Sleep    5 seconds
    Wait Until Element Is Visible       ${AgProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${AgProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase

    #Click on AgendaTabCloseXpath
    Wait Until Element Is Visible       ${AgendaTabCloseXpath}    20 seconds
    Click Element                       ${AgendaTabCloseXpath}
    Sleep    5 seconds

FR5 - Edit Meeting Template
    Log To Console    Starting FR5 - Edit Meeting Template

    # Click on Meeting Template Tab
    Wait Until Element Is Visible       ${MeetingTemplateTabXpath}    20 seconds
    Click Element                       ${MeetingTemplateTabXpath}
    Sleep    10 seconds

    #Capture Meeting Template text box
    Wait Until Element Is Visible       ${MeetingTemplateXpath}    20 seconds
    Input Text                          ${MeetingTemplateXpath}        editingtext

    #Capture Business Unit
    Wait Until Element Is Visible       ${EditBusinessUnitDropdownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${EditBusinessUnitDropdownXpath}

    #Delesect Business Unit drop down
    Wait Until Element Is Visible       ${DeselectBusinessUnitDropdownXpath}     20 seconds
    Sleep    5 seconds
    Click Element                       ${DeselectBusinessUnitDropdownXpath}

    #Capture Business Unit
    Wait Until Element Is Visible       ${EditBusinessUnitDropdownXpath}    20 seconds
    Sleep    5 seconds
    Click Element                       ${EditBusinessUnitDropdownXpath}

#    Wait Until Element Is Visible       ${EditBUAAGOptionXpath}     20 seconds
#    Sleep    5 seconds
#    Click Element                       ${EditBUAAGOptionXpath}
    Wait Until Element Is Visible       ${EditBUBMOptionXpath}    20 seconds
    Sleep    5 seconds
    Click Element                       ${EditBUBMOptionXpath}
    Wait Until Element Is Visible       ${EditBUBMCOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${EditBUBMCOptionXpath}
    Wait Until Element Is Visible       ${EditBULBSOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${EditBULBSOptionXpath}
    Wait Until Element Is Visible       ${EditBusinessUnitDropdownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${EditBusinessUnitDropdownXpath}

    #Capture Risk Descipline
    Wait Until Element Is Visible       ${EditRiskDeciplineXpath}    20 seconds
    Click Element                       ${EditRiskDeciplineXpath}
    Wait Until Element Is Visible       ${EditRiskDeciplineSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${EditRiskDeciplineSelectionXpath}
    Wait Until Element Is Visible       ${EditRiskDeciplineXpath}    20 seconds
    Click Element                       ${EditRiskDeciplineXpath}
    Sleep    1 seconds

    #Capture Meeting Template text box
    Wait Until Element Is Visible       ${EditMeetingDescriptionXpath}    20 seconds
    Input Text                          ${EditMeetingDescriptionXpath}        editingtest

    #Clck on Save button
    Wait Until Element Is Visible       ${MTSavebuttonXpath}    20 seconds
    Click Element                       ${MTSavebuttonXpath}
    Sleep    5 seconds
    Screenshot    Record is saved
