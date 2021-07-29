*** Variables ***
#************************************************* Actions ****************************************
${AngloMainMenuXpath}                                           xpath://i[@class='large sidebar link icon menu']
${AngloandingPage}                                              xpath://div[contains(text(),'Anglo Landing Page')]
${EmergencyDrillXpath}                                          xpath://label[contains(text(),'Emergency Drills')]
${EmergencyAddButton}                                           xpath://div[@id='btnActAddNew']
${ProcessFlow}                                                  xpath://span[@i18n='process_flow']
${PlanningPhase}                                                xpath:(//div[@id='step_1'])[2]
${BusinessUnitDrpDown}                                           xpath://div[@name='ddl1']
${FunctionalBUDrpValueXpath}                                     xpath:(//a[text()='Anglo American Group']/../i)[1]
${FunctionalBUDrpValueBulkXpath}                                 xpath: //a[text()='Bulk Commodities & Other Minerals']/../i
${FunctionalBUDrpValueKumbaXpath}                                xpath://a[text()='Kumba']/../i
${FunctionalBUDrpValueSishenXpath}                               xpath://a[text()='Sishen Mine']/../a
${FunctionalLocation}                                            xpath://div[@name='ddl194']
${FunLocation}                                                   xpath://a[contains(text(),'MIS | Sishen')]
${ResponsibleSuperviser}                                         xpath://div[@name='ddl5']
${ResponsibleSupviserValue}                                      xpath://a[text()='AutoTest User']/../a
${EmergencyCoordinator}                                          xpath://div[@name='ddl7']
${EmergencyCoordinValue}                                         xpath:(//input[@i18np='type_to_search'])[6]
${EmergencyCoordinatordrpDwn}                                    xpath:(//a[text()='AutoTest User']/../a)[2]
${EmergencyDrillDate}                                             xpath://div[@name='cal3']//input
${Type}                                                           xpath://div[@name='ddl406']
${DrillType}                                                      xpath:(//li[@id='f48d880b-07af-45d4-8dcb-35b09b0c14c7']//a//i)[1]
${TypeDropDownClick}                                              xpath://b[@class='select3-down drop_click']
${SupportingDocumentsLink}                                         xpath:(//div[contains(text(),'Supporting documents')])[1]
${SaveButton}                                                      xpath:(//div[@i18n='save'])[2]
${ProcessFlowInProgress}                                           xpath:(//div[@id='step_2'])[2]
${DrillCompletedWithNoFindings}                                    xpath://div[@data-automation-id='viewerlbl311Control']
${ResponsibleSupviserInputValue}                                   xpath:(//input[@i18np='type_to_search'])[5]
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
${outlookusername}                          Delwin.Horsthemke@isometrix.com
${outlookpassword}                          Metrix@May2021
${SignInBtn}                                xpath://a[contains(text(),'Sign in')]
${EmailField}                               xpath://input[@type='email']
${EmailNext}                                xpath://input[@value='Next']
${EmailPasswordField}                       xpath://input[@type='password']
${EmailSignInBtn}                           xpath://input[@value='Sign in']
${Outlook}                                  xpath://a[@id='ShellMail_link']
${SystemMailFolder}                         xpath://span[text()='System Mail']
${EmailLinkBacktoRecord}                    xpath://a[@data-auth='NotApplicable']
${EmergencyDrillSubject}                    xpath:(//span[contains(text(),'IsoMetrix Notification: Emergency Drill Added')])[1]
${IsoMetrixSignInXpath}                     xpath://div[@id='btnIsometrixSignin']

#*************************************************Complete Emergency Drill with no Findings****************************************
${DrillCompletedWithNoFinding}               xpath://div[@name='ddl280']
${DrillCompleteWithYes}                      xpath://a[@class='jstree-anchor']
${WorkflowCompleted}                         xpath:(//div[contains(text(),'Completed / Cancelled phase')])[2]
${Status}                                    xpath://div[contains(text(),'Status')]
${DateCompleted}                             xpath://div[@data-automation-id='viewerlbl492Control']



