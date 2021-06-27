*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${AngloMaintenanceButtonXpath}              xpath://*[@id="default-page"]/body/div/div[1]/a/i
${AngloMaintenanceButtonXpath1}             xpath://*[@id="default-page"]/body/div/div[2]/div[4]/a/div

#************************************************* Anglo Maintenance Page ****************************************
${MeetingTemplateButtonXpath}               xpath://*[@id="section_d48dc6f6-d46c-40ba-b72b-599c4ce9aafc"]/label

#************************************************* MeetingTemplate Page ****************************************
${MeetingTemplateAddButtonXpath}            xpath://*[@id="btnActAddNew"]/div

#********************************************** MeetingTemplate Add Form Page ****************************************
${ProcessflowButtonXpath}                   xpath://span[@class='img icon flow-tree icon-button']
${ProcessflowAddPhaseXpath}                 xpath:(//div[@id='divProcess_E5C2E781-04CE-43C6-B811-9C598103A3FC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add Phase']
${ProcessflowEditPhaseXpath}                xpath:(//div[@id='divProcess_E5C2E781-04CE-43C6-B811-9C598103A3FC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit Phase']
${MeetingTemplateXpath}                     xpath://*[@id="control_AF4C4DE7-4CDB-4737-84AD-37B0758CBAB2"]/div[1]/div/input
${BusinessUnitDropdownXpath}                xpath://*[@id="control_977EE8A8-F997-47A7-85FE-E53E9E2E59EE"]/div[1]/a/span[2]/b[1]
${BUAAGOptionXpath}                         xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BUAApOptionXpath}                         xpath:(//a[text()='Anglo American plc']/../i)[1]
${BUAApOptionXpath1}                        xpath://*[@id="e0c53028-7283-4577-acd8-4f6d681f1b62"]/i
${BUAApOptionXpath2}                        xpath://*[@id="01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor"]/i[1]
${RiskDeciplineXpath}                       xpath://*[@id="control_3F6D34AB-B324-4E3C-ACFD-007F12A9ADF6"]/div[1]/a/span[2]/b[1]
${RishDeciplineSelectionXpath}              xpath://*[@id="f20d4b90-fad0-4e26-b61f-91dc30d9f85e_anchor"]/i[1]
${MeetingDescriptionXpath}                  xpath://*[@id="control_9DA393AC-2EB8-480E-9BDB-701F46DEF00B"]/div[1]/div/textarea
${MTSavebuttonXpath}                        xpath://*[@id="btnSave_form_E5C2E781-04CE-43C6-B811-9C598103A3FC"]/div[3]
${ProcessFlowXpath}                         id:btnProcessFlow_form_E5C2E781-04CE-43C6-B811-9C598103A3FC

#************************************************* Supporting Documents Tab ************************************************
${SupportingDocXpath}                     xpath://*[@id="tab_CDCE07B1-C2AE-4345-A59B-566C5C2A9694"]/div[1]
${SupportingDocLinkDoc}                   xpath://*[@id="control_E4BE7A2E-B6EC-4AA6-954C-791A204FFDC6"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                   xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                   xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                  xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                    xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                  xpath://*[@id="doc_url"]
${SupportingDocSave}                      id:control_F33B6F6E-13E8-4ABC-8364-61C5086C73A3

#************************************************* Attendees Tab ********************************************
${AttendeesTabXpath}                    xpath://*[@id="tab_7D70867C-6F13-4EA2-8F01-F780CCF362BD"]/div[1]
${AAddButton}                           xpath://*[@id="btnAddNew"]/div
${ProcessflowButtonXpath1}              xpath://*[@id="btnProcessFlow_form_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C"]/span
${ProcessflowAddPhaseXpath1}            xpath:(//div[@id='divProcess_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${NameXpath}                            xpath://*[@id="control_D1CE6901-8769-4DB2-A974-6019AEB92B0A"]/div[1]/a/span[2]/b[1]
${NameSearchXpath}                      xpath:(//input[@placeholder='Type and enter to search'])[1]
${NameSelectOptionXpath}                xpath://*[@id="e6155fcf-09c6-42f2-bf92-b30e492f5d6d_anchor"]
${NameSelectOptionXpath1}               xpath://*[@id="e6155fcf-09c6-42f2-bf92-b30e492f5d6d_anchor"][1]
${SaveButtonXpath}                      xpath://*[@id="btnSaveAll"]/div
${SaveButtonXpath1}                     xpath://*[@id="btnSave_form_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C"]/div[3]
${ProcessflowEditPhaseXpath1}           xpath:(//div[@id='divProcess_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C'])[2]/div/div[2]/div[3]/div[1]/div[1]
${InlineEditButtonXpath}                xpath://div[@id='control_95FDBC6E-1272-41E1-91F7-3FF04ACB75B9']//div[@id="grid"]/div[4]/div/div[2]/div/div
${ProcessFlowButtonXpath}               xpath://*[@id="btnProcessFlow_form_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C"]/span
${AtCloseButtonXpath}                   xpath://*[@id="form_0FC15E2A-6BD3-4448-B6BB-9B48DC57C17C"]/div[1]/i[2]

#************************************************* Agenda Tab ********************************************
${AgendaTabXpath}                       xpath://*[@id="tab_61E8D691-098E-43D0-ADA9-AB83205285FF"]/div[1]
${InlineEditItemButton}                 xpath://div[@id='control_E584852C-3B12-46D5-9495-7805A92F9086']//div[@id="grid"]/div[4]/div/div[2]/div/div
${AgAddButton}                          xpath://div[@id='control_E584852C-3B12-46D5-9495-7805A92F9086']//div[contains(@title,'Add')][normalize-space()='Add']
${AgProcessflowButtonXpath1}            xpath://*[@id="btnProcessFlow_form_42B5A13A-DE28-4A67-BA05-A1E487D9B59E"]/span
${AgProcessflowAddPhaseXpath1}          xpath:(//div[@id='divProcess_42B5A13A-DE28-4A67-BA05-A1E487D9B59E'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${AgendaOrderXpath}                     xpath://input[@id='numberInput']
${AgendaItemXpath}                      xpath://*[@id="control_5A715E64-DAFC-4458-9963-F501705314C9"]/div[1]/div/textarea
${AgendaSaveButtonXpath}                xpath://*[@id="btnSave_form_42B5A13A-DE28-4A67-BA05-A1E487D9B59E"]/div[3]
${AgProcessflowEditPhaseXpath1}         xpath:(//div[@id='divProcess_42B5A13A-DE28-4A67-BA05-A1E487D9B59E'])[2]/div/div[2]/div[3]/div[1]//div[text()='Edit phase']
#************************************************* Edit Meeting Template   ********************************************
${MeetingTemplateTabXpath}              xpath://*[@id="tab_5116E5E7-6911-4FFF-AE0E-AECE13828FBF"]/div[1]
${SearchButtonXpath}                    xpath://div[@title='Search'][normalize-space()='Search']
${InlineEditItemButton}                 xpath://div[@class='ibutton-label-off']//span
${EditButton}                           xpath://tr[@id='formWrapper_cc25ae7e-d6d3-49ef-ab65-5ece5350f4d0']//i[@class='icon edit on paper icon ten six grid-icon-edit']
${RecordXpath}                          xpath://*[@id="grid"]/div[3]/table/tbody/tr[1]/td[4]/span
${ProcessflowButtonXpath2}              xpath://span[@class='img icon flow-tree icon-button']
${ProcessflowEditPhaseXpath2}           xpath://body/div[@class='body']/div[@id='divContainer']/div[@id='divPage']/div[@id='divForms']/div[@id='divFlow_form_E5C2E781-04CE-43C6-B811-9C598103A3FC']/div[@class='flows']/div[@id='divProcess_E5C2E781-04CE-43C6-B811-9C598103A3FC']/div[@class='propertyBox']/div[@class='padded']/div[@id='step_2']/div[@class='step active']/div[1]
${EditMeetingTemplateXpath}              xpath://*[@id="control_AF4C4DE7-4CDB-4737-84AD-37B0758CBAB2"]/div[1]/div/input
${DeselectBusinessUnitDropdownXpath}     xpath://*[@id="control_977EE8A8-F997-47A7-85FE-E53E9E2E59EE"]/div[1]/a/span[2]/b[3]
${EditBusinessUnitDropdownXpath}         xpath://div[@id='control_977EE8A8-F997-47A7-85FE-E53E9E2E59EE']//b[1]
${EditBUAAGOptionXpath}                  xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${EditBUBMOptionXpath}                   xpath:(//a[text()='Base Metals']/../i)[1]
${EditBUBMCOptionXpath}                  xpath:(//a[text()='Base Metals Chile']/../i)[1]
${EditBULBSOptionXpath}                  xpath: //a[@id='3099305a-e3cc-4a57-9ece-8bdbe2cb686b_anchor']//i[1]
${EditRiskDeciplineXpath}                xpath://div[@id='control_3F6D34AB-B324-4E3C-ACFD-007F12A9ADF6']//b[1]
${EditRiskDeciplineSelectionXpath}       xpath://*[@id="e6203066-f12d-426c-8476-4d028b7a2b82_anchor"]/i[1]
${EditMeetingDescriptionXpath}           xpath://textarea[@type='text']
${EditMTSavebuttonXpath}                 xpath://*[@id="btnSave_form_E5C2E781-04CE-43C6-B811-9C598103A3FC"]/div[3]
${CloseButtonXpath}                      xpath://*[@id="form_E5C2E781-04CE-43C6-B811-9C598103A3FC"]/div[1]/i[2]
${ViewFilterDropDownXpath}               xpath://*[@id="btnActFilter"]/div[1]/div
${ViewFilterSelectionXpath}              xpath://*[@id="btnActViewFilter"]/div[2]
${ContainsTextBoxXpath}                  xpath://*[@id="searchOptions"]/div[3]/table/tbody/tr[2]/td[5]/input
${ItemsPerPageSelectionXpath}            xpath://*[@id="f5452f7b-e701-450d-8b9b-19e82229d051"]
${EditedRecordXpath}                     xpath://*[@id="grid"]/div[3]/table/tbody/tr[40]/td[5]/div