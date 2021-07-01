*** Variables ***
#************************************************* Emergency Drill Findinings ****************************************
${FindingsXpath}                                xpath://ul[@class='tabpanel_mover']//li[3]
${FindingsAddButton}                            xpath:(//div[@i18n='add_new'])[3]
${FindingDescriptionXpath}                       xpath:(//textarea[@class='txt translatable'])[1]
${FindingOwnerXpath}                             xpath://div[@name='ddl4']
${FindingOwnerDrpDwnXpath}                        xpath:(//input[@i18np='type_to_search'])[22]
${FindinOwnerDrpDwnValue}                          xpath:(//a[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor'])[3]
${FindingClassificationXpath}                      xpath:(//div[@name='ddl8'])[2]
${FndingClassificationDrpDwn}                       xpath://a[@id='37e3a345-8b6a-41b8-ad8e-6a9561148b31_anchor']
${FindingsSaveButton}                                xpath:(//div[@data-automation-id='moduleSaveButton'])[2]
${FindingsProcessFlow}                                xpath:(//span[@i18n='process_flow'])[2]
${FindingsEditFlow}                                    xpath:(//div[@id='step_2'])[3]
${FindingsAddFlow}                                    xpath:(//div[@id='step_1'])[3]
#************************************************* Emergency Drill Findinings Actions ****************************************
${EmergencyDrillFindActAddXpath}                       xpath:(//div[@id='btnAddNew']//div)[4]
${IndividualFactors}                                   xpath://div[@data-automation-id='viewerddl372Control']
${IndividualFactValue}                                 xpath:(//li[@id='847cc4d3-520b-4ad5-b40b-d8300d1eb733']//a/i)[1]
${IndividualFactBackButton}                             xpath://b[@class='select3-down drop_click']
${IndividualFactDescription}                             xpath://div[@name='txb2']//div//textarea
${WorkplaceFactors}                                      xpath://div[@name='ddl373']
${Workplace}                                              xpath:(//li[@id='b4ba7566-596b-4ab2-a91e-416fd5957783']//a//i)[1]
${WorkplaceFactDescription}                                xpath://div[@name='txb_n70']//div//textarea
${OrganizationsFact}                                       xpath://div[@name='ddl374']
${OrganizationsFactValue}                                  xpath://li[@id='e2e29d18-2cbf-4b3a-9bca-c9f09dcafaec']//a//i
${OrganizationsDescription}                                xpath://div[@name='txb_n71']//div//textarea
${ActionType}                                              xpath://div[@name='ddl53']
${ActionTypeValue}                                         xpath://li[@id='2006cc14-2025-4073-97e4-fca83aa8a2c4']//a
${ActionDescription}                                        xpath://div[@name='txb4']//div//textarea
${Entity}                                                   xpath://div[@name='ddl7']
${EntityBUDrpValueXpath}                                   xpath:(//a[text()='Anglo American Group']/../i)[2]
${EntityBUDrpValueBulkXpath}                               xpath: (//li[@role='treeitem'])[126]//i[@class='jstree-icon jstree-ocl']
${EntityBUDrpValueKumbaXpath}                              xpath: ((//li[@role='treeitem'])[132]//i)[1]
${EntityBUDrpValueSishenXpath}                             xpath:(//*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"])[2]
${Responsibleperson}                                       xpath://div[@name='ddl1']
${ResponsiblePersionDrpDown}                                xpath:(//input[@i18np='type_to_search'])[53]
${ResponsiblePersonDrpDownValue}                            xpath:(//li[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37']//a)[4]
${ActionDuedate}                                             xpath://div[@name='cal1']//input
${RecuringAction}                                             xpath://div[@name='ddl465']
${RecuringNo}                                                xpath://li[@id='e4db7081-5761-4ae9-b28e-2f709771e997']//a
${DrillActionSaveBtn}                                         xpath:(//div[@data-automation-id='moduleSaveButton'])[2]
${ActionprocessFlow}                                          xpath:(//div[@data-automation-id='moduleProcessFlowButton'])[2]
${AddAction}                                                   xpath:(//div[@id='step_1'])[3]
${InitiatedAction}                                             xpath:(//div[@id='step_2'])[3]
${CalenderButton}                                               xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/span/span







