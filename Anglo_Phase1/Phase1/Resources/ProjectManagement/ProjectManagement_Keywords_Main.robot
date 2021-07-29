*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Library    Process
Library    DateTime
# Resource    ../Resources/vars.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/ProjectManagement_var.robot
Resource    ../../Repository/Stakeholder_Engagement_vars.robot
Resource    ../../Repository/Email_Notification.robot
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

FR1- Capture Project Management
    Log To Console    Starting FR1- Capture Project Management

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds

    # Click Project Management
    Sleep    2 seconds
    Wait Until Page Contains Element    ${ProjectManagementID}    60 seconds
    Click Element                       ${ProjectManagementID}

    #Add new Record
    Wait Until Element Is Visible       ${ProjectManagementAddNew}    40 seconds
    Click Element                       ${ProjectManagementAddNew}



    #capture Process Flow
    Sleep    4 seconds
    Wait Until Element Is Visible       ${ProjectManagememntProcessID}    40 seconds
    Click Element                       ${ProjectManagememntProcessID}

    # Capture Entity
    Wait Until Element is Visible       ${ProjectManagementEntityDrp}    40 seconds
    Click Element                       ${ProjectManagementEntityDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${ProjectManagementEntityXpath}    40 seconds
    Click Element                       ${ProjectManagementEntityXpath}
    Wait Until Element Is Visible       ${ProjectManagementEntityXpath2}    40 seconds
    Click Element                       ${ProjectManagementEntityXpath2}
    Wait Until Element Is Visible       ${ProjectManagementEntitySelect}    40 seconds
    Click Element                       ${ProjectManagementEntitySelect}


    Wait Until element Is Visible       ${ProjectManagementEntityCloseDrp}    40 seconds
    Click Element                       ${ProjectManagementEntityCloseDrp}

    #capture Project title
    Wait Until Element Is Visible       ${ProjectManagementEntityProjectIn}    40 seconds
    Click Element                       ${ProjectManagementEntityProjectIn}
    Input Text                          ${ProjectManagementEntityProjectIn}    auto test

    # Capture Project Description
    Wait Until Element Is Visible       ${ProjectManagementEntityProjetDesc}    40 seconds
    Click Element                       ${ProjectManagementEntityProjetDesc}
    Input Text                          ${ProjectManagementEntityProjetDesc}    auto test

    # capture Theme
    Wait Until element is Visible       ${ProjectManagementThemeDrp}    40 seconds
    Click Element                       ${ProjectManagementThemeDrp}
    Wait until Element Is Visible       ${ProjectManagementThemeSelectCarbon}    40 seconds
    Click Element                       ${ProjectManagementThemeSelectCarbon}

    # validate Function is present
    Element Should Be Visible           ${ProjectManagementFunctionDrp}
    Wait until Element Is Visible       ${ProjectManagementFunctionDrp}    40 seconds
    Click Element                       ${ProjectManagementFunctionDrp}
    Wait Until element is Visible       ${ProjectManagementFunctionSelect}    40 seconds
    Click Element                       ${ProjectManagementFunctionSelect}

    # capture Planned start date
    ${PlanStartDate}=  Get Current Date  result_format=%d-%m-%Y
    Set Global Variable    ${PlanStartDate}
    Wait until Element Is Visible       ${ProjectManagementPlanStart}    40 seconds
    Click Element                       ${ProjectManagementPlanStart}
    Input Text                          ${ProjectManagementPlanStart}    ${PlanStartDate}

    #Capture Planned Completion
    ${PlanCloseDate}=  Get Current Date  result_format=%d-%m-%Y  increment=+1 day
    Set Global Variable    ${PlanCloseDate}

    Wait Until Element Is Visible       ${ProjectManagementPlanStop}    40 seconds
    Click Element                       ${ProjectManagementPlanStop}
    Input Text                          ${ProjectManagementPlanStop}    ${PlanCloseDate}
    #Click Element                       ${ProjectManagementPlanStop}

    # Capture Objectives and proposed activities
    Wait until Element Is Visible       ${ProjectManagementObjDesc}    40 seconds
    Click Element                       ${ProjectManagementObjDesc}
    Input Text                          ${ProjectManagementObjDesc}    auto test

    #Capture Due Deligence Notes
    Wait Until Element Is Visible       ${ProjectManagementDueDeligence}    40 seconds
    Click Element                       ${ProjectManagementDueDeligence}
    Input Text                          ${ProjectManagementDueDeligence}    auto test

    # Capture Project Originator
    Wait Until Element Is Visible       ${ProjectManagementOriginatorDrp}    40 seconds
    Click Element                       ${ProjectManagementOriginatorDrp}
    Wait Until Element Is Visible       ${ProjectManagenmentOriginatorSearch}    40 seconds
    Click Element                       ${ProjectManagenmentOriginatorSearch}
    Input Text                          ${ProjectManagenmentOriginatorSearch}    auto
    Press Keys                          ${ProjectManagenmentOriginatorSearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementOriginatorSelect}    40 seconds
    Click Element                       ${ProjectManagementOriginatorSelect}

#************************************************* FR1- Optional Scenario **********************************************
    # Click Supporting Documents Tab
    Wait Until Element Is Visible       ${ProjectManagementSupportingDoc}    40 seconds
    Click Element                       ${ProjectManagementSupportingDoc}

    #Click Supporting Document Link
    Wait Until element Is visible       ${ProjectManagementSupportDocLink}    40 seconds
    Click Element                       ${ProjectManagementSupportDocLink}

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

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Validate Process flow Under Review
    Wait Until Element Is Visible       ${ProjectmanagementValidateReview}    40 seconds
    Element Should Be Visible           ${ProjectmanagementValidateReview}

#************************************************* FR1- Capture Project Management Capture Notification ****************
FR1- Capture Project Management Notification
    Log To Console    Starting FR1- Capture Project Management Notification

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
    #Screenshot      Office Emails
    #Outlook Folder
    Wait Until Element Is Visible           ${Outlook}                  20 seconds
    Click Element                           ${Outlook}
    #Screenshot      Outlook Folder
    sleep       15
    #Switch to Tab
    Switch Window    Mail - Kavi Mahadeo - Outlook
    #System Mail folder
    Wait Until Element Is Visible           ${SystemMailFolder}         20 seconds
    sleep       5
    Click Element                           ${SystemMailFolder}
    #Screenshot      Outlook SystemMail Folder
    #StakeIndividual - Logged Notification
    sleep       3
    Wait Until Element Is Visible           ${ProjectManagementAddedSubject}           60 seconds
    Click Element                           ${ProjectManagementAddedSubject}
    #Screenshot      Stakeholder Group Added Email Selection
    #Link Back to Record
    Click Element                           ${EmailLinkBacktoRecord}
    sleep       5
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    #Screenshot      IsoMetrix Tab Opened
    Wait Until Element Is Enabled           ${IsoMetrixSignInXpath}           60 seconds
    Click Element                           ${IsoMetrixSignInXpath}
    Wait Until Element Is Visible           ${Usernameid}
    Input Text                              ${Usernameid}    ${Username Value}
    Input Text                              ${Passwordid}    ${Password Value}
    Click Element                           ${SubmitButtonid}
    #Wait for StakeGroup Record
    sleep       20
    Select Frame                            ${iFrame}
    Wait Until Element Is Enabled           ${ProjectManagememntProcessID}           60 seconds
    Click Element                           ${ProjectManagememntProcessID}
    Wait Until Page Contains Element        ${ProjectmanagementValidateReview}
    #Screenshot      Stakeholder Group Record Opened



#************************************************* FR4- Capture Forecasted Budget **************************************

FR4- Capture Forecasted Budget
    Log To Console    Starting  FR4- Capture Forecasted Budget

    # Select Project Approval Tab
    Wait Until Element Is Visible       ${ProjectManagementProjApprovTab}    40 seconds
    Click Element                       ${ProjectManagementProjApprovTab}

    #Capture Business Unit Verification and Approval
    Wait Until element Is Visible       ${ProjectManagementBUApprovDrp}    40 seconds
    Click Element                       ${ProjectManagementBUApprovDrp}
    Wait Until Element Is Visible       ${ProjectManagementBUApprovSearch}    40 seconds
    Click Element                       ${ProjectManagementBUApprovSearch}
    Input Text                          ${ProjectManagementBUApprovSearch}    auto
    Press Keys                          ${ProjectManagementBUApprovSearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementBUApprovSelect}    40 seconds
    Click Element                       ${ProjectManagementBUApprovSelect}
    #Click Element                       ${ProjectManagementBUApprovDrp}

    Sleep    1 seconds
    # Capture Business Unit Approval
    Wait Until Element Is Visible       ${ProjectManagementBUApproval}    40 seconds
    sleep    2 seconds
    Click Element                       ${ProjectManagementBUApproval}


    #Capture Group approval And Verification
    Wait Until element Is Visible       ${ProjectManagementGroupVerifyDrp}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifyDrp}
    Wait Until Element Is Visible       ${ProjectManagementGroupVerifySearch}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifySearch}
    Input Text                          ${ProjectManagementGroupVerifySearch}    auto
    Press Keys                          ${ProjectManagementGroupVerifySearch}    ENTER
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectManagementGroupVerifySelect}    40 seconds
    Click Element                       ${ProjectManagementGroupVerifySelect}
    #Click Element                       ${ProjectManagementGroupVerifyDrp}

    Sleep    1 seconds
    Wait Until Element Is Visible       ${ProjectManagementGroupApprov}    40 seconds
    sleep    1 seconds
    Click Element                       ${ProjectManagementGroupApprov}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    # Capture project financial tab
    Wait Until Element Is Visible       ${ProjectManagementFinancialTab}    40 seconds
    Click Element                       ${ProjectManagementFinancialTab}

    #Capture total budget

    Wait Until Element Is Visible       ${ProjectManagementTotalBudget}    40 seconds
    Click Element                       ${ProjectManagementTotalBudget}
    Input Text                          ${ProjectManagementTotalBudget}    200000

    #capture Budget Extension
    Wait Until Element Is Visible       ${ProjectManagementBudgetExtChk}    40 seconds
    Click Element                       ${ProjectManagementBudgetExtChk}

    #Capture Total Extension
    Element Should Be visible            ${ProjectManagementBudgetExtInput}
    Wait Until Element Is Visible        ${ProjectManagementBudgetExtInput}    40 seconds
    Click Element                        ${ProjectManagementBudgetExtInput}
    Clear Element Text                   ${ProjectManagementBudgetExtInput}
    Input Text                           ${ProjectManagementBudgetExtInput}    4000

    #Capture total Cost

    Click Element                       ${PayBackPeriod}
    Input Text                          ${PayBackPeriod}    5

    Click Element                       ${SimplepayBack}
    Input Text                          ${SimplepayBack}    1000

    Click Element                       ${NetPresentValue}
    Input Text                          ${NetPresentValue}    10000

    Click Element                       ${CostBeforeIncentives}
    Input Text                          ${CostBeforeIncentives}    40000

    Click Element                       ${TotalCost}
    Input Text                          ${TotalCost}    200000

    Click Element                       ${ROI}
    Input Text                          ${ROI}    5

    Click Element                       ${InternalRateReturn}
    Input Text                          ${InternalRateReturn}    4

    Click Element                       ${loanCost}
    Input Text                          ${loanCost}    400000

    Click Element                       ${FinancialIncentives}
    Input Text                          ${FinancialIncentives}    1000

