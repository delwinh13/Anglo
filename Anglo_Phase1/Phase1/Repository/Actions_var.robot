*** Variables ***
#************************************************* Actions ****************************************
${ActionsModulesXpath}                  xpath://*[@id="section_476805d8-7c0a-450e-916c-f105d2758b97"]/label

#Anglo Actions Module Page
${ActionsTabXpath}                      xpath://*[@id="section_1cd77a3d-bcc3-4c6b-a9f6-a2b56b9db1fe"]/label
${AdHocActionsXpath}                    xpath://*[@id="section_3d46f854-5478-41a8-9a24-9f4a4c079c09"]/label
${ActionPlanXpath}                      xpath://*[@id="section_a2e89088-bf39-4d43-8e91-e3e37242f8c3"]/label
#********************************************** Ad-Hoc Actions ****************************************
${AddButtonXpath}                       xpath://*[@id="btnActAddNew"]/div
${BusinessUnitDropdownXpath}            xpath://*[@id="control_032851E6-3D2C-4FAC-8D41-FE7AEC9CB297"]/div[1]/a/span[1]/ul/li
${BUAAGOptionXpath}                     xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BUBCOOptionXpath}                     xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BUKOptionXpath}                       xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BUSMOptionXpath}                      xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${DescriptionTextAreaXpath}             xpath://*[@id="control_5FBC4126-ED36-41A8-A92D-255E839A2FCA"]/div[1]/div/textarea
${AdHocActionsSaveAndContinue}          xpath://*[@id="control_7AD7DA6A-8525-43B0-B87E-02D486AB9AEF"]/div[1]/div

#Actions Tab
${ActionsAddButtonXpath}                xpath://*[@id="btnAddNew"]/div

#********************************************** Ad-Hoc Actions/Actions ****************************************
#Action Detail Tab
${ActionStartDateXpath}                 xpath://*[@id="control_EC1F208E-0AA6-458D-AFC5-62C7BE806221"]/div[1]/span/span/input
${ProcessflowButtonXpath}               xpath://*[@id="btnProcessFlow_form_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2"]/span
${EntityListBoxXpath}                   xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[2]/b[1]
${EAAGOptionXpath}                      xpath:(//a[text()='Anglo American Group']/../i)[2]
${ValidationClosePopupXpath}            xpath://*[@id="opentip-18"]/div/div[2]/div[1]
${EDBGOptionXpath}                      xpath:(//a[text()='De Beers Group']/../i)[2]
${EDBGOptionXpath1}                     xpath:(//a[@id='470eadd6-ff09-4077-9627-eace5c8f3f10_anchor']/../i)[1]
${EDBGOptionXpath2}                     xpath://*[@id="fd7f27b9-2e49-4e43-9cf7-4fc0f507fd7f_anchor"]
#Alternate sc:1
${EAApOptionXpath}                      xpath:(//a[text()='Anglo American plc']/../i)[2]
${EAApOptionXpath1}                     xpath://*[@id="e0c53028-7283-4577-acd8-4f6d681f1b62"]/i
${EAApOptionXpath2}                     xpath://*[@id="01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor"]
${DeselectAllXpath}                     xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[2]/b[2]

${ResponsibleTeamFieldXpath}            xpath://*[@id="control_A0515044-6033-4D11-B699-EB1556BF085F"]/div[1]/a/span[1]/ul/li
${SAPWMcheckboxXpath}                   xpath://*[@id="control_BAC7B132-4D29-423C-A18A-86408700B677"]/div[1]/div
${ChangeworkcentrecheckboxXpath}        xpath://*[@id="control_9CC7BDAF-5944-4671-9DDB-95AAC0E65135"]/div[1]/div
${SapOwnercheckboxXpath}                xpath://*[@id="control_53916F30-2AA8-479F-A57C-6055EBB74C55"]/div[1]/div/input
${ReplicatecheckboxXpath}               xpath://*[@id="control_9FB64F38-240A-4D57-8EBF-202D8124CDEE"]/div[1]/div
${FunctionalLocationFieldXpath}         xpath://*[@id="control_FBBE5852-94A0-44C7-AA36-99A0F347D78E"]/div[1]/a/span[1]/ul/li
${FunctionalLocationFieldXpath1}        xpath:(//input[@placeholder='Type and enter to search'])[3]
${FLSelectFieldXpath1}                  xpath://*[@id="a16cacef-24c7-4008-95da-9fb4b422e4e6_anchor"]
${ValidationStatusXpath}                xpath://*[@id="control_1A504EDF-7057-484E-8A4C-24CD5B576FBD"]/div[1]/a/span[2]/b[1]
${VSAwatingValidationXpath}             xpath://*[@id="4ee9a05b-394b-4044-8525-68b7a90b6529_anchor"]
${VSRejectedXpath}                      xpath://*[@id="1fbd0d48-e387-408e-ae78-88283d42ae26_anchor"]
${RejectionCommentsXpath}               xpath://*[@id="control_489072DB-AFAC-490D-98C1-28BE89857580"]/div[1]/div/textarea
${IsthisarecurringactionXpath}          xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[2]/b[1]
${IsthisarecurringactionXpath1}         xpath://*[@id="14f2fba0-4b57-42aa-9cba-f1d9c372d3e6_anchor"]
${IsthisarecurringactionXpath2}         xpath://*[@id="e4db7081-5761-4ae9-b28e-2f709771e997_anchor"]
${ReccurenceFrequencyXpath}             xpath://*[@id="control_549CF055-5169-4E82-86A3-1061F4635C8D"]/div[1]/a/span[2]/b[1]
${ReccurenceFrequencyXpath1}            xpath://*[@id="86b6e8dc-ea19-4aea-9ca3-481b05fae63a_anchor"]
${ReccurenceFrequencyWXpath}            xpath://*[@id="86531182-a17f-4b94-aaea-cf4538e91deb_anchor"]
${ReccurenceEndDateXpath}               xpath://*[@id="control_7433D5DB-1D61-47B9-98A2-371DB15BC5C3"]/div[1]/span/span/span/span
${RFcheckboxXpath}                      xpath://*[@id="control_2E6E8C3B-087E-442A-8788-A0614E7DADD7"]/div[1]/div

#**************************************************All the mandatory fields**************************************
${TypeOfActionXpath1}                   xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[2]/b[1]
${SelectCOptionXpath}                   xpath://*[@id="2006cc14-2025-4073-97e4-fca83aa8a2c4_anchor"]
${ActionDescXpath}                      xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${ResPXpath}                            xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[2]/b[1]
${ResPSearchXpath}                      xpath:(//input[@placeholder='Type and enter to search'])[1]
${ResPSelectionXpath}                   xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${ActionDueDateXpath}                   xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/span/span
${ADDSelectionXpath}                    xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${SaveButtonXpath}                      xpath://*[@id="btnSave_form_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2"]/div[3]
























