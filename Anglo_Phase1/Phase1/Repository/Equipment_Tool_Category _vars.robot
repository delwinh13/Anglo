*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${HygieneButton}                            xpath://*[@id="section_50588bfc-de0f-4bea-bc98-7fd4b1bcd249"]/label

#************************************************* Occupational Hygiene Page ****************************************
${HygieneMaintenanceButton}                 xpath://*[@id="section_a36df9b8-4561-4e4f-a463-9b2f70014924"]/i

#************************************************* Hygiene Maintenance Page ****************************************
${EquipmentandToolButton}                   xpath://*[@id="section_b293f86c-7af2-447c-90a9-cdff38576dc5"]/label
${ETCAddButton}                             xpath://*[@id="btnActAddNew"]/div
${ProcessFlowButton}                        xpath://*[@id="btnProcessFlow_form_C8B51579-B5CC-45AC-86BE-2FC9AD3E2E93"]/span
${ProcessflowAddPhase}                      xpath:(//div[@id='divProcess_C8B51579-B5CC-45AC-86BE-2FC9AD3E2E93'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${BusinessUnitDropdown}                     xpath://*[@id="control_9813CB09-564E-484B-BEDA-CB145068922B"]/div[1]/a/span[2]/b[1]
${BUAAGOption}                              xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BUBCOOption}                              xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BUKOption}                                xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BUSMOption}                               xpath://*[@id="25742496-c98d-431e-96c8-18619861422e"]/i
${BUSMBPOption}                             xpath://*[@id="54f00015-2059-48c0-9d06-c9dd52d482e9_anchor"]
${FunctionLocationDropdown}                 xpath://*[@id="control_8E81CB6F-0308-4E33-8E67-5FB9EEA28B62"]/div[1]/a/span[2]/b[1]
${FunctionLocationSelect}                   xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]
${ProcessActivityDropdown}                  xpath://*[@id="control_5D8FAA01-8FBF-429D-AFF7-D99417061030"]/div[1]/a/span[2]/b[1]
${AcidPlantDaimondbox}                      xpath://*[@id="ee716afa-4c2f-4b3d-a82f-6c7b000686aa"]/i
${AcidOutloadingCheckbox}                   xpath://*[@id="8e78eefa-b517-4550-9d8b-75a2570958c3_anchor"]/i[1]
${CatogryDropdown}                          xpath://*[@id="control_7693EC63-3C78-43C0-A571-F95BCF825CC6"]/div[1]/a/span[2]/b[1]
${PowerToolsSelection}                      xpath://*[@id="d3fb0fef-f243-45ef-8d02-1d4fdebefe98_anchor"]
${HygieneEquipmentSelection}                xpath://*[@id="e55d8fb6-996b-4a21-99e1-38572b4fe648_anchor"]
${EquipmentCategoryDropdown}                xpath://*[@id="control_DD223590-4274-44FC-9F63-7C8F598FE683"]/div[1]/a/span[2]/b[1]
${NoiseMonitoringSelection}                 xpath://*[@id="931b0d9a-901d-4ecb-9f44-571cf42321ad_anchor"]
${EquipmentTypeDropdown}                    xpath://*[@id="control_6C5BF48E-4FBD-43EA-9F7E-80319C8BC688"]/div[1]/a/span[2]/b[1]
${DosimeterSelection}                       xpath://*[@id="721ae586-5162-456f-89ed-11e4f892d425_anchor"]
${SaveButtonXpath}                          xpath://*[@id="control_42624A32-59AF-47CB-B31E-535EF2EA9C25"]/div[1]/div
${ProcessflowEditPhase}                     xpath:(//div[@id='divProcess_C8B51579-B5CC-45AC-86BE-2FC9AD3E2E93'])[2]/div/div[2]/div[3]/div[1]//div[text()='Edit phase']

#************************************************* View Equipment Page ***********************************************
${CloseButton}                              xpath://*[@id="form_C8B51579-B5CC-45AC-86BE-2FC9AD3E2E93"]/div[1]/i[2]
${SearchButton}                             xpath://*[@id="btnActApplyFilter"]/div
${RecordButton}                             xpath://*[@id="grid"]/div[3]/table/tbody/tr[1]
${ProcessFlowButton}                        xpath://*[@id="btnProcessFlow_form_C8B51579-B5CC-45AC-86BE-2FC9AD3E2E93"]/span

#************************************************* Asset Details add Page ***********************************************
${AssetAddButton}                           xpath://*[@id="btnAddNew"]/div
${ProcessFlowButton}                        xpath://*[@id="btnProcessFlow_form_AB4CF802-14F5-467B-8B87-9D8F7C4A11D0"]/span
${ProcessflowAddPhase}                      xpath:(//div[@id='divProcess_AB4CF802-14F5-467B-8B87-9D8F7C4A11D0'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${EquipmentClassification}                  xpath://*[@id="control_C6598D7D-93DC-4158-8761-42F4E1C26485"]/div[1]/a/span[2]/b[1]
${ECHiredSelection}                         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Hired'])[1]
${ContractorOwnedSelection}                 xpath:(//div[contains(@class, 'transition visible')]//a[text()='Contractor owned'])[1]
${DateHiredFrom}                            xpath://*[@id="control_45910821-DAF3-499B-BED7-5E63CA26EF6C"]/div[1]/span/span/input
${DateHiredTo}                              xpath://*[@id="control_4668E08F-64F1-48CF-8AAB-A4B4C7DBD005"]/div[1]/span/span/span/span
${DateHiredToSelection}                     xpath://*[@id="control_4668E08F-64F1-48CF-8AAB-A4B4C7DBD005"]/div[1]/span/span/input
${DocumentUpload}                           xpath://*[@id="control_3ED7740A-A308-4CB9-B5B2-D30BACF04D64"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocLinkDoc}                     xpath://*[@id="control_E4BE7A2E-B6EC-4AA6-954C-791A204FFDC6"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                     xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                     xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                    xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                      xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                    xpath://*[@id="doc_url"]
${ECHiredSelection}                         xpath://*[@id="cff5b609-d8e6-4c2c-89d5-3632f3648fcd_anchor"]
${ServiceProviderContractorDropdown}        xpath://*[@id="control_E836F8C9-6000-4489-8F0F-7EB2B9759578"]/div[1]/a/span[2]/b[1]
${AeroCareSelection}                        xpath://*[@id="edd47f32-7b50-4251-a231-4e526cf6b99c_anchor"]
${IsaServiceRequiredDropdown}               xpath://*[@id="control_A5D4F368-94DB-40B9-9138-CE6F7589882F"]/div[1]/a/span[2]/b[1]
${YesSelection}                             xpath:(//div[contains(@class, 'transition visible')]//a[text()='Yes'])[1]
${NoSelection}                              xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])[1]
${LastDateOfService}                        xpath://*[@id="control_5F3A4F14-7C7E-40A9-B312-23EE0841C485"]/div[1]/span/span/input
${NextDateOfService}                        xpath://*[@id="control_DB651ABE-F5CB-4834-BCE7-AC8B33F3ED15"]/div[1]/span/span/span/span
${NextDateOfServiceSelection}               xpath://*[@id="control_DB651ABE-F5CB-4834-BCE7-AC8B33F3ED15"]/div[1]/span/span/input
${HARSBCDropDown}                           xpath://*[@id="control_492DCD3E-F963-4B13-ABAE-5FB9AF11E7C8"]/div[1]/a/span[2]/b[1]
${HARSBCYesSelection}                       xpath:(//div[contains(@class, 'transition visible')]//a[text()='Yes'])[1]
${HARSBCNoSelection}                        xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])[1]
${RelatedRiskAssesmentDropdown}             xpath://*[@id="control_BDC1B6FE-CC1E-4A0B-A9A5-1C0BED3E2E25"]/div[1]/a/span[2]/b[1]
${RequiredTrainigDropdown}                  xpath://*[@id="control_C8B4AC16-21E6-4093-B09C-19DDA5F619EB"]/div[1]/a/span[2]/b[1]
${AETSelection}                             xpath://*[@id="9158f1fa-d5f7-44f3-8c05-4e24cc047bfc_anchor"]/i[1]
${RequiredPermitsDropdown}                  xpath://*[@id="control_9233570E-3D3D-4FC7-9C20-9257C924E7B4"]/div[1]/a/span[2]/b[1]
${GMDRTSelection}                           xpath://*[@id="5bb21fad-8a52-47f8-8e0c-c0c6911547e0_anchor"]/i[1]
${MFRSerialNoTextbox}                       xpath://*[@id="control_86542DB2-DE30-4E3B-A12F-2FA36946680C"]/div[1]/div/input
${RegoAssetTextbox}                         xpath://*[@id="control_237743FF-B94B-47EB-A061-9037D2E1F3E4"]/div[1]/div/input
${LicenceToOperateTextbox}                  xpath://*[@id="control_229951D4-AFF2-495A-AC88-6E852A8662DC"]/div[1]/div/input
${PHADate}                                  xpath://*[@id="control_FB880749-1010-4971-A86C-2A2BF152B57F"]/div[1]/span/span/input
${DatecheckSheetCompleteDate}               xpath://*[@id="control_C652C1A0-13A3-4630-8FCD-BEA69EDF8091"]/div[1]/span/span/input
${MaintenancePlantDropdown}                 xpath://*[@id="control_412D42BD-54F1-4F68-B9A9-4C8053E09C81"]/div[1]/a/span[2]/b[1]
${EJooSelection}                            xpath:(//div[contains(@class, 'transition visible')]//a[text()='EJ00'])[1]
${WorkCeneterCodeDropdown}                  xpath://*[@id="control_4C114D9C-3B9B-4AD5-91A2-4DD29EAA07F8"]/div[1]/a/span[2]/b[1]
${RMScrubSelection}                         xpath://*[@id="de871c2f-c831-4c10-bdd0-4120d34729b3_anchor"]
${SortfiledTextbox}                         xpath://*[@id="control_B3CA1F01-0613-4C31-8BE2-45B7DA0686E1"]/div[1]/div/input
${PlanningPlantDropdown}                    xpath://*[@id="control_58DF1B48-D156-4079-B87D-FC85D3D40754"]/div[1]/a/span[2]/b[1]
${EdooSelection}                            xpath:(//div[contains(@class, 'transition visible')]//a[text()='ED00'])[1]
${EquipmentTextbox}                         xpath://*[@id="control_CD3EE93E-15E5-445B-B1BB-49E606C1D453"]/div[1]/div/input
${AssetNumberTextbox}                       xpath://*[@id="control_E3B0C574-0A42-4ABA-A575-F17186861205"]/div[1]/div/input
${ServiceFrequencyDropdown}                 xpath://*[@id="control_BEF66AD1-94E7-454A-8AEF-DA05CE4F8D25"]/div[1]/a/span[2]/b[1]
${AnnuallySelection}                        xpath://*[@id="81540df6-7d22-4c90-9d54-298675b06548_anchor"]
${OwnerDropdown}                            xpath://*[@id="control_3962E631-1F81-475F-A6AD-02502500363A"]/div[1]/a/span[2]/b[1]
${AaronAdamSelection}                       xpath://*[@id="4e9fad73-56a1-4fe1-92de-6232267ddbed_anchor"]
${MakeTextbox}                              xpath://*[@id="control_9463035D-BB16-4E11-875A-E229F4E9D1A8"]/div[1]/div/input
${ModelTextbox}                             xpath://*[@id="control_4AEB9EB2-B321-4581-A6AD-E4ECD319DC8E"]/div[1]/div/input
${TypeTextbox}                              xpath://*[@id="control_0802DF4C-3620-449E-A811-0CDB979F5251"]/div[1]/div/input
${DateOnsite}                               xpath://*[@id="control_282D024A-BF38-4726-9548-2E6F7660266E"]/div[1]/span/span/input
${DateOffsite}                              xpath://*[@id="control_916C8B16-7010-41B4-A816-AEEBEF11CA21"]/div[1]/span/span/span/span
${DateOffsiteSelection}                     xpath://*[@id="control_916C8B16-7010-41B4-A816-AEEBEF11CA21"]/div[1]/span/span/input
${LastRoutineMaintenanceDate}               xpath://*[@id="control_6A625A7F-26A6-4490-AB4A-1828DE252D5A"]/div[1]/span/span/input
${NextRoutineMaintenanceDate}               xpath://*[@id="control_D0AC409D-7100-4B56-9D83-6F78CF0136BF"]/div[1]/span/span/span/span
${NextRoutineMaintenanceDateSelection}      xpath://*[@id="control_D0AC409D-7100-4B56-9D83-6F78CF0136BF"]/div[1]/span/span/input
${SaveButtonXpath}                          xpath://*[@id="btnSave_form_AB4CF802-14F5-467B-8B87-9D8F7C4A11D0"]/div[3]
${ProcessflowEditPhase}                     xpath:(//div[@id='divProcess_AB4CF802-14F5-467B-8B87-9D8F7C4A11D0'])[2]/div/div[2]/div[3]/div[1]//div[text()='Edit phase']