# Capture forecast Budget

    Wait Until Element Is Visible       ${ProjectManagementRunningCostDrp}    40 seconds
    Click Element                       ${ProjectManagementRunningCostDrp}
    Sleep    5 seconds

    Wait Until Element Is Visible       ${ProjectManagementForecastAdd}    40 seconds
    Click Element                       ${ProjectManagementForecastAdd}
    Sleep    5 seconds


    Wait Until Element Is Visible       ${ForecastYearDrp}    40 seconds
    Click Element                       ${ForecastYearDrp}
    Wait Until Element Is Visible       ${ForecastYearSelect}    40 seconds
    Click Element                       ${ForecastYearSelect}

    Wait Until Element Is Visible       ${ForecastMonthDrp}    40 seconds
    Click Element                       ${ForecastMonthDrp}
    Wait Until Element Is Visible       ${ForecastMonthSelect}    40 seconds
    Click Element                       ${ForecastMonthSelect}

    Wait Until Element Is Visible       ${ForecastQuarterDrp}    40 seconds
    Click Element                       ${ForecastQuarterDrp}
    Wait Until Element Is Visible       ${ForecastQuarterSelect}    40 seconds
    Click Element                       ${ForecastQuarterSelect}

    Wait Until Element Is Visible       ${ForecastExpectedCostInput}    40 seconds
    Click Element                       ${ForecastExpectedCostInput}
    Input Text                          ${ForecastExpectedCostInput}    100000


    Wait Until Element Is Visible       ${ForecastActualCostInput}    40 seconds
    Click Element                       ${ForecastActualCostInput}
    Input Text                          ${ForecastActualCostInput}    120000

 #   Wait Until Element Is Visible       ${ForecastThemeDrp}    40 seconds
 #   Click Element                       ${ForecastThemeDrp}
 #   Wait Until Element Is Visible       ${ForecastThemeSelect}    40 seconds
 #   Click Element                       ${ForecastThemeSelect}

    Wait Until Element Is Visible       ${ForecastComment}    40 seconds
    Click Element                       ${ForecastComment}
    Input Text                          ${ForecastComment}    autotest

    # Save
    Wait Until Element Is Visible       ${ForecastSave}    40 seconds
    Click Element                       ${ForecastSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


#************************************************* FR5- Capture Project Actual *****************************************

FR5- Capture Project Actual
    Log To Console    Starting  FR5- Capture Project Actual


    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProjectmanagementProjectActualDrp}    40 seconds
    Click Element                       ${ProjectmanagementProjectActualDrp}
    Sleep    5 seconds

    Wait Until Element Is Visible       ${ProjectActualAdd}    40 seconds
    Click Element                       ${ProjectActualAdd}
    Sleep    5 seconds


    Wait Until Element Is Visible       ${ProjectActualYearDrp}    40 seconds
    Click Element                       ${ProjectActualYearDrp}
    Wait Until Element Is Visible       ${ProjectActualYearSelect}    40 seconds
    Click Element                       ${ProjectActualYearSelect}

    Wait Until Element Is Visible       ${ProjectActualMonthDrp}    40 seconds
    Click Element                       ${ProjectActualMonthDrp}
    Wait Until Element Is Visible       ${ProjectActualMonthSelect}    40 seconds
    Click Element                       ${ProjectActualMonthSelect}

    Wait Until Element Is Visible       ${ProjectActualQuarterDrp}    40 seconds
    Click Element                       ${ProjectActualQuarterDrp}
    Wait Until Element Is Visible       ${ProjectActualQuarterSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${ProjectActualQuarterSelect}

    Wait Until Element Is Visible       ${ProjectActualBudgetInput}    40 seconds
    Click Element                       ${ProjectActualBudgetInput}
    Input Text                          ${ProjectActualBudgetInput}    100000


    Wait Until Element Is Visible       ${ProjectActualExpendInput}    40 seconds
    Click Element                       ${ProjectActualExpendInput}
    Input Text                          ${ProjectActualExpendInput}    120000


    Wait Until Element Is Visible       ${ProjectActualComment}    40 seconds
    Click Element                       ${ProjectActualComment}
    Input Text                          ${ProjectActualComment}    autotest

    # Save
    Wait Until Element Is Visible       ${ProjectActualSave}    40 seconds
    Click Element                       ${ProjectActualSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

#************************************************* FR6- Capture ECO2Man Project Savings  *******************************
FR6- Capture ECO2Man Project Savings
    Log To Console    FR6- Capture ECO2Man Project Savings

    Wait Until Element Is Visible       ${ProjectECOMANTab}    40 seconds
    Click Element                       ${ProjectECOMANTab}

    Sleep    5 seconds
    Wait Until Element Is Visible       ${ProjectEcoAdd}    40 seconds
    Click Element                       ${ProjectEcoAdd}
    Sleep    5 seconds

    Wait Until Element Is Visible       ${ProjectEcoYearDrp}    40 seconds
    Click Element                       ${ProjectEcoYearDrp}
    Wait Until Element Is Visible       ${ProjectEcoYearSelect}    40 seconds
    Click Element                       ${ProjectEcoYearSelect}

    Wait Until Element Is Visible       ${ProjectEcoMonthDrp}    40 seconds
    Click Element                       ${ProjectEcoMonthDrp}
    Wait Until Element Is Visible       ${ProjectEcoMonthSelect}    40 seconds
    Click Element                       ${ProjectEcoMonthSelect}

    Wait Until Element Is Visible       ${ProjectEcoQuarterDrp}    40 seconds
    Click Element                       ${ProjectEcoQuarterDrp}
    Wait Until Element Is Visible       ${ProjectEcoQuarterSelect}    40 seconds
    Sleep    1 seconds
    Click Element                       ${ProjectEcoQuarterSelect}

    # Save
    Wait Until Element Is Visible       ${ProjectEcoSave}    40 seconds
    Click Element                       ${ProjectEcoSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


    # Select Project Approval Tab
    Wait Until Element Is Visible       ${ProjectManagementProjApprovTab}    40 seconds
    Click Element                       ${ProjectManagementProjApprovTab}


    Wait Until Element Is Visible       ${ProjectMahagementEntityLevelDrp}    40 seconds
    Click Element                       ${ProjectMahagementEntityLevelDrp}
    #Select Approv
    Sleep    1 seconds
    Wait Until Element is visible       ${ProjectManagementApprove}    40 seconds
    Click Element                       ${ProjectManagementApprove}

    Sleep    1 seconds
    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


    Wait Until Element Is Visible       ${ProjectManagementPrjCompleteDrp}    40 seconds
    Click Element                       ${ProjectManagementPrjCompleteDrp}
    Sleep    1 seconds
    Wait Until element Is Visible       ${ProjectManagementPrjCompleteSelect}    40 seconds
    Click Element                       ${ProjectManagementPrjCompleteSelect}

    # Save
    Wait Until Element Is Visible       ${ProjectManagementSave}    40 seconds
    Click Element                       ${ProjectManagementSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds

    #EcoMan Tab
    Sleep    2 seconds
    Wait Until Element Is Visible       ${ProjectECOMANTab}    40 seconds
    Click Element                       ${ProjectECOMANTab}

    Sleep    3 seconds
    Wait Until Element Is Visible       ${ProjectEcoInLineEdit}    40 seconds
    Click Element                       ${ProjectEcoInLineEdit}
    Sleep    10 seconds

    #Capture EcoMan Record

    Wait Until Element Is Visible           ${ProjectEcoRecordSelect}    40 seconds
    Click Element                           ${ProjectEcoRecordSelect}

    #Validate Process Flow
    Sleep    10 seconds
    Wait Until Element Is Enabled           ${ProjectEcoRecordProcess}           60 seconds
    Click Element                           ${ProjectEcoRecordProcess}
    Wait Until Page Contains Element        ${ProjectEcoRecordProcessValidate}

#************************************************* FR7-Capture Energy and GHG Emissions Savings   **********************
FR7-Capture Energy and GHG Emissions Savings
    Log To Console    FR7-Capture Energy and GHG Emissions Savings

    Wait Until element Is Visible           ${ProjectEnergyEmsAdd}    40 seconds
    Click Element                           ${ProjectEnergyEmsAdd}
    Sleep     5 seconds

    #Capture Emission source
    Wait Until element Is Visible           ${ProjectEnergyEmsSourceDrp}    40 seconds
    Click Element                           ${ProjectEnergyEmsSourceDrp}
    Sleep    1 seconds
    Wait Until Element Is Visible           ${ProjectEnergyEmsSourceDirect}    40 seconds
    Click Element                           ${ProjectEnergyEmsSourceDirect}
    Wait Until Element Is Visible           ${ProjectEnergyEmsSourceScope}    40 seconds
    Click Element                           ${ProjectEnergyEmsSourceScope}
    Wait Until Element Is Visible           ${ProjectEnergyEmsSourceSelect}    40 seconds
    Click Element                           ${ProjectEnergyEmsSourceSelect}

    #Capture Measurement
    Wait Until Element Is Visible           ${ProjectEnergyEmsMeasureInput}    40 seconds
    Click Element                           ${ProjectEnergyEmsMeasureInput}
    Input Text                              ${ProjectEnergyEmsMeasureInput}    1200

    #Capture Target
    Wait Until Element Is Visible           ${ProjectEnergyEmsTargetInput}    40 seconds
    Click Element                           ${ProjectEnergyEmsTargetInput}
    Input Text                              ${ProjectEnergyEmsTargetInput}    1000

    # Save
    Wait Until Element Is Visible       ${ProjectEnergyEmsSave}    40 seconds
    Click Element                       ${ProjectEnergyEmsSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds


#************************************************* FR-7 Approve Record as an ECO2Man indicator  ************************

FR-7 Approve Record as an ECO2Man indicator
    Log To Console    FR-7 Approve Record as an ECO2Man indicator

    Sleep    10 seconds
    Wait Until element Is Visible       ${ProjectEcoRefresh}    40 seconds
    Click Element                       ${ProjectEcoRefresh}
    Sleep    10 seconds

    Wait Until Element Is Enabled           ${ProjectEcoRecordProcess}           60 seconds
    Click Element                           ${ProjectEcoRecordProcess}

    Wait Until Element Is Visible       ${ProjectEcoApprove}    40 seconds
    Click Element                       ${ProjectEcoApprove}
    Sleep    1 seconds
    Wait Until Element Is Visible       ${ProjectEcoApproveYes}    40 seconds
    Click Element                       ${ProjectEcoApproveYes}

    #Add comment
    Wait Until Element Is Visible       ${ProjectecoComment}    40 seconds
    Click Element                       ${ProjectecoComment}
    Input Text                          ${ProjectecoComment}    Auto Test

    # Save
    Wait Until Element Is Visible       ${ProjectEcoRecordSave}    40 seconds
    Click Element                       ${ProjectEcoRecordSave}
    Wait Until Element Is Not Visible    ${LoadingBarXpath}    40 seconds







