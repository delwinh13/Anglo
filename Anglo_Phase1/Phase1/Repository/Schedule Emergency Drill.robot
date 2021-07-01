*** Variables ***
#************************************************* Actions ****************************************
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']
${AngloandingPage}                                          xpath://div[contains(text(),'Anglo Landing Page')]
${EmergencyDrillXpath}                                      xpath://label[contains(text(),'Emergency Drills')]
${EmergencyAddButton}                                       xpath://div[@id='btnActAddNew']
${ProcessFlow}                                               xpath://span[@i18n='process_flow']
${PlanningPhase}                                            xpath:(//div[@id='step_1'])[2]
${BusinessUnitDrpDown}                                       xpath://div[@name='ddl1']
${FunctionalBUDrpValueXpath}                                   xpath:(//a[text()='Anglo American Group']/../i)[1]
${FunctionalBUDrpValueBulkXpath}                               xpath: //li[@role='treeitem'][3]//i[@class='jstree-icon jstree-ocl']
${FunctionalBUDrpValueKumbaXpath}                              xpath: (//li[@role='treeitem'][6]//i[@class='jstree-icon jstree-ocl'])[1]
${FunctionalBUDrpValueSishenXpath}                             xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${FunctionalLocation}                                          xpath://div[@name='ddl194']
${FunLocation}                                                  xpath://a[contains(text(),'MIS | Sishen')]
${ResponsibleSuperviser}                                         xpath://div[@name='ddl5']
${ResponsibleSupviserValue}                                      xpath://li[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37']//a
${EmergencyCoordinator}                                           xpath://div[@name='ddl7']
${EmergencyCoordinValue}                                          xpath:(//input[@i18np='type_to_search'])[6]
${EmergencyCoordinatordrpDwn}                                      xpath:(//li[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37'])[3]//a
${EmergencyDrillDate}                                              xpath://div[@name='cal3']//input
${Type}                                                             xpath://div[@name='ddl406']
${DrillType}                                                         xpath:(//i[@class='jstree-icon jstree-checkbox'])[2]
${TypeDropDownClick}                                                 xpath://b[@class='select3-down drop_click']
${SupportingDocumentsLink}                                           xpath:(//div[contains(text(),'Supporting documents')])[1]
${SaveButton}                                                        xpath:(//div[@i18n='save'])[2]
${ProcessFlowInProgress}                                              xpath:(//div[@id='step_2'])[2]
${date}                                                                 30-06-2021
${DrillCompletedWithNoFindings}                                         Xpath://div[@data-automation-id='viewerlbl311Control']
${ResponsibleSupviserInputValue}                                        xpath:(//input[@i18np='type_to_search'])[5]
#************************************************* Supporting Documents ************************************************
${SupportingDocXpath}                   xpath:(//div[contains(text(),'Supporting documents')])[1]
${SupportingDocLinkDoc}                 xpath://*[@original-title="Link to a document"]
${SupportingDocPopName}                 xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                 xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                  xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                xpath://*[@id="doc_url"]
${SupportingDocSave}                    xpath://div[contains(text(),'Save supporting documents')]
#************************************************* Email Notifications ****************************************
${Officeurl}                                https://www.office.com
${outlookusername}                          Sushmitha.Ravella@isometrix.com
${outlookpassword}                          Metrix@2021@
${SignInBtn}                                xpath://a[contains(text(),'Sign in')]
${EmailField}                               xpath://input[@type='email']
${EmailNext}                                xpath://input[@value='Next']
${EmailPasswordField}                       xpath://input[@type='password']
${EmailSignInBtn}                           xpath://input[@value='Sign in']
${Outlook}                                  xpath://a[@id='ShellMail_link']
${EmailLinkBacktoRecord}                    xpath://a[@data-auth='NotApplicable']
${EmergencyDrillSubject}                    xpath:(//span[contains(text(),'IsoMetrix Notification: Emergency Drill Added')])[1]
${IsoMetrixSignInXpath}                     xpath://div[@id='btnIsometrixSignin']

#*************************************************Complete Emergency Drill with no Findings****************************************
${DrillCompletedWithNoFinding}             xpath://div[@name='ddl280']
${DrillCompleteWithYes}                     xpath://a[@class='jstree-anchor']
${WorkflowCompleted}                         xpath:(//div[contains(text(),'Completed / Cancelled phase')])[2]
${Status}                                     xpath://div[contains(text(),'Status')]
${DateCompleted}                              xpath://div[@data-automation-id='viewerlbl492Control']



