*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/SuggestionsInnovations.robot
Resource    ../../Repository/AcceptRejectSuggestions.robot
*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\Capture Suggestion And Innovation\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredSuggestionsInnovations.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds
    Log To Console    Starting  - Capture Suggestion or Innovation
    # Click AngloMaintenanceButton
    Mouse over                              ${AngloMainMenuXpath}
    Sleep     3 seconds
    scroll element into view               ${AngloTrainingAndSuggestionsInterfaceXpath}
    Wait Until Page Contains Element       ${AngloTrainingAndSuggestionsInterfaceXpath}    20 seconds
    Click Element                          ${AngloTrainingAndSuggestionsInterfaceXpath}

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Click Element                       ${SuggestionsAndInnovationsModulXpath}
    Sleep     3 seconds
    Screenshot  Navigate to Suggestions and Innovations search page opens
    click element       ${AddButtonXpath}
    Sleep     3 seconds
    # Check on Process Flow
    Wait Until Element Is Visible        ${ProcessFlowXpath}   40 seconds
    click element                        ${ProcessFlowXpath}
    Sleep     3 seconds
    #validate process is on AddPhase
    Wait Until Element Is Visible         ${AddSuggestionsAndInnovaionXpath}    40 seconds
    Element Should Be Visible             ${AddSuggestionsAndInnovaionXpath}
    Screenshot   	Suggestions and Innovations add page opens in the Add suggestion and innovation Phase
    click element                        ${BusinessUnitDrpDwnXpath}
    Sleep     20 seconds
    Wait Until Element Is Visible        ${BUDrpValueXpath}    40 seconds
    Sleep     3 seconds
    Click Element                        ${BUDrpValueXpath}
    Sleep    3 seconds
    Wait Until Element Is Visible        ${BUDrpValueBulkXpath}    40 seconds
    Sleep    20 seconds
    Click Element                       ${BUDrpValueBulkXpath}
    Wait Until Element Is Visible       ${BUDrpValueKumbaXpath}            40 seconds
    Sleep    3 seconds
    Click Element                      ${BUDrpValueKumbaXpath}
    Wait Until Element Is Visible       ${BUDrpValueSishenXpath}            40 seconds
    Sleep    3 seconds
    Click Element                       ${BUDrpValueSishenXpath}
    Sleep    3 seconds
    click element                       ${RiskDesciplineXpath}
    Sleep    10 seconds
    click element                       ${RiskDesciplineCheckBoxXpath}
    Sleep    3 seconds
    click element                      ${RiskDesciplineCheckBoxLinkXpath}
    Sleep    3 seconds
    click element                     ${SuggestionXpath}
    Sleep    3 seconds
    Input Text                        ${SuggestionValueXpath}       AutoTest
    Sleep    3 seconds
    mouse over                        ${SuggestedByXpath}
    Sleep    3 seconds
    click element                     ${SuggestedByXpath}
    Sleep    3 seconds
    Input Text                        ${SuggestedByInputXpath}   Test
    Press Keys                       ${SuggestedByInputXpath}    ENTER
    Sleep    3 seconds
    click element                    ${SuggestedByValueXpath}
    Sleep    2 seconds
    mouse over                        ${SuggestionAssignedToXpath}
    Sleep    3 seconds
    click element                    ${SuggestionAssignedToXpath}
    Sleep    2 seconds
    Input Text                        ${SuggestionAssignedInputXpath}   Test
    Sleep    2 seconds
    Press Keys                       ${SuggestionAssignedInputXpath}    ENTER
    Sleep    5 seconds
    click element                       ${SuggestionAssignedValueXpath}
    Sleep    3 seconds
    click element                    ${SuggestionTypeXpath}
    Sleep    3 seconds
    click element                   ${SuggestionTypeValueXpath}
    click element                    ${SaveButtonXpath}
    Sleep    30 seconds
    #validate process is Suggestion and innovation under review Phase
   Wait Until Element Is Visible         ${SuggestionsAndInnvationReview}    40 seconds
   Element Should Be Visible             ${SuggestionsAndInnvationReview}
   Sleep    10 seconds
   Screenshot   	Suggestions Under Review
   Sleep    10 seconds
FR2- Approve Suggestion or Innovation
    Log To Console    Starting FR2 - Approve Suggestion or Innovation
    screenshot      Navigate to Suggestions and Innovations record opens in Suggestion and Innovation under review Phase

    #Navigate TO Action TAB
    click element                ${ApprovalTabXpath}
    Sleep     3 seconds
    click element        ${ApprovalDropDownXpath}
    Sleep     10 seconds
    click element          ${ApprovalDropDownYesXpath}
    Sleep     3 seconds
    click element               ${SaveButtonXpath}
    Sleep     60 seconds
    screenshot   Approved by and Date approved fields are displayed
    Sleep     3 seconds
    Wait Until Element Is Visible         ${ProcessFlowApprovedXpath}    40 seconds
    Element Should Be Visible                 ${ProcessFlowApprovedXpath}
    Screenshot       Suggestions and Innovations is in Approved phase


FR2- Suggestion and Innovation Approve Email
    Log To Console    Suggestion and Innovation Email

    Open Browser                            ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    #Sign In Button
    Click Element                           ${SignInBtn}
    Wait Until Element Is Visible           ${EmailField}               20 seconds
    Input Text                              ${EmailField}               ${outlookusername}
    Wait Until Element Is Visible           ${EmailNext}                20 seconds
    Click Element                           ${EmailNext}
    Wait Until Element Is Visible           ${EmailPasswordField}       20 seconds
    Input Text                              ${EmailPasswordField}       ${outlookpassword}
    Wait Until Element Is Visible           ${EmailSignInBtn}           20 seconds
    Click Element                           ${EmailSignInBtn}
    Screenshot      Office Emails
    #Outlook Folder
    Wait Until Element Is Visible           ${Outlook}                  20 seconds
    Click Element                           ${Outlook}
    Screenshot      Outlook Folder
    sleep       15
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    Screenshot      Outlook Mail Folder
    sleep       15
    #System Mail folder
    Wait Until Element Is Visible           ${SystemMailFolder}         20 seconds
    sleep       5
    Click Element                           ${SystemMailFolder}
    Screenshot      Outlook SystemMail Folder
    Wait Until Element Is Visible           ${SuggestionAndInnovationsChangedSubject}          60 seconds
    Click Element                           ${SuggestionAndInnovationsChangedSubject}
    Screenshot      Suggestion
    #Link Back to Record
    Click Element                           ${EmailLinkBacktoRecord}
    sleep       5
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Screenshot      IsoMetrix Tab Opened
    Wait Until Element Is Enabled           ${IsoMetrixSignInXpath}           60 seconds
    Click Element                           ${IsoMetrixSignInXpath}
    Wait Until Element Is Visible           ${Usernameid}
    Input Text                              ${Usernameid}    ${Username Value}
    Input Text                              ${Passwordid}    ${Password Value}
    Click Element                           ${SubmitButtonid}
    # Check on Process Flow
    Sleep     30 seconds
    Select Frame                            ${iFrame}
    Wait Until Element Is Visible        ${ProcessFlowXpath}   40 seconds
    click element                        ${ProcessFlowXpath}
    Sleep     3 seconds
    Wait Until Element Is Visible         ${ProcessFlowApprovedXpath}    40 seconds
    Element Should Be Visible                 ${ProcessFlowApprovedXpath}
    Screenshot       Suggestions Under Review











