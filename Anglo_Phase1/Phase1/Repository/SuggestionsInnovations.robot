*** Variables ***
#************************************************* Actions ****************************************
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']
${AngloTrainingAndSuggestionsInterfaceXpath}                xpath://div[contains(text(),'Anglo Training and Suggestions')]
${SuggestionsAndInnovationsModulXpath}                      xpath://label[contains(text(),'Suggestions and Innovations')]
${AddButtonXpath}                                           xpath://div[@i18n='add_new']
${ProcessFlowXpath}                                         xpath://span[@i18n='process_flow']
${AddSuggestionsAndInnovaionXpath}                           xpath:(//div[contains(text(),'Add suggestions and innovation')])[2]
${BusinessUnitDrpDwnXpath}                                   xpath://div[@name='ddl7']
${BUDrpValueXpath}                                           xpath:(//a[text()='Anglo American Group']/../i)[1]
${BUDrpValueBulkXpath}                                       xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${BUDrpValueKumbaXpath}                                      xpath://a[text()='Kumba']/../i
${BUDrpValueSishenXpath}                                     xpath://a[text()='Sishen Mine']/../a
${RiskDesciplineXpath}                                       xpath://div[@name='ddl94']
${RiskDesciplineCheckBoxXpath}                                xpath:(//a[text()='Environment']/../a/i)[1]
${RiskDesciplineCheckBoxLinkXpath}                            xpath://b[@class='select3-down drop_click']
${RiskDesciplineTextBoxXpath}                                 xpath://div[@class='textbox textbox_1de26593']//textarea[@class='txt']
${SuggestionXpath}                                             xpath://div[@name='txb_n4']
${SuggestionValueXpath}                                         xpath://div[@name='txb_n4']//div//textarea
${SuggestedByXpath}                                             xpath://div[@name='ddl29']
${SuggestedByInputXpath}                                        xpath:(//input[@placeholder='Type and enter to search'])[1]
${SuggestedByValueXpath}                                        xpath:(//a[text()='Auto Test robot (Autotest)']/../a)[1]
${SuggestionAssignedToXpath}                                    xpath://div[@name='ddl8']
${SuggestionAssignedInputXpath}                                 xpath:(//input[@placeholder='Type and enter to search'])[2]
${SuggestionAssignedValueXpath}                                  xpath:(//a[text()='AutoTest User']/../a)[1]
${SuggestionTypeXpath}                                           xpath://div[@name='ddl11']
${SuggestionTypeInputXpath}                                      xpath://div[@id='select3_4d11f9a4']//div/input
${SuggestionTypeValueXpath}                                       xpath:(//a[text()='IsoMetrix improvement']/../a)[1]
${SaveButtonXpath}                                                xpath:(//div[@i18n='save'])[2]
${SuggestionsAndInnvationReview}                                  xpath:(//div[contains(text(),'Suggestion and innovation under review')])[2]
#************************************************* Supporting Documents ************************************************
${SupportingDocXpath}                   xpath://div[contains(text(),"Supporting Documents")]
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
${SystemMailFolder}                         xpath://span[text()='System Mail']
${Outlook}                                  xpath://a[@id='ShellMail_link']
${EmailLinkBacktoRecord}                    xpath://a[@data-auth='NotApplicable']
${SuggestionAndInnovationsAddedSubject}     xpath:(//span[contains(text(),'IsoMetrix Suggestions and Innovations #')][contains(text(),'has been added')])[1]
${SuggestionAndInnovationsChangedSubject}    xpath:(//span[contains(text(),'IsoMetrix Suggestions and Innovations #')][contains(text(),'has changed')])[1]
${IsoMetrixSignInXpath}                     xpath://div[@id='divMixedMode']/div/div[2]/div[text()='ISOMETRIX SIGN IN']































