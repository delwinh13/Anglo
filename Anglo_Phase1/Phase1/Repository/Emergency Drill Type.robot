*** Variables ***
#************************************************* Actions ****************************************
${AngloMainMenuXpath}                                       xpath://i[@class='large sidebar link icon menu']
${AngloMaintanceInterfaceXpath}                             xpath://div[contains(text(),'Anglo Maintenance Page')]
${EmergencyGrillTypes}                                      xpath://label[contains(text(),'Emergency Drill Types')]
${EmergencyAddButton}                                       xpath://div[@id='btnActAddNew']
${DataFlowxpath}                                             xpath://div[@data-automation-id='moduleProcessFlowButton']
${DataFlowAddFlow}                                            xpath:(//div[@id='step_1'])[2]
${BusinessUnitDrpDwn}                                          xpath://div[@data-automation-id='viewerddl4Control']
${BusinessUnitDrpDwnValue}                                      xpath:(//li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']//a//i)[1]
${BusinessUnitBackLink}                                         xpath://b[@class='select3-down drop_click']
${GrillType}                                                   xpath://div[contains(@class,'textbox textbox')]//input
${SaveButton}                                                   xpath:(//div[@i18n="save"])[2]
${DataFlowEditFlow}                                              xpath:(//div[@id='step_2'])[2]

