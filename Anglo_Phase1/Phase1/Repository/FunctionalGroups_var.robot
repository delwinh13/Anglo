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
${FunctionalBUDrpValueBulkXpath}                               xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${FunctionalBUDrpValueKumbaXpath}                              xpath://a[text()='Kumba']/../i
${FunctionalBUDrpValueSishenXpath}                             xpath://a[text()='Sishen Mine']/../a
${FunctionalGroupNameXpath}                                    xpath:(//div[contains(@class,'textbox')]//input[@type='text'])[1]
${FunctionalGroupDescriptionXpath}                             xpath://div[contains(@class,'textbox')]//textarea[@type='text']
${FunctioanlPermitRectrictionGroupXpath}                        xpath://div[@name='ddl44']//div//span//ul
${ButtonSaveXpath}                                              xpath:(//div[@i18n='save'])[2]
${FunctionalLocationDrpXpath}                                   xpath:(//div[@class='c-pnl-contents']//a//span//ul)[1]
${AdministrativeDrpXpath}                                       xpath:(//div[@class='c-pnl-contents']//a//span//ul)[2]
${FunctioanlPermitRectrictionGroupDrpNoXpath}                   xpath://a[text()='No']/../a
${FunctioanlPermitRectrictionGroupDrpYesXpath}                  xpath://a[text()='Yes']/../a
${FunctionalLocationDrpValueXpath}                              xpath://a[text()='MIS | Sishen']/../a
${AdministrativeDrpValueXpath}                                  xpath://a[text()='AutoTest User']/../a
${ProcessFlowXpath}                                             xpath://div[@data-automation-id='moduleProcessFlowButton']//span
${AddPhaseXpath}                                                xpath://div[@class='step active']//div[text()='Add phase']
${EditPhaseXpath}                                               xpath://div[@class='step active']//div[text()='Edit phase']
${Administrativevalue}                                          xpath:(//input[@placeholder='Type and enter to search'])[1]
${AdministrativeAutoTestvalue}                                  xpath://a[text()='AutoTest User']/../a
#Adding Group Menbers
${AddGroupMembersXpath}                                         xpath:(//div[@i18n='add_new'])[2]
${GroupMembersDropwnXpath}                                      xpath://div[@id='control_09BE19E7-1E10-4547-80FB-79EE12DB4C59']//div//span//ul
${GroupMembersDropwnValueXpath}                                 xpath:(//input[@placeholder='Type and enter to search'])[3]
${GroupMembersDropwnValueSelectedXpath}                         xpath:(//a[text()='AutoTest User']/../a)[2]
${SaveButtonXpath}                                              xpath://div[@id='btnSaveAll']//div[@i18n='save']
${InlineEditorXpath}                                            xpath:(//div[@class='ibutton-label-on'])[2]
${GroupMembersProcessFlowXpath}                                 xpath:(//span[@class='img icon flow-tree icon-button'])[2]
${GroupMembersAddFlowXpath}                                     xpath://div[@class='step active']//div[text()='Add phase']
${GroupMembersEditFlowXpath}                                    xpath:(//div[@class='step active']//div[text()='Edit phase'])[2]
${UserSaveXpath}                                                xpath://div[@id='btnSave_form_4C4A5A93-00E9-4C70-BB7E-92D88D492399']//div[@i18n='save']



