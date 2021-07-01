*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']
${AngloMaintanceInterfaceXpath}                             xpath://div[contains(text(),'Anglo Maintenance Page')]
#************************************************* PPE Type Library Page ****************************************
${PPETypeLibraryXpath}                      xpath://label[contains(text(),'PPE Type Library')]
${PPETypeLibraryADDButtonXpath}                xpath://div[@id='btnActAddNew']//div
${ProcessFlowButtonXpath}                      xpath://span[@i18n='process_flow']
${ProcessFlowAddPhaseXpath}                      xpath:(//div[@id='step_1'])[2]
${BusinessUnitDrpDwnXpath}                        xpath://div[@name='ddl7Business_unit']
${BUDrpValueXpath}                                  xpath:(//a[text()='Anglo American Group']/../i)[1]
${BUDrpValueBulkXpath}                              xpath: //li[@role='treeitem'][3]//i[@class='jstree-icon jstree-ocl']
${BUDrpValueKumbaXpath}                             xpath: (//li[@role='treeitem'][6]//i[@class='jstree-icon jstree-ocl'])[1]
${BUDrpValueSishenXpath}                            xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]//i
${BUDrpValueClickXpath}                             xpath://b[@class="select3-down drop_click"]
${PPETypeXpath}                                     xpath:(//div[@name='ppe_type']//input)[1]
${PPETypeButtonSaveXpath}                           Xpath:(//div[@i18n='save'])[2]
${ProcessFlowEditPhaseXpath}                        xpath:(//div[@id='step_2'])[2]
#************************************************* Supporting Documents ************************************************
${SupportingDocXpath}                   xpath://div[contains(text(),"Supporting Documents")]
${SupportingDocLinkDoc}                 xpath://*[@original-title="Link to a document"]
${SupportingDocPopName}                 xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                 xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                  xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                xpath://*[@id="doc_url"]
${SupportingDocSave}                    xpath://div[contains(text(),'Save supporting documents')]
#*************************************************PPE Items ************************************************
${PPEItemsXpath}                            xpath:(//div[contains(text(),'PPE Items')])[1]
${InlineEditorXpath}                        xpath:(//div[@class='ibutton-label-on'])[2]
${PPEAddButtonXpath}                        xpath://div[@id='btnAddNew']
${ProcessFlowXpath}                        xpath:(//div[@data-automation-id='moduleProcessFlowButton']//span)[2]
${PPEProcessFlowAddPhaseXpath}                 xpath:(//div[@id='divProcess_482DF5CD-E0E2-40AF-B526-44B239CEFD01'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${PPEXpath}                                 xpath://div[@name='txb1']//div//div//input
${PPETypeSaveXpath}                                 xpath:(//div[@data-automation-id='moduleSaveButton'])[2]
${PPEProcessFlowEditPhaseXpath}                     xpath:(//div[@id='divProcess_482DF5CD-E0E2-40AF-B526-44B239CEFD01'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SaveAllButtonXpath}                               xpath://div[@id='btnSaveAll']
${PPETextBoxXpath}                               xpath://div[@name='txb1']































