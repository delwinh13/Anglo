*** Variables ***
#************************************************* FR2- Approve Suggestion or Innovation ****************************************
#Approve/Reject Suggestion or Innovation
${SuggestionStatuaXpath}                            xpath:(//td[@class='sel']//div//a//span//ul//li)[6]
#${UnderReviewCheckboxXpath}                         xpath://a[@id='39e971dd-675d-4504-ba40-47f588e9c145_anchor']//i
${UnderReviewClickXpath}                            xpath://b[@class='select3-down drop_click']
${SearchButtonXpath}                                xpath://div[@id='btnActApplyFilter']//div
${SuggestionTableXpath}                             xpath://div[@id='grid']//table//tbody//tr[2]
${ApprovalTabXpath}                                  xpath://div[contains(text(),'Approval')]
${ApprovalDropDownXpath}                             xpath://div[@name='ddl75']//span//ul//li
${ApprovalDropDownNoXpath}                           xpath://a[text()='No']/../a
${ApprovalDropDownYesXpath}                          xpath://a[text()='Yes']/../a
${SaveButtonXpath}                                   xpath:(//div[@i18n='save'])[2]
${SuggestionProcessFlowXpath}                        xpath://span[@i18n='process_flow']
${ProcessFlowApprovedXpath}                          xpath:(//div[@phaseid='5D399FB1-538F-4BDC-ACD4-FCBD2F50175F'])[2]
${ProcessFlowRejectedXpath}                          xpath:(//div[@id='step_5'])[2]
${CommentsXpath}                                     xpath://textarea[@class='txt translatable']

