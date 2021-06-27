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
${LocationsWIUDropDownSelectionXpath}       xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${MaxStockXpath}                            xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${MSDSDateXpath}                            xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${MSDSDateSelectionXpath}                   xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${EmergencyControlFireXpath}                xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${EmergencyControlURXpath}                  xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${EmergencyActionsECXpath}                  xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${EmergencyActionsSCXpath}                  xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${EmergencyActionsInhalationXpath}          xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${ApprovedDisposalMethodsXpath}             xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${ApprovedDisposalMethodsXpath}             xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]/i[1]
${LinkUploadDocs}                           xpath://*[@id="control_E4BE7A2E-B6EC-4AA6-954C-791A204FFDC6"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                     xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                     xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                    xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                      xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                    xpath://*[@id="doc_url"]
${SaveButtonXpath}                          xpath://*[@id="btnSaveAll"]/div
${SaveButtonXpath1}                         xpath://*[@id="btnSave_form_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C"]/div[3]
${ProcessflowEditPhaseXpath1}               xpath:(//div[@id='divProcess_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C'])[2]/div/div[2]/div[3]/div[1]/div[1]
#************************************************* Supporting Documents Tab ************************************************
${SupportingDocXpath}                     xpath://*[@id="tab_CDCE07B1-C2AE-4345-A59B-566C5C2A9694"]/div[1]
${SupportingDocLinkDoc}                   xpath://*[@id="control_E4BE7A2E-B6EC-4AA6-954C-791A204FFDC6"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                   xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                   xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                  xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                    xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                  xpath://*[@id="doc_url"]
${SupportingDocSave}                      id:control_F33B6F6E-13E8-4ABC-8364-61C5086C73A3