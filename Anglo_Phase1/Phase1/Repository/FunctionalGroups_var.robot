*** Variables ***
#************************************************* Actions ****************************************
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']
${AngloMaintanceInterfaceXpath}                             xpath://div[contains(text(),'Anglo Maintenance Page')]
${FunctionalGroupModuleXpath}                                xpath://label[contains(text(),'Functional Groups')]

#Anglo FunctionalGroups Module Page
${AngloMaintenanceButtonXpath}                                 xpath://i[@class='large sidebar link icon menu']
${FunctionalAddButtonXpath}                                    xpath://div[@id='btnActAddNew']
${FunctionalBUDrpXpath}                                        xpath://div[@name='ddl4']
${FunctionalBUDrpValueXpath}                                   xpath:(//a[text()='Anglo American Group']/../i)[1]
${FunctionalBUDrpValueBulkXpath}                               xpath: //li[@role='treeitem'][3]//i[@class='jstree-icon jstree-ocl']
${FunctionalBUDrpValueKumbaXpath}                              xpath: (//li[@role='treeitem'][6]//i[@class='jstree-icon jstree-ocl'])[1]
${FunctionalBUDrpValueSishenXpath}                             xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${FunctionalGroupNameXpath}                                    xpath:(//div[contains(@class,'textbox')]//input[@type='text'])[1]
${FunctionalGroupDescriptionXpath}                             xpath://div[contains(@class,'textbox')]//textarea[@type='text']
${FunctioanlPermitRectrictionGroupXpath}                        xpath://div[@name='ddl44']//div//span//ul
${ButtonSaveXpath}                                              xpath:(//div[@i18n='save'])[2]
${FunctionalLocationDrpXpath}                                   xpath:(//div[@class='c-pnl-contents']//a//span//ul)[1]
${AdministrativeDrpXpath}                                       xpath:(//div[@class='c-pnl-contents']//a//span//ul)[2]
${FunctioanlPermitRectrictionGroupDrpNoXpath}                   xpath://a[@id='e4db7081-5761-4ae9-b28e-2f709771e997_anchor']
${FunctioanlPermitRectrictionGroupDrpYesXpath}                  xpath://a[@id='14f2fba0-4b57-42aa-9cba-f1d9c372d3e6_anchor']
${FunctionalLocationDrpValueXpath}                              xpath://a[@id='c90467d6-40cb-45e8-97ba-367fb080e969_anchor']
${AdministrativeDrpValueXpath}                                  xpath://a[@id='c90467d6-40cb-45e8-97ba-367fb080e969_anchor']
${ProcessFlowXpath}                                             xpath://span[@class='img icon flow-tree icon-button']
${AddPhaseXpath}                                                xpath:(//div[@id='divProcess_86DA7EDA-BF46-407C-B56A-7CC2FAAFFE51'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${EditPhaseXpath}                                               xpath:(//div[@id='divProcess_86DA7EDA-BF46-407C-B56A-7CC2FAAFFE51'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${Administrativevalue}                                          xpath:(//input[@placeholder='Type and enter to search'])[1]
${AdministrativeAutoTestvalue}                                  xpath://a[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor']
#Adding Group Menbers
${AddGroupMembersXpath}                                         xpath:(//div[@i18n='add_new'])[2]
${GroupMembersDropwnXpath}                                      xpath://div[@id='control_09BE19E7-1E10-4547-80FB-79EE12DB4C59']//div//span//ul
${GroupMembersDropwnValueXpath}                                 xpath:(//input[@placeholder='Type and enter to search'])[3]
${GroupMembersDropwnValueSelectedXpath}                         xpath:(//a[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor'])[2]
${SaveButtonXpath}                                              xpath://div[@id='btnSaveAll']//div[@i18n='save']
${InlineEditorXpath}                                            xpath:(//div[@class='ibutton-label-on'])[2]
${GroupMembersProcessFlowXpath}                                 xpath:(//span[@class='img icon flow-tree icon-button'])[2]
${GroupMembersAddFlowXpath}                                     xpath:(//div[@id='divProcess_4C4A5A93-00E9-4C70-BB7E-92D88D492399'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${GroupMembersEditFlowXpath}                                    xpath:(//div[@id='divProcess_4C4A5A93-00E9-4C70-BB7E-92D88D492399'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${UserSaveXpath}                                                xpath://div[@id='btnSave_form_4C4A5A93-00E9-4C70-BB7E-92D88D492399']//div[@i18n='save']



