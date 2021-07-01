*** Variables ***
${ProjectManagementID}                  id:section_36b7a14a-589f-4a62-97e8-ac6a76739785
${ProjectManagementAddNew}              id:btnActAddNew
${ProjectManagememntProcessID}          id:btnProcessFlow_form_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8
${ProjectManagementEntityDrp}           xpath://*[@id="control_1520F92C-A849-4812-8D9D-48C3B8A475C1"]/div[1]/a/span[1]/ul/li
${ProjectManagementEntityXpath}         xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${ProjectManagementEntityXpath2}        xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${ProjectManagementEntitySelect}        xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]/i[1]
${ProjectManagementEntityCloseDrp}      xpath://*[@id="control_1520F92C-A849-4812-8D9D-48C3B8A475C1"]/div[1]/a/span[2]/b[1]
${ProjectManagementEntityProjectIn}     xpath://*[@id="control_25EB4FB1-8A46-4B5C-9419-D850BAC7D5C0"]/div[1]/div/input
${ProjectManagementEntityProjetDesc}    xpath://*[@id="control_A85BCF71-D318-48A6-8BFD-97C66773E72A"]/div[1]/div/textarea
${ProjectManagementThemeDrp}            xpath://*[@id="control_715A0D37-4AC8-4BE7-95B2-71553DB78C68"]/div[1]/a/span[1]/ul/li
${ProjectManagementThemeSelectCarbon}   xpath://*[@id="cb513ccd-d16a-4aac-b580-13802fe139c9_anchor"]/i[1]
#Altenate Scenario
${ProjectManagementThemeSelectMining}   xpath://*[@id="1eaccad7-4d33-466d-a842-4920e3650692_anchor"]/i[1]
${ProjectManagementFunctionDrp}         xpath://*[@id="control_41A605ED-98FD-4802-BC9D-2FCA94269092"]/div[1]/a/span[1]/ul/li
${ProjectManagementFunctionSelect}      xpath://*[@id="0e89df7f-0882-4aa6-aeeb-3ea298d6fa7c_anchor"]
${ProjectManagementPlanStart}           xpath://*[@id="control_5074F575-966B-494C-B1ED-67E9183DA29B"]/div[1]/span/span/input
${ProjectManagementPlanStop}            xpath://*[@id="control_2696F1DC-0178-43DA-8B70-91507F331D0E"]/div[1]/span/span/input
${ProjectManagementObjDesc}             xpath://*[@id="control_6860687C-65AE-45F7-BDDA-8CDEA75D220F"]/div[1]/div/textarea
${ProjectManagementDueDeligence}        xpath://*[@id="control_3D5045CD-51F0-4805-93B1-9FAE68008EB5"]/div[1]/div/textarea
${ProjectManagementOriginatorDrp}       xpath://*[@id="control_9980D6DE-BCBF-457A-BCAC-A88401FC774F"]/div[1]/a/span[1]/ul/li
${ProjectManagenmentOriginatorSearch}   xpath:/html/body/div[1]/div[3]/div/div[2]/div[17]/div[1]/input
${ProjectManagementOriginatorSelect}    xpath://*[@id="cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor"]
${ProjectManagementSupportingDoc}       xpath://*[@id="tab_95B50A9A-A104-4856-B448-85D53198ED1E"]/div[1]
${ProjectManagementSupportDocLink}      xpath://*[@id="control_2697B8D7-645F-49AF-B662-7ABB96ECA796"]/div[1]/div[1]/div[2]/b[2]
${ProjectManagementSave}                xpath://*[@id="btnSave_form_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8"]/div[3]
${ProjectmanagementValidateReview}      xpath:(//div[@id='divProcess_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Under review']

#************************************************* FR2- Review Registered Project **************************************
${ProjectManagementProjApprovTab}       xpath://*[@id="tab_07BE855B-7F21-4612-9340-5D29DED9162F"]/div[1]
${ProjectManagementBUApprovDrp}         xpath://*[@id="control_2FF574BD-30CF-4FF5-91FF-BA377D274257"]/div[1]/a/span[1]/ul/li
${ProjectManagementBUApprovSearch}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[21]/div[1]/input
${ProjectManagementBUApprovSelect}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${ProjectManagementGroupVerifyDrp}      xpath://*[@id="control_65874E3C-E890-439D-9391-CB2C5C097F2D"]/div[1]/a/span[1]/ul/li
${ProjectManagementGroupVerifySearch}   xpath:/html/body/div[1]/div[3]/div/div[2]/div[22]/div[1]/input
${ProjectManagementGroupVerifySelect}   xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${ProjectManagementBUApproval}          xpath://*[@id="control_3EF346F7-9D0F-45AB-A19F-3E674291E795"]/div[1]/div
${ProjectManagementDateTimeApprov}      xpath://*[@id="control_4D7C92FA-B1C7-4A4F-AD4D-88D095D9F57D"]/div[1]/span/span/input
${ProjectManagementGroupApprov}         xpath://*[@id="control_1A10F073-629F-402F-ABA6-5EDB4613C198"]/div[1]/div
${ProjectManagementProcessIdea}         xpath:(//div[@id='divProcess_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Idea']
#************************************************* FR3- Approve Project ************************************************
${ProjectMahagementEntityLevelDrp}      xpath://*[@id="control_2C9ACBE2-77AD-412D-B47B-BDD8CC3E879A"]/div[1]/a/span[1]/ul/li
${ProjectManagementPark}                xpath://*[@id="505ad595-2784-48f1-9d1c-89e93fa17a3a_anchor"]
${ProjectManagementProcessParked}       xpath:(//div[@id='divProcess_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Parked']
${ProjectManagementApprove}             xpath://*[@id="cb4ec4b9-dbeb-4ae8-be26-d048066d3ee7_anchor"]
${ProjectManagementProcessApprov}       xpath:(//div[@id='divProcess_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Approved']
${ProjectManagementPrjCompleteDrp}      xpath://*[@id="control_29349D39-CD39-4D5C-9540-5A484828AEB8"]/div[1]/a/span[1]/ul/li
${ProjectManagementPrjCompleteSelect}   id:14f2fba0-4b57-42aa-9cba-f1d9c372d3e6_anchor
${ProjectManagementProcessComplete}     xpath:(//div[@id='divProcess_D1FDADB7-365B-4404-86D2-CA8FC2DE7FE8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Completed']

#************************************************* FR4- Capture Forecasted Budget **************************************
${ProjectManagementFinancialTab}        xpath://*[@id="tab_2F470536-789E-463C-8E35-9A9759A0CC47"]/div[1]
${ProjectManagementTotalBudget}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[3]/div[9]/div[2]/div[2]/div[1]/div/input
${ProjectManagementBudgetExtChk}        xpath://*[@id="control_1D35A9A4-3615-4BE5-B4F9-1238EC675264"]/div[1]/div
${ProjectManagementBudgetExtInput}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[3]/div[9]/div[2]/div[8]/div[1]/div/input

#Total Cost
${PayBackPeriod}                        xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[2]/div[1]/div/input
${SimplepayBack}                        xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[6]/div[1]/div/input
${NetPresentValue}                      xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[10]/div[1]/div/input
${CostBeforeIncentives}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[14]/div[1]/div/input
${TotalCost}                            xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[18]/div[1]/div/input
${ROI}                                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[4]/div[1]/div/input
${InternalRateReturn}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[8]/div[1]/div/input
${loanCost}                             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[12]/div[1]/div/input
${FinancialIncentives}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[4]/div[9]/div[2]/div[16]/div[1]/div/input

#Forecast Budget
${ProjectManagementRunningCostDrp}      xpath://*[@id="control_6D541112-6690-40F3-9264-4455688DC8D9"]/div[9]/div[1]/i
${ProjectManagementForecastAdd}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[6]/div[9]/div[2]/div/div[1]/div[1]/div[2]/div[1]/div
${ForecastYearDrp}                      xpath://*[@id="control_150EC693-165C-4E73-BEBB-504FBD502D82"]/div[1]/a/span[2]/b[1]
${ForecastYearSelect}                   xpath://*[@id="cf7e8ba0-4e56-4715-b99d-af406fdfd989_anchor"]
${ForecastMonthDrp}                      xpath://*[@id="control_08E434A9-DE22-411F-BBF3-2C3571D40DDD"]/div[1]/a/span[2]/b[1]
${ForecastMonthSelect}                   xpath://*[@id="3434a90d-5720-4c70-9a5b-23b6a864b33d_anchor"]
${ForecastQuarterDrp}                   xpath://*[@id="control_E0BA8E50-4E2F-4EFB-A7B8-278823A61B83"]/div[1]/a/span[2]/b[1]
${ForecastQuarterSelect}                xpath://*[@id="649349b0-a22d-4859-8505-b53c1135fc84_anchor"]
${ForecastExpectedCostInput}            xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[6]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[7]/div/div[1]/div/input
${ForecastActualCostInput}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[6]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[8]/div/div[1]/div/input
${ForecastThemeDrp}                     xpath://*[@id="control_D18498F9-9022-47BF-A73C-BF3E30A58FBA"]/div[1]/a/span[2]/b[1]
${ForecastThemeSelect}                  xpath:/html/body/div[54]/ul[1]/ul/li[6]/a
${ForecastComment}                      xpath://*[@id="control_A548DCD9-D4BE-49AE-B3E0-BA5DD9F1DFE1"]/div[1]/div/textarea
${ForecastSave}                         xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[6]/div[9]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div

#************************************************* FR5- Capture Project Actual *****************************************

${ProjectmanagementProjectActualDrp}    xpath://*[@id="control_52843E09-B158-4FF9-B22B-D59DCC97A72E"]/div[9]/div[1]/i
${ProjectActualAdd}                     xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[5]/div[9]/div[2]/div/div[1]/div[1]/div[2]/div[1]/div
${ProjectActualYearDrp}                 xpath://*[@id="control_8B94E076-D52E-415B-BC9F-AE2A6E65EA76"]/div[1]/a/span[2]/b[1]
${ProjectActualYearSelect}              xpath:(//div[contains(@class, 'transition visible')]//a[text()='2018'])[1]
${ProjectActualMonthDrp}                xpath://*[@id="control_D7960673-32FB-45E2-AE62-A23E9DD56AB5"]/div[1]/a/span[2]/b[1]
${ProjectActualMonthSelect}             xpath:(//div[contains(@class, 'transition visible')]//a[text()='August'])[1]
${ProjectActualQuarterDrp}              xpath://*[@id="control_09A9662E-8EDC-4BEA-87C3-0C62227BCFF5"]/div[1]/a/span[2]/b[1]
${ProjectActualQuarterSelect}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='Quarter 1'])[1]
${ProjectActualBudgetInput}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[5]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[7]/div/div[1]/div/input
${ProjectActualExpendInput}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[5]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[8]/div/div[1]/div/input
${ProjectActualComment}                 xpath://*[@id="control_6AA1FBC9-1B91-48A3-8BD3-6C7897CDB165"]/div[1]/div/textarea
${ProjectActualSave}                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[3]/div/div[5]/div[9]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div

#************************************************* FR6- Capture ECO2Man Project Savings  *******************************
${ProjectECOMANTab}                     xpath://*[@id="tab_0BBC8D87-A4E3-4E3D-BBDB-B1B5342F098C"]/div[1]
${ProjectEcoAdd}                        xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[4]/div/div[5]/div[1]/div[1]/div[2]/div[1]/div
${ProjectEcoYearDrp}                    xpath://*[@id="control_45F50355-91F4-453E-8BA5-27960EA63317"]/div[1]/a/span[2]/b[1]
${ProjectEcoYearSelect}                 xpath:(//div[contains(@class, 'transition visible')]//a[text()='2018'])[1]
${ProjectEcoMonthDrp}                   xpath://*[@id="control_40F5E1DE-02A0-4792-91BB-CCD5B87E86FC"]/div[1]/a/span[2]/b[1]
${ProjectEcoMonthSelect}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='August'])[1]
${ProjectEcoQuarterDrp}                 xpath://*[@id="control_B9379CD8-9321-422E-A41F-234FC59BB47F"]/div[1]/a/span[2]/b[1]
${ProjectEcoQuarterSelect}              xpath:(//div[contains(@class, 'transition visible')]//a[text()='Quarter 1'])[1]
${ProjectEcoSave}                       xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[4]/div/div[5]/div[1]/div[1]/div[2]/div[2]/div
${ProjectEcoInLineEdit}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[4]/div/div[5]/div[1]/div[2]/div[2]/div[1]/div[4]/div/div[2]/div[1]/div/div
${ProjectEcoRecordSelect}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[4]/div/div[5]/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[4]
${ProjectEcoRecordProcess}              xpath://*[@id="btnProcessFlow_form_2EF3D326-2BF6-4A97-87DF-3A7EC95ADDD6"]/span
${ProjectEcoRecordProcessValidate}      xpath:(//div[@id='divProcess_2EF3D326-2BF6-4A97-87DF-3A7EC95ADDD6'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#************************************************* FR7-Capture Energy and GHG Emissions Savings   **********************
${ProjectEnergyEmsAdd}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[44]/div[4]/div[24]/div[1]/div[1]/div[2]/div[1]/div
${ProjectEnergyEmsSourceDrp}            xpath://*[@id="control_FE707531-9D1D-4591-86A9-6E667856415B"]/div[1]/a/span[1]/ul/li
${ProjectEnergyEmsSourceDirect}         xpath://*[@id="641be36e-62f9-4a4f-8516-bcaa95b0e996"]/i
${ProjectEnergyEmsSourceScope}          xpath://*[@id="04057da3-9fbc-4b5b-b5d1-e8035175a22d"]/i
${ProjectEnergyEmsSourceSelect}         xpath://*[@id="a27eefed-8cc7-45ba-8ba2-005edd1dd805_anchor"]
${ProjectEnergyEmsMeasureInput}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[44]/div[4]/div[24]/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[5]/div/div[1]/div/input
${ProjectEnergyEmsTargetInput}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[44]/div[4]/div[24]/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[7]/div/div[1]/div/input
${ProjectEnergyEmsSave}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[44]/div[4]/div[24]/div[1]/div[1]/div[2]/div[2]/div

#************************************************* FR-7 Approve Record as an ECO2Man indicator  ************************
${ProjectEcoRefresh}                    xpath://*[@id="control_D489241E-BE02-46E2-B98E-9DBCD1603716"]/div[1]/div
${ProjectEcoApprove}                    xpath://li[text()='No']
${ProjectEcoApproveYes}                 xpath://*[@id="14f2fba0-4b57-42aa-9cba-f1d9c372d3e6_anchor"]
${ProjectEcoComment}                    xpath://*[@id="control_57B502E1-6C11-4074-8ADA-9241754F6C6F"]/div[1]/div/textarea
${ProjectEcoRecordSave}                 xpath://*[@id="btnSave_form_2EF3D326-2BF6-4A97-87DF-3A7EC95ADDD6"]/div[3]

#************************************************* FR8-Capture Project Actions    **************************************
${ProjectManagementActionTab}           xpath://*[@id="tab_2F546884-CEFA-4353-B0B9-5C14C258D450"]/div[1]
${ProjectActionAdd}                     xpath://*[@id="btnAddNew"]/div
${ProjectActionProcess}                 xpath://*[@id="btnProcessFlow_form_F54AE783-1378-4974-A7E8-4B5D1C4A79F3"]/span
${ProjectActionSave}                    id:btnSave_form_F54AE783-1378-4974-A7E8-4B5D1C4A79F3
${ProjectActionsEntityXpath}            xpath:(//a[text()='Anglo American Group']/../i)[1]
${ProjectActionsEntityXpath2}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[50]/ul[1]/ul/li/ul/li[3]/i
${ProjectActionsEntityXpath3}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[50]/ul[1]/ul/li/ul/li[3]/ul/li[6]/i
${ProjectActionsEntitySelect}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='Sishen Mine'])[1]
${ProjectActionsRespSearch}             xpath:(//input[@placeholder='Type and enter to search'])[9]
${ProjectActionsRespSelect}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[51]/ul[1]/ul/li[5]/a
${ProjectActionRecuringSelect}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[55]/ul[1]/ul/li[2]/a

#************************************************* FR11-View Linked Engagements     ************************************
${ProjectActionClose}                   xpath://*[@id="form_F54AE783-1378-4974-A7E8-4B5D1C4A79F3"]/div[1]/i[2]
${ProjectActionCloseYes}                id:btnConfirmYes
${ProjectLinkEngTab}                    xpath://*[@id="tab_BE392F5B-6860-4EFB-B4F7-B05B69EF9DBF"]/div[1]
${ProjectLinkSearchBtn}                 xpath://div[text()='Linked Engagements']/..//*[@id="btnFilter"]/div
${ProjectLinkSearch}                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[6]/div/div/div[1]/div[2]/div[1]/div[3]/table/tbody/tr[5]/td[5]/input
${ProjectLinkSearchBtn2}                xpath://*[@id="btnActApplyFilter_C5D7993E-A223-4AE0-A15D-119FE22E21DC_smc13"]/div
${ProjectLinkSelectRec}                 xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[4]
${ProjectEngagementProcess}             xpath://*[@id="btnProcessFlow_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC"]/span




