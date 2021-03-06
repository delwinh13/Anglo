*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${HazardousChemicalRegisterButtonXpath}     xpath://*[@id="section_8fe86495-31eb-4e4d-9b8a-565502b8070d"]/label

#************************************************* Hazardous Chemical Register Page ****************************************
${HCRAddButtonXpath}                        xpath://*[@id="btnActAddNew"]/div
${MSDSDate}                                 xpath:(//div[@id='control_E43EB4FC-5B5D-4FFE-A965-5FA9A4CB6CC5']//span//input)[1]
${ProcessflowButtonXpath}                  xpath://*[@id="btnProcessFlow_form_67D12C4F-9715-42CB-8583-738A005007A8"]/span
${ProcessflowAddPhaseXpath}                xpath:(//div[@id='divProcess_67D12C4F-9715-42CB-8583-738A005007A8'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${BusinessUnitDropdownXpath}                xpath://*[@id="control_AD3C13E2-9656-41FD-A34C-EE383DC2A31F"]/div[1]/a/span[2]/b[1]
${BUAAGOptionXpath}                         xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BUBCOOptionXpath}                         xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BUKOptionXpath}                           xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BUSMOptionXpath}                          xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]/i[1]
${ProductNameXpath}                         xpath://*[@id="control_B905120F-ACCF-4D0F-9581-011087860FA3"]/div[1]/div/input
${ProductTypeDropdownXpath}                 xpath://*[@id="control_BD627252-0283-4936-87A8-39B986996D22"]/div[1]/a/span[2]/b[1]
${ProductTypeDropdownSelectionXpath}        xpath://*[@id="95c85537-4f59-4192-911d-01f1ba5e6d33_anchor"]
${CASNumberXpath}                           xpath://*[@id="control_3718882C-CF41-4499-A620-18A495CABDD5"]/div[1]/div/input
${UNNumberXpath}                            xpath://*[@id="control_026D95E3-1258-4A28-83A3-4A6C6E3E2F96"]/div[1]/div/input
${ClassificationDropDownXpath}              xpath://*[@id="control_91EB3EC7-8DFF-4358-90D4-0DDD31F9ECF4"]/div[1]/a/span[2]/b[1]
${ClassificationDropDownSelectionXpath}     xpath://*[@id="15ba3509-e00d-4bf2-8349-0fefebfb1dd6_anchor"]
${HazmatClassDropDownXpath}                 xpath://*[@id="control_69FA54EA-D3A8-4ACA-8792-761E7F552055"]/div[1]/a/span[2]/b[1]
${HazmatClassDropDownSelectionXpath}        xpath://*[@id="a1fd2075-7afd-4a9e-b0f1-0339a4cc1e24_anchor"]
${MethodOfUseDropDownXpath}                 xpath://*[@id="control_3C53D123-6E58-4247-83D4-8C53A8ABAA14"]/div[1]/a/span[2]/b[1]
${MethodOfUseDropDownCheckboxXpath}         xpath://*[@id="d06650bd-704c-4fe9-9f3d-a6fd7f50b691_anchor"]/i[1]
${DirectLinkTextBoxXpath}                   xpath://*[@id="control_D538FDF0-1C5A-44D9-A074-F7EBB092FBFE"]/div[1]/div/input
${CompositionTextBoxXpath}                  xpath://*[@id="control_7DE5BC9F-B718-4056-89CC-E63EA994DB5C"]/div[1]/div/textarea
${PhysicalProTextBoxXpath}                  xpath://*[@id="control_9DE3E974-2FE4-436B-B147-9121E9A7A311"]/div[1]/div/textarea
${ApplicableAreasDropDownXpath}             xpath://*[@id="control_6DC82F64-E458-4F4D-A06D-E2F44AC72A6D"]/div[1]/a/span[2]/b[1]
${ApplicableAreasDropDownSelectionXpath}    xpath://*[@id="1b240917-c997-477d-8475-44851c4765a1_anchor"]
${LocationsWIUDropDownXpath}                xpath://*[@id="control_6B5C71D1-4CAF-493E-9FB0-9CAE7DADCDC5"]/div[1]/a/span[2]/b[1]
${LocationsWIUDropDownSelectionXpath}       xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969"]/i
${LocationsWIUDropDownSelectionXpath1}      xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${MaxStockXpath}                            xpath://*[@id="control_5B603B73-0804-42C9-9596-6B7CD064B2A0"]/div[1]/div/input
${MSDSDateSelectionXpath}                   xpath://*[@id="control_E43EB4FC-5B5D-4FFE-A965-5FA9A4CB6CC5"]/div[1]/span/span/input
${EmergencyControlFireXpath}                xpath://*[@id="control_0E2005C9-9B91-4130-AE39-1BBC01D2F5D4"]/div[1]/div/textarea
${EmergencyControlURXpath}                  xpath://*[@id="control_834FC2E7-6199-4949-A037-9949DF4C9DE9"]/div[1]/div/textarea
${EmergencyControlSXpath}                   xpath://*[@id="control_63FD2668-B3D2-4AD0-B175-FC42DE7AD779"]/div[1]/div/textarea
${EmergencyActionsECXpath}                  xpath://*[@id="control_62A59CC5-ED48-4804-A230-FAB4EBBD4971"]/div[1]/div/textarea
${EmergencyActionsSCXpath}                  xpath://*[@id="control_F2F76ACE-AB6E-409C-AD99-5CA3DBA53E69"]/div[1]/div/textarea
${EmergencyActionsInhalationXpath}          xpath://*[@id="control_108F3DF6-886E-4708-9ADC-B119BE881EFC"]/div[1]/div/textarea
${EmergencyActionsIngestionXpath}           xpath://*[@id="control_AD31D5D0-3934-49FE-B674-440C6447E056"]/div[1]/div/textarea
${ApprovedDisposalMethodsXpath}             xpath://*[@id="control_A67D2CD5-23E0-473F-BE62-3A75814302F7"]/div[1]/div/textarea
${LinkUploadDocs}                           xpath://*[@id="control_8413D5C6-C1A7-4407-A646-DC75CE3358AB"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                     xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                     xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                    xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                      xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                    xpath://*[@id="doc_url"]
${HazardousChemicalDetailTab}               xpath://*[@id="tab_E9D61865-ADCE-4E0D-8BA6-D77EFDB75764"]/div[1]
${SaveButtonXpath}                          xpath://*[@id="btnSave_form_67D12C4F-9715-42CB-8583-738A005007A8"]/div[3]
${SaveButtonXpath1}                         xpath://*[@id="control_FB7FFCEE-4112-4F49-9FC5-9559099BF2CA"]/div[1]/div
${ProcessflowEditPhaseXpath1}               xpath:(//div[@id='divProcess_67D12C4F-9715-42CB-8583-738A005007A8'])[2]/div/div[2]/div[3]/div[1]//div[text()='Edit phase']

#************************************************* Hazardous Chemical Register Actions page ************************************************
${HCRADropdown}                             xpath://*[@id="control_99B489F5-1B15-403C-9F0C-086A911DA7F7"]/div[9]/div[1]
${HCRAAddbutton}                            xpath://div[text()='Hazardous Chemical Register Actions']/../..//*[@id="btnAddNew"]/div
${TaskTypeDropdown}                         xpath://*[@id="control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9"]/div[1]/a/span[2]/b[1]
${AdHocSelction}                            xpath:(//div[contains(@class, 'transition visible')]//a[text()='Ad Hoc'])[1]
${TypeOfActionDropdown}                     xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[2]/b[1]
${CorrectiveSelection}                      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Corrective'])[1]
${ActionDesc}                               xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${EntityListBox}                            xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[2]/b[1]
${BUAAGOption}                              xpath:(//a[text()='Anglo American Group']/../i)[2]
${BUBCOOption}                              xpath:(//a[text()='Bulk Commodities & Other Minerals']/../i)[3]
${BUKOption}                                xpath:(//a[text()='Kumba']/../i)[2]
${BUSMOption}                               xpath:(//a[text()='Sishen Mine']/../i)[2]
${BUSMSelectOption}                         xpath://*[@id="54f00015-2059-48c0-9d06-c9dd52d482e9_anchor"]
${ResposiblePersonDropdown}                 xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[2]/b[1]
${ResponsiblePersonSearchbox}               xpath:(//input[@placeholder='Type and enter to search'])[1]
${ResPSelection}                            xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${AgencyDropdown}                           xpath://*[@id="control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9"]/div[1]/a/span[2]/b[1]
${AviationSelction}                         xpath://*[@id="662a762f-2a21-49ef-8f3d-4a3ac0acf0ed_anchor"]
${TaskPriorityDropdown}                     xpath://*[@id="662a762f-2a21-49ef-8f3d-4a3ac0acf0ed_anchor"]
${LowSelection}                             xpath://*[@id="662a762f-2a21-49ef-8f3d-4a3ac0acf0ed_anchor"]
${ActionStartDate}                          xpath://*[@id="control_EC1F208E-0AA6-458D-AFC5-62C7BE806221"]/div[1]/span/span/input
${ActionDueDateIcon}                        xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/span/span
${ActionDueDateSelection}                   xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${Isthisarecurringaction}                   xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[2]/b[1]
${NoSelection}                              xpath://*[@id="e4db7081-5761-4ae9-b28e-2f709771e997_anchor"]
${SaveButton}                               xpath://*[@id="btnSave_form_E9D98920-97F8-438C-9101-9522C7C3DE26"]/div[3]
${ProcessflowButton1}                       xpath://*[@id="btnProcessFlow_form_E9D98920-97F8-438C-9101-9522C7C3DE26"]/span
${ProcessflowEditPhase1}                    xpath://*[@id="btnProcessFlow_form_E9D98920-97F8-438C-9101-9522C7C3DE26"]/span


#************************************************* Supporting Documents Tab ************************************************
${SupportingDocXpath}                     xpath://*[@id="tab_CC1019C5-2B76-43A0-A10B-C9936C3C32C3"]/div[1]
${SupportingDocLinkDoc}                   xpath://*[@id="control_C1EE88AC-E0A0-4122-AE4F-82289592D716"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                   xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                   xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                  xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                    xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                  xpath://*[@id="doc_url"]
${SupportingDocSave}                      xpath://*[@id="control_E14E37D8-9F27-4DE6-99AC-182B3169A753"]/div[1]/div