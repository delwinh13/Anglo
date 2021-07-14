*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${AngloLandingXpath}                                    xpath://div[contains(text(),'Anglo Landing Page')]
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']

#************************************************* PPE Register Page ****************************************
${PPERegisterModuleXpath}                                xpath://label[contains(text(),'PPE Register')]
${PPERegisterAddButtonXpath}                                 xpath://div[@id='btnActAddNew']
${PPEBusinessUnitXpath}                                        xpath://div[@name='ddl11']
${BUDrpValueXpath}                                  xpath:(//a[text()='Anglo American Group']/../i)[1]
${BUDrpValueBulkXpath}                              xpath: //li[@role='treeitem'][3]//i[@class='jstree-icon jstree-ocl']
${BUDrpValueKumbaXpath}                             xpath: (//li[@role='treeitem'][6]//i[@class='jstree-icon jstree-ocl'])[1]
${BUDrpValueSishenXpath}                            xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${IssuedByXpath}                                    xpath://div[@name="ddl298"]
${IssuedByDrpDwnXpath}                                    xpath:(//input[@placeholder='Type and enter to search'])[1]
${IssuedByDrpDwnValueXpath}                                    xpath://li[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37']//a
${DataIssuedXpath}                                    xpath://div[@name='cal3']//span//input
${PersonResponsbleForXpath}                                    xpath://div[@name='ddl397']
${PersonResponsbleForDrpDwnXpath}                                    xpath:(//input[@placeholder='Type and enter to search'])[2]
${PersonResponsbleForDrpDwnValueXpath}                                    xpath:(//li[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37']//a)[2]
${ModuleDataFlowXpath}                                          xpath://div[@data-automation-id='moduleProcessFlowButton']
${PPERegisterDataFlowXpath}                                          xpath:(//div[@id='step_1'])[2]
${PPERegisterSaveButtonXpath}                                          xpath:(//div[@i18n='save'])[2]
${PPERegisterItemIssuedXpath}                                          xpath:(//div[@id='step_2'])[2]
${Date}                                                                29-06-2021
#************************************************* Supporting Documents ************************************************
${SupportingDocXpath}                   xpath://div[contains(text(),"Supporting Documents")]
${SupportingDocLinkDoc}                 xpath://*[@original-title="Link to a document"]
${SupportingDocPopName}                 xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                 xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                  xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                xpath://*[@id="doc_url"]
${SupportingDocSave}                    xpath://div[contains(text(),'Save supporting documents')]

#************************************************* Capture Item Issue ************************************************
${ItemIssueAdd}                                  xpath:(//div[@i18n='add_new'])[2]
${InlineEditorXpath}                        xpath:(//div[@class='ibutton-label-on'])[2]
${ProcessFlow}                              xpath:(//div[@data-automation-id='moduleProcessFlowButton'])[2]
${AddFlow}                                  xpath:(//div[@id='step_1'])[3]
${EmployeeType}                             xpath://div[@name='ddl14']
${EmployeeSelect}                            xpath://li[@id='2cffe34f-5497-4bf8-a082-48c65c271dea']//a
${Recipient}                                  xpath://div[@name='ddl8']
${RecipientText}                                 xpath:(//input[@i18np='type_to_search'])[19]
${RecipientTextValue}                                 xpath:(//li[@id='cef8aa37-7993-4e5d-abdb-de0053d1e4b0'])[2]
${PPE}                                            xpath://div[@name='PPE']
${PPEDrpDown}                                         xpath:(//li[@id='e9ab537d-e066-42ba-9a36-04c417f6e789']//i)[1]
${PPEDrpDownValue}                                         xpath:(//a[@id='be003733-5bd7-4641-94ba-251622a8a877_anchor']//i)[1]
${PPEDrpDownLinkValue}                                         xpath://b[@class='select3-down drop_click']
${NoOfItemIssued}                                  xpath:(//div[@data-automation-id='viewertxb_n2Control']//div//input)[3]
${ButtonSaved}                                      xpath:(//div[@i18n='save'])[4]
${Editphase}                                        xpath:(//div[@id='step_2']//div[@phasenumber='2'])[3]
${RegisterTab}                                         xpath://li[@id='tab_8C625940-1DB6-4D4C-8F6B-30CE4E154D7F']
${AddLineNoOfItemsIssued}                                  xpath:(//div[@data-automation-id='viewertxb_n2Control']//div//input)[3]
${AddlineNoofItems}                                  xpath:(//div[@data-automation-id='viewertxb_n2Control']//div)[2]//input
${AddLineRecipientText}                                 xpath:(//input[@i18np='type_to_search'])[25]
${AddLineRecipientTextValue}                             xpath:(//a[@id='cef8aa37-7993-4e5d-abdb-de0053d1e4b0_anchor']//i)[1]
${AddLineEmployeeSelect}                            xpath://li[@id='2cffe34f-5497-4bf8-a082-48c65c271dea']//a
${AddLinePPEDrpDown}                                         xpath:(//li[@id='e9ab537d-e066-42ba-9a36-04c417f6e789']//i)[1]
${SaveButton}                                        xpath:(//div[@i18n='save'])[3]
${AddLineVister}                                      xpath://li[@id='2f52c0f3-948a-4417-8841-af7f9a67f3e1']//a
${VisterXpath}                                        xpath:(//li[@id='2f52c0f3-948a-4417-8841-af7f9a67f3e1']//a)[1]
${AddEmployeeType}                                        xpath:(//div[@name='ddl14'])[2]
${AddRecipient}                                  xpath:(//div[@name='ddl8'])[2]
${AddPPE}                                            xpath:(//div[@name='PPE'])[2]

























































