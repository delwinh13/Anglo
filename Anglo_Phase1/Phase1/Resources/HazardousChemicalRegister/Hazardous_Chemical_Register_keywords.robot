*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/Hazardous_Chemical_Register _vars.robot

*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\HazardousChemicalRegister\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1 - Capture Hazardous Chemical
    Log To Console    Starting FR1 - Capture Hazardous Chemical

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click on Hazardous Chemical Register Button
    Wait Until Element Is Visible       ${HazardousChemicalRegisterButtonXpath}
    Click Element                       ${HazardousChemicalRegisterButtonXpath}
    Sleep     3 seconds
    Screenshot      Hazardous Chemical Register search page is displayed on the screen

    # Click on Add Button
    Wait Until Element Is Visible       ${HCRAddButtonXpath}
    Click Element                       ${HCRAddButtonXpath}

#   # Start Date
#    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
#    Set Global Variable             ${CurrentDate}
#    Input Text                      ${MSDSDate}        ${CurrentDate}

     #Click on ProcessflowButton
    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProcessflowButtonXpath}    20 seconds
    Click Element                       ${ProcessflowButtonXpath}

    #validate process is on AddPhase
    Wait Until Element Is Visible       ${ProcessflowAddPhaseXpath}    40 seconds
    Element Should Be Visible           ${ProcessflowAddPhaseXpath}
    Sleep    5 seconds
    Screenshot      Meeting Template add form opens in the Add phase

    #Capture Business Unit
    Wait Until Element Is Visible       ${BusinessUnitDropdownXpath}    20 seconds
    Click Element                       ${BusinessUnitDropdownXpath}
    Wait Until Element Is Visible       ${BUAAGOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUAAGOptionXpath}
    Wait Until Element Is Visible       ${BUBCOOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUBCOOptionXpath}
    Wait Until Element Is Visible       ${BUKOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUKOptionXpath}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${BUSMOptionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${BUSMOptionXpath}
    Wait Until Element Is Visible       ${BusinessUnitDropdownXpath}    20 seconds
    Click Element                       ${BusinessUnitDropdownXpath}
    #Capture ProductName
    Wait Until Element Is Visible       ${ProductNameXpath}    20 seconds
    Input Text                          ${ProductNameXpath}        chemical

    #Capture ProductType
    Wait Until Element Is Visible       ${ProductTypeDropdownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ProductTypeDropdownXpath}
    Wait Until Element Is Visible       ${ProductTypeDropdownSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ProductTypeDropdownSelectionXpath}

    #Capture CASNumber
    Wait Until Element Is Visible       ${CASNumberXpath}    20 seconds
    Input Text                          ${CASNumberXpath}        52

    #Capture CASNumber
    Wait Until Element Is Visible       ${UNNumberXpath}    20 seconds
    Input Text                          ${UNNumberXpath}        56

    #Capture Classification
    Wait Until Element Is Visible       ${ClassificationDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ClassificationDropDownXpath}
    Wait Until Element Is Visible       ${ClassificationDropDownSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ClassificationDropDownSelectionXpath}

     #Capture HazmatClass
    Wait Until Element Is Visible       ${HazmatClassDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${HazmatClassDropDownXpath}
    Wait Until Element Is Visible       ${HazmatClassDropDownSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${HazmatClassDropDownSelectionXpath}

    #Capture MethodOfUse
    Wait Until Element Is Visible       ${MethodOfUseDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${MethodOfUseDropDownXpath}
    Wait Until Element Is Visible       ${MethodOfUseDropDownCheckboxXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${MethodOfUseDropDownCheckboxXpath}
    Wait Until Element Is Visible       ${MethodOfUseDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${MethodOfUseDropDownXpath}

      #Capture DirectLinkTextBox
    Wait Until Element Is Visible       ${DirectLinkTextBoxXpath}    20 seconds
    Input Text                          ${DirectLinkTextBoxXpath}        www.isometrix.com

    #Capture CompositionTextBox
    Wait Until Element Is Visible       ${CompositionTextBoxXpath}    20 seconds
    Input Text                          ${CompositionTextBoxXpath}        tester

    #Capture PhysicalProTextBox
    Wait Until Element Is Visible       ${PhysicalProTextBoxXpath}    20 seconds
    Input Text                          ${PhysicalProTextBoxXpath}        rema

     #Capture ApplicableAreas
    Wait Until Element Is Visible       ${ApplicableAreasDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ApplicableAreasDropDownXpath}
    Wait Until Element Is Visible       ${ApplicableAreasDropDownSelectionXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${ApplicableAreasDropDownSelectionXpath}

    #Capture LocationsWIU
    Wait Until Element Is Visible       ${LocationsWIUDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${LocationsWIUDropDownXpath}
    Wait Until Element Is Visible       ${LocationsWIUDropDownSelectionXpath}    60 seconds
    Sleep    10 seconds
    Click Element                       ${LocationsWIUDropDownSelectionXpath}
    Wait Until Element Is Visible       ${LocationsWIUDropDownSelectionXpath1}    60 seconds
    Sleep    1 seconds
    Click Element                       ${LocationsWIUDropDownSelectionXpath1}
    Wait Until Element Is Visible       ${LocationsWIUDropDownXpath}    20 seconds
    Sleep    1 seconds
    Click Element                       ${LocationsWIUDropDownXpath}

    #Capture MaxStock
    Wait Until Element Is Visible       ${MaxStockXpath}    20 seconds
    Input Text                          ${MaxStockXpath}        42

    #Capture MSDS Date
    ${CurrentDate}          Get Current Date        result_format=%d-%m-%Y
    Set Global Variable             ${CurrentDate}
    Input Text                      ${MSDSDateSelectionXpath}        ${CurrentDate}

    #Capture EmergencyControlFire
    Wait Until Element Is Visible       ${EmergencyControlFireXpath}    20 seconds
    Input Text                          ${EmergencyControlFireXpath}        test

    #Capture EmergencyControlUR
    Wait Until Element Is Visible       ${EmergencyControlURXpath}    20 seconds
    Input Text                          ${EmergencyControlURXpath}        test

    #Capture EmergencyControlS
    Wait Until Element Is Visible       ${EmergencyControlSXpath}    20 seconds
    Input Text                          ${EmergencyControlSXpath}        test

    #Capture EmergencyActionsEC
    Wait Until Element Is Visible       ${EmergencyActionsECXpath}    20 seconds
    Input Text                          ${EmergencyActionsECXpath}        test

    #Capture EmergencyActionsSC
    Wait Until Element Is Visible       ${EmergencyActionsSCXpath}    20 seconds
    Input Text                          ${EmergencyActionsSCXpath}        test

    #Capture EmergencyActionsInhalation
    Wait Until Element Is Visible       ${EmergencyActionsInhalationXpath}    20 seconds
    Input Text                          ${EmergencyActionsInhalationXpath}        test

    #Capture EmergencyActionsIngestion
    Wait Until Element Is Visible       ${EmergencyActionsIngestionXpath}    20 seconds
    Input Text                          ${EmergencyActionsIngestionXpath}        test

    #Capture ApprovedDisposalMethods
    Wait Until Element Is Visible       ${ApprovedDisposalMethodsXpath}    20 seconds
    Input Text                          ${ApprovedDisposalMethodsXpath}        test

    # Capture LinkUploadDocs
    Wait Until Element Is Visible       ${LinkUploadDocs}    40 seconds
    Click Element                       ${LinkUploadDocs}
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
    # Navigate to HazardousChemicalDetailTab
    Wait Until Element Is Visible        ${HazardousChemicalDetailTab}    10 seconds
    Click Element                        ${HazardousChemicalDetailTab}

    #Clck on Save button
    Wait Until Element Is Visible       ${SaveButtonXpath}    20 seconds
    Click Element                       ${SaveButtonXpath}
    Sleep    5 seconds

    #validate process is on EditPhase
    Wait Until Element Is Visible       ${ProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${ProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase

FR2 - Add Chemical Register Actions
    Log To Console    Starting FR2 - Add Chemical Register Actions

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
    Wait Until Element Is Visible       ${AgProcessflowEditPhaseXpath1}    20 seconds
    Element Should Be Visible           ${AgProcessflowEditPhaseXpath1}
    Sleep    5 seconds
    Screenshot    Record is saved and automatically moves to the Edit Phase
