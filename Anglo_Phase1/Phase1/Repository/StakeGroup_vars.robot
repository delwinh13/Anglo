*** Variables ***
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
${StakeGroupAddedSubject}                   xpath:(//span[contains(text(),'Non production - IsoMetrix Stakeholder Group #')][contains(text(),'has been added')])[1]
${IsoMetrixSignInXpath}                     xpath://div[@id='divMixedMode']/div/div[2]/div[text()='ISOMETRIX SIGN IN']

#************************************************* FR1 - Capture Stakeholder Group_MS ****************************************
${StakeholderGroupXpath}                    xpath://label[.='Stakeholder Group']
${StakeholderGroupSearchID}                 id:btnActApplyFilter
${StakeholderGroupSearchRecordXpath}        xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[2]/div[1]/div[3]/table[1]/tbody[1]/tr[2]/td[5]/span[1]
${StakeholderGroupAddBtnID}                 id:btnActAddNew
${StakeholderGroupPFID}                     id:btnProcessFlow_form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E
${StakeholderGroupPFAdd}                    xpath:(//div[@id='divProcess_2D4B7042-3E2E-495C-A77F-1642D10D5F1E'])[2]/div/div/div/div[@class='step active']//div[text()='Add phase']
${StakeholderGroupPFEdit}                   xpath:(//div[@id='divProcess_2D4B7042-3E2E-495C-A77F-1642D10D5F1E'])[2]/div/div/div/div[@class='step active']//div[text()='Edit phase']
${StakeholderGroupNameXpath}                xpath://div[@id='control_6B36E56B-4BD2-4A16-AD58-94FE1883EFE2']/div/div/input
${StakeholderGroupKnownAsXpath}             xpath://div[@id='control_5126FC78-97E6-49AA-A6D0-327CD4FD2CC5']/div/div/input
${StakeholderGroupCatDDXpath}               xpath://div[@id='control_BDB3E74D-818E-4A51-8443-3F30BA7A472A']/div/a/span[2]/b[1]
${StakeholderGroupCatDDLocalCommXpath}      xpath://div[contains(@class, 'transition visible')]//a[text()='Local community (individuals and households)']/i[1]
${StakeholderGroupCatDDReportExternPartyXpath}      xpath://div[contains(@class, 'transition visible')]//a[text()='Reportable to external parties']/i[1]
${StakeholderGroupRespOwnersDDXpath}        xpath://div[@id='control_A01F1D1A-45BF-4A6B-B2C2-88046BDAFDA1']/div/a/span[2]/b[1]
${StakeholderGroupRespOwnersSrchXpath}      xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[2]/div[11]/div[1]/input[1]
${StakeholderGroupRespOwnersOptXpath}       xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User']/i[1]
${StakeholderGroupAccountOwnerDDXpath}      xpath://div[@id='control_A1C07241-404B-4E18-90D1-E7F20AB4E625']/div/a/span[2]/b[1]
${StakeholderGroupAccountOwnerSrchXpath}    xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[2]/div[12]/div[1]/input[1]
${StakeholderGroupAccountOwnerOptXpath}     xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User'][1]
${StakeholderGroupDescXpath}                xpath://div[@id='control_4AEFCBE1-7C06-4528-BB6B-CFD298C47AA1']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeholderGroupBUDDXpath}                xpath://div[@id='control_931D1181-0EA6-4EBF-BAA9-B497F5793EC0']/div/a/span[2]/b[1]
${StakeholderGroupBUExpandXpath}            xpath://a[text()='Anglo American Group']/../i
${StakeholderGroupBUExpand2Xpath}           xpath://a[text()='Bulk Commodities & Other Minerals']/../i
#kumba
${StakeholderGroupBUExpand3Xpath}           xpath://a[text()='Kumba']/../i
#sishen mine
${StakeholderGroupBUSelectXpath}            xpath://a[text()='Sishen Mine']/i[1]
${StakeholderGroupSaveContinueXpath}        xpath://div[@id='control_029B81AE-806B-4551-B37C-B10E29A023FE']/div/div[text()='Save to continue']
${RecordSaved}                              xpath://*[@id="txtHeader"]
${StakeholderGroupSaveBtnXpath}             xpath://div[@id='btnSave_form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']
${StakeholderGroupRecordNoXpath}            xpath:(//div[@id='form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']//div[contains(text(),'- Record #')])[1]
${StakeholderGroupStatusActiveXpath}        xpath://div[@id='control_37166D69-F3C9-482A-BCAF-F39E8271382E']/div/a/span/ul/li[text()='Active']
${StakeholderGroupSocialPanelXpath}         xpath://div[@id='control_7E1D1634-E831-421B-882E-6C9146CA8CA5']/div[9]/div/span[text()='Social Status']
${StakeholderGroupDetailsTab}               xpath://li[@id='tab_337B1D56-1774-4C9D-8515-CC886C55C1FB']/div[text()='Stakeholder Details']
${StakeholderGroupAnalysisTab}              xpath://li[@id='tab_879C9CCB-D07A-44E8-8654-0C4503DACF50']/div[text()='Stakeholder Analysis']
${StakeholderGroupMembersTab}               xpath://li[@id='tab_027E4E03-C1EF-434A-8CCD-24152EA912D3']/div[text()='Members']
${StakeholderGroupAssGroupsTab}             xpath://li[@id='tab_A07B0D3C-A829-4D3F-B4E3-1BC4FF780063']/div[text()='Associated Stakeholder Groups']
${StakeholderGroupEngagementsTab}           xpath://li[@id='tab_3942DBC8-B12A-4A79-97F6-4ED66D494909']/div[text()='Engagements']
${StakeholderGroupCommitmentsTab}           xpath://li[@id='tab_5FD00F1C-95C2-48FD-91A0-896E6C72A5A4']/div[text()='Commitments']
${StakeholderGroupRelateGrievancesTab}      xpath://li[@id='tab_6335906D-BAFA-4BD8-88B8-9DE784776205']/div[text()='Related Grievances']
${StakeholderGroupActionsTab}               xpath://li[@id='tab_5A0DD331-1061-4ECB-8893-C80AABF7C0FD']/div[text()='Actions']
${StakeholderGroupSupportDocs}              xpath://li[@id='tab_144D92B6-733C-4F37-8572-6F268883A0EC']/div[text()='Supporting Documents']
${StakeholderGroupTabRightArrow}            xpath:(//div[@class='tabpanel_tab_content']/div)[2]
${StakeholderGroupTabLeftArrow}             xpath:(//div[@class='tabpanel_tab_content']/div)[1]
${StakeholderGroupImageUploadXpath}         xpath://div[@id='control_B32AAAD9-CB1E-4134-9F1A-AE82180D8F07']/div/div[2]/div[2]/b[@class='imagecontrol-upload']
${StakeholderGroupModLoadingXpath}          xpath://div[@id='divContainer']//div[@title='Loading...']

#************************************************* FR1 - Capture Stakeholder Group_OS1 ****************************************
${StakeholderGroupPermAddStreetXpath}       xpath://div[@id='control_C30F3943-2351-490A-A865-7D2337A1F7C5']/div/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeholderGroupPermAddTownXpath}         xpath://div[@id='control_19F1032F-7455-47F5-BAAA-0F93B65B6FAD']/div/div/input
${StakeholderGroupPermAddZipXpath}          xpath://div[@id='control_99DCFFAC-34D1-4291-9154-5B3B7DC59D1B']/div/div/input
${StakeholderGroupPermAddLocDDXpath}        xpath://div[@id='control_B64B2E96-473B-4207-8FCE-C7DAB53F8834']/div/a/span/ul/li
${StakeholderGroupPermAddLocOptXpath}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='Australia'])[1]
${StakeholderGroupSuppDocsLinkXpath}        xpath://div[@id='control_BFA08DA7-DF6E-4B10-A435-4EBD13654902']//b[@original-title='Link to a document']
${StakeholderGroupSuppDocsURLXpath}         xpath://div[@class='confirm-popup popup']//input[@id='urlValue']
${StakeholderGroupSuppDocsURLTitleXpath}    xpath://div[@class='popup-container']//input[@id='urlTitle']
${StakeholderGroupSuppDocsAddXpath}         xpath://div[@class='popup-container']//div[contains(text(),'Add')]
${StakeholderGroupSuppDocsSaveSupDocXpath}      xpath://div[@id='control_6810CB58-13EE-4E0C-909D-DAE1B6392594']/div/div[text()='Save supporting documents']
${StakeholderGroupSuppDocsLinkAdded}        xpath://div[@class='linkbox-links linkbox-icons']/div/div[text()='Isometrix']

#************************************************* FR1 - Capture Stakeholder Group_AS1 ****************************************
${StakeholderGroupCatDDAcaInstXpath}        xpath://div[contains(@class, 'transition visible')]//a[text()='Academic institution']/i[1]

#************************************************* FR1 - Capture Stakeholder Group_AS2 ****************************************
${StakeholderGroupCatDDServProvXpath}       xpath://div[contains(@class, 'transition visible')]//a[text()='Service provider / Contracting company']/i[1]
${StakeholderGroupContractSupplierTabXpath}     xpath://li[@id='tab_5649976E-D3E2-4B5D-8E83-DECD2901F3A0']/div[text()='Contractor or Supplier Manager']

#************************************************* FR1_02 - Update Stakeholder Group Details_MS_OS ****************************************
${StakeholderGroupPermAddLatXpath}          xpath://div[@id='control_6DE16A17-A6F0-4F52-9DB9-220BC3F5048E']/div/div/input[@readonly='readonly']
${StakeholderGroupPermAddLongXpath}         xpath://div[@id='control_F48DA652-2EC8-496D-AF2A-BF08D33B73EB']/div/div/input[@readonly='readonly']
${StakeholderGroupPermAddMapCSS}            css:#graphicsLayer2_layer > path
${StakeholderGroupPermCommentsXpath}        xpath://div[@id='control_ED9C46F2-0C0F-4A38-96A8-4AF098F9F380']/div/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeholderGroupPermAddMapPanelXpath}     xpath://div[@id='control_2E5105EB-43CD-4F55-99FF-B9423885B779']/div[9]/div/span
${StakeholderGroupCorrAddPanelXpath}        xpath://div[@id='control_4459C461-C755-41DE-B4AA-AF65F8CA9E4D']/div[9]/div/span
${StakeholderGroupCorrAddTextXpath}         xpath://div[@id='control_CFC6CEFA-5974-4A77-956A-315292071111']/div/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeholderGroupCorrAddZipXpath}          xpath://div[@id='control_9D91E3DA-6FA0-4E43-B74C-6806CF76EFD7']/div/div/input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']

#************************************************* FR1_03 - Conduct Stakeholder Group Analysis_MS_OS ****************************************
${StakeholderGroupAnalysisSIMatrixXpath}            xpath://div[@id='control_608AF5EA-063C-4DCB-89A2-685C6A43795B']/div/div[3]/img[@src='rest/Storage/File/0dbac847-ece4-4754-b41d-eda008cd215b/Image/View/Mid']
${StakeholderGroupAnalysisTopIssAssPanelXpath}      xpath://div[@id='control_43968C1B-65B3-43EC-8AF7-5F14D2382B42']/div[9]/div/span
${StakeholderGroupAnalysisGuidePanelXpath}          xpath://div[@id='control_DC0A11DE-559B-4C80-9521-7264990DCB9B']/div[9]/div/span
${StakeholderGroupAnalysisImpactRatDDXpath}         xpath://div[@id='control_4F51BB5C-34D0-42B8-9324-66AC1198CF45']//li
${StakeholderGroupAnalysisImpactRatHghXpath}        xpath://div[contains(@class, 'transition visible')]//a[text()='High']
${StakeholderGroupAnalysisImpactRatMedXpath}        xpath://div[contains(@class, 'transition visible')]//a[text()='Medium']
${StakeholderGroupAnalysisImpactRatLowXpath}        xpath://div[contains(@class, 'transition visible')]//a[text()='Low']
${StakeholderGroupAnalysisInfRatDDXpath}            xpath://div[@id='control_F72B39E0-9AEB-436C-8732-F06C20862FF0']//li
${StakeholderGroupAnalysisInfRatHghXpath}           xpath://div[contains(@class, 'transition visible')]//a[text()='High']
${StakeholderGroupAnalysisInfRatMedXpath}           xpath://div[contains(@class, 'transition visible')]//a[text()='Medium']
${StakeholderGroupAnalysisInfRatLowXpath}           xpath://div[contains(@class, 'transition visible')]//a[text()='Low']
${StakeholderGroupAnalysisCommentsXpath}            xpath://div[@id='control_31C00096-86E4-448A-8925-DEC2C7CD3995']/div/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeholderGroupAnalysisGuidelinesExampleToolsLabelXpath}         xpath://div[@id='control_82C5CC08-C3E6-43D6-94B2-3F78CCD5DAC1']

#************************************************* FR2 - Capture Topic / Issue Assessment_MS ****************************************
${StakeGroupTopIssAssPanelXpath}                 xpath://div[@id='control_43968C1B-65B3-43EC-8AF7-5F14D2382B42']//span[contains(text(),'Topic/Issue Assessment')]
${StakeGroupTopIssAssInLineEditTextXpath}        xpath://div[@id='control_791664E9-F4D5-4CBB-9BAA-B187310C3D6F']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupTopIssAssNoResultsXpath}             xpath://div[@id='control_791664E9-F4D5-4CBB-9BAA-B187310C3D6F']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupTopIssAssAddBtnXpath}                xpath://div[@id='control_791664E9-F4D5-4CBB-9BAA-B187310C3D6F']//div[@id='btnAddNew']
${StakeGroupTopIssAssRecordVisibleXpath}         xpath:(//div[@id='control_791664E9-F4D5-4CBB-9BAA-B187310C3D6F']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[4])[1]
${StakeGroupTopIssAssDDXpath}                    xpath:(//div[@id='control_DECCD753-8245-48AE-9160-4E5F237C119A'])[1]
${StakeGroupTopIssAssDDOptXpath}                 xpath:(//ul[@class='jstree-container-ul jstree-children']//a[text()='Socio cultural networks impacts and risks'])[1]
${StakeGroupTopIssAssImpactDDXpath}              xpath:(//div[@id='control_63C66781-07ED-4EB2-8A2F-CAED92ED118C'])[1]
${StakeGroupTopIssAssImpactHghXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='High']
${StakeGroupTopIssAssImpactMedXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='Medium']
${StakeGroupTopIssAssImpactLowXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='Low']
${StakeGroupTopIssAssInfluenceDDXpath}           xpath:(//div[@id='control_46284CB6-8E0D-4AF6-BD22-0AF4AA6E7759'])[1]
${StakeGroupTopIssAssInfluenceHghXpath}          xpath://div[contains(@class, 'transition visible')]//a[text()='High']
${StakeGroupTopIssAssInfluenceMedXpath}          xpath://div[contains(@class, 'transition visible')]//a[text()='Medium']
${StakeGroupTopIssAssInfluenceLowXpath}          xpath://div[contains(@class, 'transition visible')]//a[text()='Low']
${StakeGroupTopIssAssMonitorKeepInformedXpath}     xpath://div[@id='control_1B31E04C-0302-48B4-A0A8-67090A7E577E']//div[@style='height: 22px; background-color: rgb(244, 172, 28);']
${StakeGroupTopIssAssSaveTick}                     xpath:(//div[@id='control_791664E9-F4D5-4CBB-9BAA-B187310C3D6F']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[1]/div[1])[1]

#*********************************************** FR3 - Capture Related Stakeholders_MS *******************************************
${StakeGroupRelationshipAddBtnXpath}                     xpath://div[@id='control_7016173C-BF8B-419B-8C46-D81EAA9AEC45']//div[text()='Add']
${StakeGroupRelationsCreateNewIndividualBtnXpath}        xpath://div[text()='Create a new individual']
${StakeGroupRelationsInLineEditTextXpath}                xpath:(//div[@id="grid"]/div[4]/div/div[1])[2]
${StakeGroupRelationsStakeNameDDXpath}                   xpath://div[@id='control_623A6228-2A56-4954-91D6-D2E07B56E612']//li
${StakeGroupRelationsRelationsStakeNameSrchXpath}        xpath:(//input[@placeholder='Type and enter to search'])[4]
${StakeGroupRelationsStakeOptXpath}                      xpath://div[contains(@class, 'transition visible')]//a[text()='Andrew Fletcher'][1]
${StakeGroupRelationsPositionDDXpath}                    xpath://div[@id='control_65D64BB9-F6EC-4C8C-9E9D-C3E22C4B36FA']//li
${StakeGroupRelationsPositionCFOXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Chief Financial Officer (CFO)'][1]
${StakeGroupRelationsRecordSaveTickXpath}                xpath://tr[@id="formWrapper_0"]/td[1]/div[1]
${StakeGroupRelationsInLineEditBtnXpath}                 xpath:(//div[@id="grid"]/div[4]/div/div[2]/div[3]/span)[2]
${StakeGroupRelationsRecordOpenXpath}                    xpath:(//div[@id="grid"]/div[3]/table/tbody)/tr/td[5]/div[text()='Andrew Fletcher'][1]
${StakeGroupRelationsLoadingDataXpath}                   xpath://div[@id='divWait']/div[text()='Loading data...']
${StakeGroupRelationsRecordOpenedXpath}                  xpath:(//div[@id='form_0530E237-3D65-4F8D-8F0C-95A9B4E42AB0']/div/div/div[3])[text()='Related Stakeholder'][1]
${StakeGroupRelationsRecordPFXpath}                      xpath://div[@id='btnProcessFlow_form_0530E237-3D65-4F8D-8F0C-95A9B4E42AB0']
${StakeGroupRelationsPFEditXpath}                        xpath:(//div[@id='divProcess_0530E237-3D65-4F8D-8F0C-95A9B4E42AB0'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupRelationsRecordClosedXpath}                  xpath://div[@id="form_0530E237-3D65-4F8D-8F0C-95A9B4E42AB0"]/div[1]/i[2]

#*********************************************** FR3 - Capture Related Stakeholders_AS *******************************************
${StakeGroupSIProcessFlowBtnXpath}          xpath://div[@id='btnProcessFlow_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']
${StakeGroupSIPFAddPhaseXpath}              xpath:(//div[@id='divProcess_E686D312-3E2F-4E66-9EAD-AC71C09267DD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupSIFirstNameXpath}               xpath://div[@id='control_E186B9E5-4102-409D-8F57-7355938C09D9']/div/div/input
${StakeGroupSILastNameXpath}                xpath://div[@id='control_A9D1A3E8-C561-452A-A1F4-7BCB496B365F']/div/div/input
${StakeGroupSIKnownAsXpath}                 xpath://div[@id='control_BED0557B-BBC2-46C1-B571-BE60A267F0EA']/div/div/input
${StakeGroupSITitleDDXpath}                 xpath://div[@id='control_28C03054-D663-431B-9F65-38BE54617019']//li
${StakeGroupSITitleMrXpath}                 xpath://a[text()='Mr']
${StakeGroupSIStatusActiveXpath}            xpath://div[@id='control_170F62D3-43C4-4548-A7C3-2E856B137AC8']/div/a/span/ul/li[text()='Active']
${StakeGroupSICategoriesDDXpath}            xpath://div[@id='control_F1357856-7A84-4716-9B1D-077C87CC8591']/div/a/span[2]/b[1]
${StakeGroupSICategoriesExpand1Xpath}       xpath://a[text()='Anglo employee / contractor']/../i
${StakeGroupSICategoriesEmployeeXpath}      xpath:(//a[text()='Employee']/i[1])[1]
${StakeGroupSIBUDDXpath}                    xpath://div[@id='control_4CFB2165-708B-4D55-9988-9CDCB5487291']/div/a/span[2]/b[1]
${StakeGroupSIResponsOwnersDDXpath}         xpath://div[@id='control_4BC61A3A-EC52-4BEA-807E-B70C75D5B421']/div/a/span[2]/b[1]
${StakeGroupSIResponsOwnersSrchXpath}       xpath:(//input[@placeholder='Type and enter to search'])[1]
${StakeGroupSIResponsOwnersOptXpath}        xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User']/i[1]
${StakeGroupSIAccountOwnersDDXpath}         xpath://div[@id='control_2A0EA9D1-04B4-4092-AD71-0CA6ED2D9C4B']/div/a/span[2]/b[1]
${StakeGroupSIAccountOwnersSrchXpath}       xpath:(//input[@placeholder='Type and enter to search'])[2]
${StakeGroupSIAccountOwnersOptXpath}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${StakeGroupSISaveandContinueBtnXpath}      xpath://div[@id='control_76647B9D-57AE-48B4-95B0-65E0377FEE41']/div/div[text()='Save to continue']
${StakeGroupSIPFEditXpath}                  xpath:(//div[@id='divProcess_E686D312-3E2F-4E66-9EAD-AC71C09267DD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupSISavedRecordNo}                xpath:(//div[@id='form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']//div[contains(text(),'- Record #')])[1]
${StakeGroupRelationsStakeNameRefreshXpath}         xpath://tbody/tr[@id='formWrapper_0']/td[5]/div[1]/div[1]/a[1]/span[2]/b[3]
${StakeGroupRelationsStakeOptASXpath}               xpath:(//div[contains(@class, 'transition visible')]//a[text()='StakeGroup_Auto Test SG_Last Name (FR3_AS)'][1])[1]

#*********************************************** FR4 - Capture Related Stakeholders_MS *******************************************
${StakeGroupAssGroupAddNewGroupBtnXpath}    xpath://div[text()='Add new stakeholder group']
${StakeGroupAssGroupAddBtnXpath}            xpath://div[@id='control_90C85E93-A691-4C58-982F-39EEE9A0BC53']//div[text()='Add']
${StakeGroupAssGroupNameDDXpath}            xpath:(//div[@id='control_F2EBECAD-5135-4844-B579-0A02F8CE3738']//li)[1]
${StakeGroupAssGroupNameSrchXpath}          xpath:(//input[@placeholder='Type and enter to search'])[4]
${StakeGroupAssGroupNameOptXpath}           xpath://div[contains(@class, 'transition visible')]//a[text()='Ab Pumps'][1]
${StakeGroupAssGroupRelationshipDDXpath}    xpath://div[@id='control_40A836F8-F717-498B-B138-4850458196D2']//li
${StakeGroupAssGroupRelationshipOptXpath}   xpath:(//div[contains(@class, 'transition visible')]//a[text()='Business Partner'])[1]
${StakeGroupAssGroupRecordOpenXpath}        xpath://div[@id="grid"]/div[3]/table/tbody/tr/td[4]/div[text()='Ab Pumps']
${StakeGroupAssGroupRecordOpenedXpath}      xpath:(//div[@id='form_DE1E67A3-E6EA-466E-B3BC-2AD2EE7A0959']/div/div/div[3])[text()='Associated Stakeholder Groups'][1]
${StakeGroupAssGroupPFBtnXpath}             xpath://div[@id='btnProcessFlow_form_DE1E67A3-E6EA-466E-B3BC-2AD2EE7A0959']
${StakeGroupAssGroupPFEditXpath}            xpath:(//div[@id='divProcess_DE1E67A3-E6EA-466E-B3BC-2AD2EE7A0959'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupAssGroupCloseXXpath}            xpath://*[@id="form_DE1E67A3-E6EA-466E-B3BC-2AD2EE7A0959"]/div[1]/i[2]
${StakeGroupAssGroupCloseSGXpath}           xpath://*[@id="form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E"]/div[1]/i[2]
${StakeGroupAssGroupModLoadingXpath}        xpath://div[@id='divSearchWrapper']/div[2]/div/div[3]/div/div[@class='k-loading-image']
${StakeGroupAssGroupModSrchActiveXpath}     xpath://div[@id="grid"]/div[3]/table/tbody/tr/td[1]/p[@title='Group status: Active']
${StakeGroupAssGroupViewFilterXpath}        xpath://div[@id='btnActFilter']
${StakeGroupAssGroupSrchGroupNameXpath}     xpath://div[@id='divSearchWrapper']/div/div[3]/table/tbody/tr[3]/td[5]/input[@type='text']
${StakeGroupAssGroupSrchRecordOpenXpath}    xpath://div[@id="grid"]/div[3]/table/tbody/tr[2]/td[6]/div[text()='Ab Pumps']
${StakeGroupAssGroupRelateNameXpath}        xpath:(//div[@id='control_F2EBECAD-5135-4844-B579-0A02F8CE3738']//li[contains(@title, 'Auto Test')])[1]
${StakeGroupAssGroupRelateRelationshipXpath}     xpath:(//div[@id='control_40A836F8-F717-498B-B138-4850458196D2']//li[contains(@title, 'Business Partner')])[1]

#************************************************* FR5 - Capture Contractor or Supplier Manager_MS ****************************************
${StakeGroupContSuppManPhoneNoXpath}        xpath://div[@id='control_F58CA39A-8E24-4A56-987E-5B84412F0A9C']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManEmailAddXpath}       xpath://div[@id='control_E95B004E-1283-4AD5-85C0-2AA11196F34D']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManStatusDDXpath}       xpath://div[@id='control_AEDC76EE-6EA0-48C6-91D0-A2CE27CEF60D']//li
${StakeGroupContSuppManQuestionnairePanelXpath}         xpath://span[contains(text(),'Questionnaire')]
${StakeGroupContSuppManDocumentsPanelXpath}             xpath://span[contains(text(),'Documents')]
${StakeGroupContSuppManStatusNonCompliantXpath}         xpath:(//a[text()='Non-Compliant'])[1]
${StakeGroupContSuppManStatusCompliantXpath}            xpath:(//a[text()='Compliant'])[1]
${StakeGroupContSuppManOrdersPanelXpath}                xpath://span[contains(text(),'Orders')]
${StakeGroupContSuppManFaxXpath}            xpath://div[@id='control_6A5447CD-6A1F-4AF4-A7DB-E9E9CB07DBFA']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManEmailXpath}          xpath://div[@id='control_36887721-1B96-43B1-AB50-38B32D842656']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManAboutXpath}          xpath://div[@id='control_77C7DF5B-039A-48E9-933A-5FB80E0ABCF7']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManServicesXpath}       xpath://div[@id='control_11088CB7-1844-436C-ADD6-0381033AAF71']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupContSuppManMainContactXpath}    xpath:(//div[@id='control_DB611D04-5A6A-485B-B7FD-3E7468577C4D']//input)[1]
${StakeGroupContSuppManMainContactPhoneXpath}         xpath:(//div[@id='control_1588E4E5-AAB4-4254-8D7D-0ED15A0CC591']//input)[1]
${StakeGroupContSuppManMainContactEmailXpath}         xpath:(//div[@id='control_D7FD3FAD-217D-47F0-B28F-C2B1AAFF57B3']//input)[1]
${StakeGroupContSuppManMainContactIndividualDDXpath}          xpath://div[@id='control_1FE052A1-221D-426B-B9E1-46569A2BA8EF']//li
${StakeGroupContSuppManMainContactIndividualSrchXpath}        xpath:(//input[@placeholder='Type and enter to search'])[3]
${StakeGroupContSuppManMainContactIndividualOptXpath}         xpath://div[contains(@class, 'transition visible')]//a[text()='Andrew Fletcher'][1]
${StakeGroupContSuppManSiteCompanyDDXpath}            xpath://div[@id='control_E53601B0-C1EE-4EEF-ADA8-2156B57E6D61']//li
${StakeGroupContSuppManSiteCompanyNoXpath}            xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(),'No')])[1]
${StakeGroupContSuppManSiteCompanyYesXpath}           xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(),'Yes')])[1]
${StakeGroupContSuppManVendornrXpath}       xpath://div[@id='control_318A77BE-7784-4706-8995-5B320EBFCED2']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']

#************************************************* FR6 - Capture Contractor Questionnaire_MS ****************************************
${StakeGroupQuestionAddBtnXpath}                         xpath://div[@id='control_7517949D-9F94-4E11-8C20-9CE0EF740490']//div[contains(text(),'Add')]
${StakeGroupQuestionNoResultsXpath}                      xpath://div[@id='control_7517949D-9F94-4E11-8C20-9CE0EF740490']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupQuestionRecordOpenedXpath}                   xpath:(//div[@id='nav_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8'][text()='Contractor Questionnaire'])[1]
${StakeGroupQuestionPFXpath}                             xpath://div[@id='btnProcessFlow_form_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8']
${StakeGroupQuestionAPFAddXpath}                         xpath:(//div[@id='divProcess_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8'])[2]/div/div/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupQuestionAPFEditXpath}                        xpath:(//div[@id='divProcess_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8'])[2]/div/div/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupQuestionCompanyInfoTabXpath}                 xpath://li[@id='tab_2AED1AEA-A885-4D65-8C46-A4E0FDD8A034']
${StakeGroupQuestionBusinessPartnerTabXpath}             xpath://li[@id='tab_ECC116DB-F2F9-49D9-82C8-122332F6CCC8']
${StakeGroupQuestionCompanyCertificatesTabXpath}         xpath://li[@id='tab_73A0738E-B7E2-4F10-9CE7-EF3C31E48A89']
${StakeGroupQuestionTabRightArrowXpath}                  xpath:(//div[@id='control_5554718D-1C5B-401C-AE1E-6ABF12EDB801']//div[@class='tabpanel_tab_content']/div)[2]
${StakeGroupQuestionSafetyHealthIssuesTabXpath}          xpath://li[@id='tab_44F21890-1F73-40D6-BCEF-0696F8566A3A']
${StakeGroupQuestionHealthSafeyEnvironmentTabXpath}              xpath://li[@id='tab_B01371BE-B0A1-4F0F-A195-7DD5D7BC264E']
${StakeGroupQuestionAdditionalCompanyInformationTabXpath}        xpath://li[@id='tab_25BDF161-DD62-438F-B244-F3BF5FD82B72']
${StakeGroupQuestionSupportDocsTabXpath}                 xpath://li[@id='tab_88BC6C8F-E230-4853-BE1A-9E90200423E0']
${StakeGroupQuestionTabLeftArrowXpath}                   xpath:(//div[@id='control_5554718D-1C5B-401C-AE1E-6ABF12EDB801']//div[@class='tabpanel_tab_content']/div)[1]
${StakeGroupQuestionCompanyTypeDDXpath}                  xpath://div[@id='control_D8B07754-94EC-4FB2-859C-B738B6EAFD91']//li
${StakeGroupQuestionCompanyTypeCCXpath}                  xpath://div[contains(@class, 'transition visible')]//a[text()='Close Corporation (CC)']
${StakeGroupQuestionEntityRegNoXpath}                    xpath:(//div[@id='control_D6E2582F-135F-475C-8180-054CA159CFCC']//input)[1]
${StakeGroupQuestionMainAreaXpath}                       xpath:(//div[@id='control_349C41BC-5C52-4311-B0AD-5203F0596F74']//input)[1]
${StakeGroupQuestionOperatingUnitXpath}                  xpath:(//div[@id='control_7236A83F-F382-487E-A660-2213CFC22BB0']//input)[1]
${StakeGroupQuestionQualityManDDXpath}                   xpath://div[@id='control_1575F13D-D625-43F4-AAF6-3462C227AD3A']//li
${StakeGroupQuestionQualityManNoXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionQualityManYesXpath}                  xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionEnvironmentalManDDXpath}             xpath://div[@id='control_749B58E4-1696-44A2-A2B5-6544169861E1']//li
${StakeGroupQuestionEnvironmentalManNoXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionEnvironmentalManYesXpath}            xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionManSystemsDDXpath}                   xpath://div[@id='control_5F790780-98EC-410D-9230-9E14F2365A94']//li
${StakeGroupQuestionManSystemsNoXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionManSystemsYesXpath}                  xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionCOID_Act_DDXpath}                    xpath://div[@id='control_2BF947B0-C0CE-4F29-BEB7-EEAD413BCABF']//li
${StakeGroupQuestionCOID_Act_NoXpath}                    xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionCOID_Act_YesXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionProvideCOIDXpath}                    xpath:(//div[@id='control_D70BA03D-C157-42B0-9C6E-4F1A62106056']//input)[1]
${StakeGroupQuestionLegalRegisterDDXpath}                xpath://div[@id='control_AC471A15-AE17-44CA-9330-9110BEAA186E']//li
${StakeGroupQuestionLegalRegisterNoXpath}                xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionLegalRegisterYesXpath}               xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionHealthSafetyPlanDDXpath}             xpath://div[@id='control_3C62267D-11AA-4E60-AEB8-7F89010D81AE']
${StakeGroupQuestionHealthSafetyPlanNoXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupQuestionHealthSafetyPlanYesXpath}            xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupQuestionRentedOwnedLeasedDDXpath}            xpath://div[@id='control_CC9B150A-E4AF-47F4-82A2-A191DBC23DDC']//li
${StakeGroupQuestionRentedOwnedLeasedRentedXpath}        xpath:(//a[contains(text(),'Rented')])[1]
${StakeGroupQuestionFurnishAnnualNettProfitXpath}        xpath:(//div[@id='control_86D35ED9-FA92-4695-8B43-9CFBE975017E']//input)[1]
${StakeGroupQuestionSupportDocsLinkXpath}                xpath://div[@id='control_53CD954D-6FBA-44FA-B7BA-19A8A2020E87']//b[@original-title='Link to a document']
${StakeGroupQuestionSaveBtnXpath}                        xpath://div[@id='btnSave_form_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8']//div[text()='Save']
${RecordSaved2}                                          xpath:(//*[@id="txtHeader"])[2]
${StakeGroupQuestionCloseBtnXpath}                       xpath://*[@id="form_7B9DCBC8-678E-4ED9-8CF5-C5AA78BED2D8"]/div[1]/i[2]

#************************************************* FR7 - Capture Contractor Documents_MS ****************************************
${StakeGroupDocumentsAddBtnXpath}                        xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']//div[contains(text(),'Add')]
${StakeGroupDocumentsNoResultsXpath}                     xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupDocumentsTypeTextBoxXpath}                   xpath:(//div[@id='control_4EC7578A-B88B-4442-AA32-754B27F4FDF3']//input)[1]
${StakeGroupDocumentsUploadedDDXpath}                    xpath://div[@id='control_F3FF8316-9847-4F33-ACCE-CEDA5D02BE01']//li
${StakeGroupDocumentsUploadedNoXpath}                    xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupDocumentsUploadedYesXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupDocumentsOutcomeDDXpath}                     xpath://div[@id='control_6BF2BC67-11B6-45D8-9A90-E7A8FB55DDAE']//li
${StakeGroupDocumentsOutcomeVerifiedXpath}               xpath://div[contains(@class, 'transition visible')]//a[text()='Verified']
${StakeGroupDocumentsOutcomeUnresolvedXpath}             xpath://div[contains(@class, 'transition visible')]//a[text()='Unresolved Issues Found During Verification']
${StakeGroupDocumentsOutcomeNotVerifiedXpath}            xpath://div[contains(@class, 'transition visible')]//a[text()='Not Verified']
${StakeGroupDocumentsDateVerifiedXpath}                  xpath:(//div[@id='control_1FD49B28-3FF0-4931-9C73-2E3D2D7AA68E']//span//input)[1]
${StakeGroupDocumentsCommentsXpath}                      xpath:(//div[@id='control_1FF7D5F1-8209-4446-ABE0-D0D89B11FF22']//textarea)[1]
${StakeGroupDocumentsSaveBtnXpath}                       xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']/div/div/div[2]/div[2]/div[text()='Save']
${StakeGroupDocumentsInLineEditXpath}                    xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupDocumentsInLineEditBtnXpath}                 xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']//div[@id="grid"]/div[4]/div/div[2]/div[3]/span
${StakeGroupDocumentsInLineEditRecordXpath}              xpath://div[@id='control_1D721996-A61A-40FD-91E8-7FAFDF3B5039']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[4]/span[@type='recordnumber']
${StakeGroupDocumentsRecordHeaderXpath}                  xpath:(//div[@id='form_D7253839-47AF-4DFC-B239-B38AA2A31098']/div/div/div[text()='Contractor Documents'])[1]
${StakeGroupDocumentsPFXpath}                            xpath://div[@id='btnProcessFlow_form_D7253839-47AF-4DFC-B239-B38AA2A31098']
${StakeGroupDocumentsPFEditXpath}                        xpath:(//div[@id='divProcess_D7253839-47AF-4DFC-B239-B38AA2A31098'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupDocumentsUploadLinkXpath}                    xpath://div[@id='control_C811A4C3-03BF-4826-A19C-F2ACDB35B6D8']//b[@original-title='Link to a document']
${StakeGroupDocumentsRecordSaveBtnXpath}                 xpath://div[@id='btnSave_form_D7253839-47AF-4DFC-B239-B38AA2A31098']
${StakeGroupDocumentsCloseBtnXpath}                      xpath://*[@id="form_D7253839-47AF-4DFC-B239-B38AA2A31098"]/div[1]/i[2]

#************************************************* FR7 - Capture Contractor Orders_MS ****************************************
${StakeGroupOrdersRiskAssLoadingMask}                    xpath:(//div[@class='k-loading-mask'])[3]
${StakeGroupOrdersRecordLoadingXpath}                    xpath://div[@id='divWait']/div[text()='Loading permissions']
${StakeGroupOrdersNoResultsXpath}                        xpath://div[@id='control_D0274203-59E0-4BD0-8D74-E760964E515E']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupOrdersAddBtnXpath}                           xpath://div[@id='control_D0274203-59E0-4BD0-8D74-E760964E515E']//div[contains(text(),'Add')]
${StakeGroupOrdersInLineEditXpath}                       xpath://div[@id='control_D0274203-59E0-4BD0-8D74-E760964E515E']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupOrdersRecordHeaderXpath}                     xpath:(//div[@id='form_AC3617FE-8383-45BB-8611-EA8CA705B2C1']/div/div/div[text()='Contractor Orders'])[1]
${StakeGroupOrdersOrderTabXpath}                         xpath://li[@id='tab_9CB85CAF-3415-4405-811C-C0618D69B428']
${StakeGroupOrdersScopeWorkTabXpath}                     xpath://li[@id='tab_B0CCF67B-84FF-4F61-8964-163DE258781C']
${StakeGroupOrdersPFXpath}                               xpath://div[@id='btnProcessFlow_form_AC3617FE-8383-45BB-8611-EA8CA705B2C1']
${StakeGroupOrdersPFAddXpath}                            xpath:(//div[@id='divProcess_AC3617FE-8383-45BB-8611-EA8CA705B2C1'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupOrdersOrderNoXpath}                          xpath:(//div[@id='control_BE92E94B-74CE-4BF6-B70E-31CE21A1422B']//input)[1]
${StakeGroupOrdersStatusDDXpath}                         xpath://div[@id='control_F50C9133-D3BE-45C0-88F6-4FCCCE4BEE4D']
${StakeGroupOrdersStatusApprovedXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Approved']
${StakeGroupOrdersStatusRejectedXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Rejected']
${StakeGroupOrdersApprovedByDDXpath}                     xpath://div[@id='control_060F866E-28F3-4F44-817C-76780546B4ED']
${StakeGroupOrdersDateApprovedXpath}                     xpath:(//div[@id='control_010013A1-86AE-4EB6-AC9F-847A74A5055F']//span//input)[1]
${StakeGroupOrdersStatusDDDeselectXpath}                 xpath://div[@id='control_F50C9133-D3BE-45C0-88F6-4FCCCE4BEE4D']/div/a/span[2]/b[2]
${StakeGroupOrdersApprovedBySrchXpath}                   xpath:(//input[@placeholder='Type and enter to search'])[4]
${StakeGroupOrdersApprovedByOptXpath}                    xpath://div[contains(@class, 'transition visible')]//a[text()='Andy Fletcher'][1]
${StakeGroupOrdersAreaDDXpath}                           xpath://div[@id='control_58BBDC9C-54FC-4770-9212-5E9BB7957725']/div/a/span[2]/b[1]
${StakeGroupOrdersBusUnitAngloXpath}                     xpath:(//a[text()='Anglo American Group']/i)[3]
${StakeGroupOrdersProjectXpath}                          xpath:(//div[@id='control_202D2497-A69E-4769-8980-4367637F0BB8']//input)[1]
${StakeGroupOrdersProjectDescriptionXpath}               xpath:(//div[@id='control_F42D5C79-1D18-448A-AA61-A9AAD5479950']//textarea)[1]
${StakeGroupOrdersStartDateXpath}                        xpath:(//div[@id='control_90D93B64-68B5-4748-897A-498F7C8DE4BA']//input)[1]
${StakeGroupOrdersEndDateXpath}                          xpath:(//div[@id='control_3A59A41B-41D0-498E-BD56-1D56B52C07B9']//input)[1]
${StakeGroupOrdersContractorTypeDDXpath}                 xpath://div[@id='control_3063404C-690E-4175-BB7F-E3A4D99DDF9C']
${StakeGroupOrdersContractorTypeMaintenanceXpath}        xpath:(//a[text()='Maintenance'])/i[1]
${StakeGroupOrdersContractorTypeProjectXpath}            xpath:(//a[text()='Project'])/i[1]
${StakeGroupOrdersContractorTypeDDArrowXpath}            xpath://div[@id='control_3063404C-690E-4175-BB7F-E3A4D99DDF9C']/div/a/span[2]/b[1]
${StakeGroupOrdersSaveBtnXpath}                          xpath://div[@id='btnSave_form_AC3617FE-8383-45BB-8611-EA8CA705B2C1']
${StakeGroupOrdersRecordNoXpath}                         xpath:(//div[@id='form_AC3617FE-8383-45BB-8611-EA8CA705B2C1']//div[contains(text(),'- Record #')])[1]
${StakeGroupOrdersPFEditXpath}                           xpath:(//div[@id='divProcess_AC3617FE-8383-45BB-8611-EA8CA705B2C1'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersRiskAssessmentTabXpath}                xpath://li[@id='tab_E4162FF2-2775-4F7B-8613-E192022F9B7E']
${StakeGroupOrdersEmployeesTabXpath}                     xpath://li[@id='tab_C8A8BF87-4A3A-45C2-8DDA-82C0F8EDDBE1']
${StakeGroupOrdersFleetManagementTabXpath}               xpath://li[@id='tab_0CE51886-DD1C-492E-A9EB-3BE425E55EC2']
${StakeGroupOrdersToolsEquipTabXpath}                    xpath://li[@id='tab_BDBF788A-DDC1-4A05-AD49-8140495D0875']
${StakeGroupOrdersChemicalRegisterTabXpath}              xpath://li[@id='tab_DBF988FE-FF7F-4113-BD71-FF5B78B83CA6']
${StakeGroupOrdersPermissiontoWorkTabXpath}              xpath://li[@id='tab_22CDF283-7455-450C-A45C-C2F8D2573A1A']
${StakeGroupOrdersEvaluationsTabXpath}                   xpath://li[@id='tab_08CD4FD0-85F1-4810-95EF-95346F58A250']
${StakeGroupOrdersTabRightArrowXpath}                    xpath:(//div[@id='control_EC720084-72FD-4AAE-BCFF-F56B7130B40C']//div[@class='tabpanel_tab_content']/div)[2]
${StakeGroupOrdersTabLeftArrowXpath}                     xpath:(//div[@id='control_EC720084-72FD-4AAE-BCFF-F56B7130B40C']//div[@class='tabpanel_tab_content']/div)[1]

#************************************************* FR10 - Capture Contractor Fleet Management_MS ****************************************
${StakeGroupOrdersFleetManNoResultsXpath}                xpath://div[@id='control_5ECBE260-6D53-4E0C-A206-BAAA150BAC85']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupOrdersFleetManAddXpath}                      xpath://div[@id='control_5ECBE260-6D53-4E0C-A206-BAAA150BAC85']//div[contains(text(),'Add')]
${StakeGroupOrdersFleetManPFXpath}                       xpath://div[@id='btnProcessFlow_form_1F7D4C38-EE03-4F83-815A-94FD64BFC9C4']
${StakeGroupOrdersFleetManPFAddXpath}                    xpath:(//div[@id='divProcess_1F7D4C38-EE03-4F83-815A-94FD64BFC9C4'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupOrdersFleetManEditXpath}                     xpath:(//div[@id='divProcess_1F7D4C38-EE03-4F83-815A-94FD64BFC9C4'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersFleetManVehicletypemakeXpath}          xpath://div[@id='control_C662CD0F-B707-4A9B-AB16-476005E74C1F']//input
${StakeGroupOrdersFleetManRegNoXpath}                    xpath://div[@id='control_25C0418F-B6DF-4845-B713-E1CD10250FC6']//input
${StakeGroupOrdersFleetManLicenseExpiryDateXpath}        xpath://div[@id='control_9826F1CB-B2D2-4460-84BD-E9F986CD8173']//input
${StakeGroupOrdersFleetManSaveBtnXpath}                  xpath://div[@id='btnSave_form_1F7D4C38-EE03-4F83-815A-94FD64BFC9C4']
${StakeGroupOrdersFleetManCloseBtnXpath}                 xpath://*[@id="form_1F7D4C38-EE03-4F83-815A-94FD64BFC9C4"]/div[1]/i[2]
${StakeGroupOrdersFleetManRecordSubModXpath}             xpath:(//div[@id='control_5ECBE260-6D53-4E0C-A206-BAAA150BAC85']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[5]/div)[1]

#*********************************************** FR11 - Capture Contractor Tools and Equipment_MS_OS *******************************************
${StakeGroupOrdersToolsEquipNoResultsXpath}              xpath://div[@id='control_3849FD5B-7DEC-44B2-BA0F-6774192E3E51']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupOrdersToolsEquipAddBtnXpath}                 xpath://div[@id='control_3849FD5B-7DEC-44B2-BA0F-6774192E3E51']//div[contains(text(),'Add')]
${StakeGroupOrdersToolsEquipPFXpath}                     xpath://div[@id='btnProcessFlow_form_4A401000-E42A-4AFD-B9C8-8A1A21187C73']
${StakeGroupOrdersToolsEquipPFAddXpath}                  xpath:(//div[@id='divProcess_4A401000-E42A-4AFD-B9C8-8A1A21187C73'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupOrdersToolsEquipPFEditXpath}                 xpath:(//div[@id='divProcess_4A401000-E42A-4AFD-B9C8-8A1A21187C73'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersToolsEquipRelatedDocumentsTabXpath}        xpath://li[@id='tab_C6CEB37F-9428-4AD8-8C7A-5A392EC3A40C']
${StakeGroupOrdersToolsEquipRelatedDocumentsLinkXpath}       xpath://div[@id='control_68F3E7FD-324B-4813-A5C0-EC1B0F255D96']//b[@original-title='Link to a document']
${StakeGroupOrdersToolsEquipDetailTabXpath}              xpath://li[@id='tab_482104C7-9CE1-463F-BAEB-0E9F9DE2E272']
${StakeGroupOrdersToolsEquipDescriptionXpath}            xpath://div[@id='control_5F36A2D2-2304-48BB-BB1A-574EFBF50B10']//input
${StakeGroupOrdersToolsEquipSerialNoXpath}               xpath://div[@id='control_A06DDAE0-E6E1-4634-83EE-720FBCC0D5DE']//input
${StakeGroupOrdersToolsEquipCalibrationCertXpath}        xpath://div[@id='control_D2553CED-57A8-4462-85FB-1B340D285213']//input
${StakeGroupOrdersToolsEquipLoadTestXpath}               xpath://div[@id='control_181B8961-36F5-44FF-934A-4D9112C4B82F']//input
${StakeGroupOrdersToolsEquipEquipTaggedXpath}            xpath://div[@id='control_23D637B7-8E17-4264-9F36-7D4F8CFF843B']//input
${StakeGroupOrdersToolsEquipNameTagAuthXpath}            xpath://div[@id='control_A41C8F72-9CCC-4B36-BEE0-C08AD40C3A50']//input
${StakeGroupOrdersToolsEquipPreInspectionCheckXpath}     xpath://div[@id='control_F9BF0F42-F94D-4FC4-B251-2A47A8AB49CA']//input
${StakeGroupOrdersToolsEquipLogbookXpath}                xpath://div[@id='control_41CA8904-10E0-4B7F-ABEF-E720E71C8BB0']//input
${StakeGroupOrdersToolsEquipSaveBtnXpath}                xpath://div[@id='btnSave_form_4A401000-E42A-4AFD-B9C8-8A1A21187C73']
${StakeGroupOrdersToolsEquipCloseBtnXpath}               xpath://*[@id="form_4A401000-E42A-4AFD-B9C8-8A1A21187C73"]/div[1]/i[2]
${StakeGroupOrdersToolsEquipRecordSubModXpath}           xpath:(//div[@id='control_3849FD5B-7DEC-44B2-BA0F-6774192E3E51']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[5]/div)[1]

#*********************************************** FR12 - View Chemical Register_MS **************************************************
${StakeGroupOrdersChemcialItemsXpath}                    xpath://div[@id='control_F0A5A555-5D4A-4594-9F61-831090EBCB2A']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${StakeGroupOrdersChemcialChemicalsSiteDDXpath}          xpath://div[@id='control_7C39C09C-183D-4074-9A22-D0DB4318E7D6']/div/a/span[2]/b[1]
${StakeGroupOrdersChemcialChemicalsSiteAcetoneXpath}         xpath:(//a[text()='Acetone'])/i[1]
${StakeGroupOrdersChemcialChemicalsSiteSelectAllXpath}       xpath://div[@id='control_7C39C09C-183D-4074-9A22-D0DB4318E7D6']/div/a/span[2]/b[@original-title='Select all']
${StakeGroupOrdersChemcialChemicalsContractorExposedLoadingXpath}            xpath://div[@class='k-loading-image']
${StakeGroupOrdersChemcialChemicalsContractorExposedXpath}       xpath://div[@id='control_F0A5A555-5D4A-4594-9F61-831090EBCB2A']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]/td[4]
${StakeGroupOrdersChemcialHazardChemRegisterLinkXpath}       xpath://i[@class='home icon linked']
${StakeGroupOrdersChemcialHazardChemRegisterPFXpath}         xpath://div[@id='btnProcessFlow_form_67D12C4F-9715-42CB-8583-738A005007A8']
${StakeGroupOrdersChemcialHazardChemRegisterPFEditXpath}         xpath:(//div[@id='divProcess_67D12C4F-9715-42CB-8583-738A005007A8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersChemcialCloseBtnXpath}                 xpath://*[@id="form_67D12C4F-9715-42CB-8583-738A005007A8"]/div[1]/i[2]

#*********************************************** FR13 - Capture Contractor Permission to Work Sign Off_MS **************************************************
${StakeGroupOrdersPermissionWorkNoResultsXpath}          xpath://div[@id='control_E46D1FE3-3FAA-4DB0-A3E1-06CE9A9CEFC8']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupOrdersPermissionWorkAddBtnXpath}             xpath://div[@id='control_E46D1FE3-3FAA-4DB0-A3E1-06CE9A9CEFC8']//div[contains(text(),'Add')]
${StakeGroupOrdersPermissionWorkPFXpath}                 xpath://div[@id='btnProcessFlow_form_446929D1-893C-47E0-BCB9-30C0C1D7A70B']
${StakeGroupOrdersPermissionWorkPFAddXpath}              xpath:(//div[@id='divProcess_446929D1-893C-47E0-BCB9-30C0C1D7A70B'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupOrdersPermissionWorkPFEditXpath}             xpath:(//div[@id='divProcess_446929D1-893C-47E0-BCB9-30C0C1D7A70B'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersPermissionWorkRoleLabelXpath}          xpath://div[@id='control_624CD342-3ECB-4924-8CD2-C3EBBFA3E810']
${StakeGroupOrdersPermissionWorkRoleDDXpath}             xpath://div[@id='control_928D5A28-956F-4C01-B43A-EB08F0157406']
${StakeGroupOrdersPermissionWorkRole1Xpath}              xpath:(//a[text()='Role 1'])[1]
${StakeGroupOrdersPermissionWorkResponsiblePersonDDXpath}        xpath://div[@id='control_6AFD8447-DD45-4E0B-9885-558782D0DB69']
${StakeGroupOrdersPermissionWorkResponsiblePersonSrchXpath}      xpath:(//input[@placeholder='Type and enter to search'])[5]
${StakeGroupOrdersPermissionWorkResponsiblePersonOptXpath}       xpath://div[contains(@class, 'transition visible')]//a[text()='Andy Fletcher'][1]
${StakeGroupOrdersPermissionWorkSignoffDDXpath}          xpath://div[@id='control_DAE7D09B-B8AE-41D8-B834-F2E347322FD9']
${StakeGroupOrdersPermissionWorkSignoffNoXpath}          xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${StakeGroupOrdersPermissionWorkSignoffYesXpath}         xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${StakeGroupOrdersPermissionWorkSignOffDateXpath}        xpath://div[@id='control_FA67DC5D-68BF-4A12-86E2-0CC7B93C9F41']//input
${StakeGroupOrdersPermissionWorkSignOffCommentsXpath}        xpath://div[@id='control_E9196EB7-D01F-479C-9C61-9C60F7ACD48D']//textarea
${StakeGroupOrdersPermissionWorkSignOffSaveBtnXpath}         xpath://div[@id='btnSave_form_446929D1-893C-47E0-BCB9-30C0C1D7A70B']
${StakeGroupOrdersPermissionWorkSignOffRecordNoXpath}        xpath:(//div[@id='form_446929D1-893C-47E0-BCB9-30C0C1D7A70B']//div[contains(text(),'- Record #')])[1]
${StakeGroupOrdersPermissionWorkSignOffCloseBtnXpath}        xpath://*[@id="form_446929D1-893C-47E0-BCB9-30C0C1D7A70B"]/div[1]/i[2]
${StakeGroupOrdersPermissionWorkSignOffRecordSubModXpath}           xpath:(//div[@id='control_E46D1FE3-3FAA-4DB0-A3E1-06CE9A9CEFC8']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[5]/div)[1]

#*********************************************** FR14 - Capture Contractor Checklist_MS **************************************************
${StakeGroupOrdersChecklistNoResultsXpath}               xpath://div[@id='control_75AE308C-4204-44CC-8A14-A2167C9827C9']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupOrdersChecklistAddBtnXpath}                  xpath://div[@id='control_75AE308C-4204-44CC-8A14-A2167C9827C9']//div[contains(text(),'Add')]
${StakeGroupOrdersChecklistPFXpath}                      xpath://div[@id='btnProcessFlow_form_0AE7D7E4-12B9-4159-83E3-5DF8D4F49CD4']
${StakeGroupOrdersChecklistPFAddXpath}                   xpath:(//div[@id='divProcess_0AE7D7E4-12B9-4159-83E3-5DF8D4F49CD4'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupOrdersChecklistPFEditXpath}                  xpath:(//div[@id='divProcess_0AE7D7E4-12B9-4159-83E3-5DF8D4F49CD4'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupOrdersChecklistStartDateXpath}               xpath://div[@id='control_BB124A7C-02A5-47A5-A918-BBDF0C1AA35B']//input
${StakeGroupOrdersChecklistEndDateXpath}                 xpath://div[@id='control_C23CB71D-B301-4EB4-84E1-65BF4642B711']//input
${StakeGroupOrdersChecklistDDXpath}                      xpath://div[@id='control_2A842B0C-8258-421F-997F-388DE02D9335']
${StakeGroupOrdersChecklistEvaluationXpath}              xpath://div[contains(@class, 'transition visible')]//a[text()='Evaluation']
${StakeGroupOrdersChecklistPersonConductChecklistXpath}      xpath://div[@id='control_D3BD3B30-B5B7-49DE-BD8D-CF9BE72E62C0']
${StakeGroupOrdersChecklistPersonConductChecklistSrchXpath}      xpath:(//input[@placeholder='Type and enter to search'])[6]
${StakeGroupOrdersChecklistPersonConductChecklistSrch2Xpath}      xpath:(//input[@placeholder='Type and enter to search'])[7]
${StakeGroupOrdersChecklistPersonConductChecklistOptXpath}       xpath://div[contains(@class, 'transition visible')]//a[text()='Andy Fletcher'][1]
${StakeGroupOrdersChecklistSubmitBtnXpath}               xpath://div[@id='control_235B296F-9CD3-41D1-9E8C-E36F63403365']/div/div[text()='Submit Checklist']
${StakeGroupOrdersChecklistSubModRecordXpath}            xpath:(//div[@id='control_75AE308C-4204-44CC-8A14-A2167C9827C9']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[4]/span)[1]
${StakeGroupOrdersChecklistSaveContinueBtnXpath}         xpath://div[@id='control_76766175-90DD-44DE-839F-D28FFEE16394']
${StakeGroupOrdersChecklistRecordNoXpath}                xpath:(//div[@id='form_0AE7D7E4-12B9-4159-83E3-5DF8D4F49CD4']//div[contains(text(),'- Record #')])[1]
${StakeGroupOrdersChecklistStartBtnXpath}                xpath://div[@id='btnChecklist_form_0AE7D7E4-12B9-4159-83E3-5DF8D4F49CD4']
${StakeGroupOrdersChecklistFindingsTabXpath}             xpath://li[@id='tab_FDC1580F-0B58-4FE3-9EAE-E6F7620B4961']
${StakeGroupOrdersChecklistSupportDocsTabXpath}          xpath://li[@id='tab_B3FA9131-ADFF-4EC6-8E41-82D15253E6B9']

#*********************************************** FR15 - Add_View Engagements_MS_AS **************************************************
${StakeGroupAddAnEngagementBtnXpath}                     xpath://div[@id='control_A50A638E-99DE-44B8-A7B5-2BF8A948862A']/div/div[text()='Add an engagement']
${StakeGroupEngagementGroupAttendeesTabXpath}            xpath://li[@id='tab_D63969CF-767C-4E14-AF44-AB1FE51E6F04']/div[text()='Group Attendees']
${StakeGroupEngagementGroupAttendeesNoResultsXpath}      xpath://div[@id='control_FBBF4EE8-0B0B-43B6-9B13-642704FDA74B']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupEngagementAddBtnXpath}                       xpath://div[@id='control_FBBF4EE8-0B0B-43B6-9B13-642704FDA74B']/div/div/div/div/div[text()='Add']
${StakeGroupEngagementAttendeeDDXpath}                   xpath:(//div[@id='control_BCCAA4BD-BD02-428C-A1E3-3BFE31AF66BF']//li)[1]
${StakeGroupEngagementAttendeeSrchXpath}                 xpath:(//input[@placeholder='Type and enter to search'])[8]
${StakeGroupEngagementAttendeeOptXpath}                  xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(), 'Auto Test')])[1]
${StakeGroupEngagementSaveBtnXpath}                      xpath://div[@id='control_FBBF4EE8-0B0B-43B6-9B13-642704FDA74B']/div/div/div[2]/div[@id='btnSaveAll']
${StakeGroupEngagementInLineEditXpath}                   xpath://div[@id='control_89186F28-56D9-423C-9FA4-8D688243B982']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupEngagementRefreshXpath}                      xpath://div[@id='control_89186F28-56D9-423C-9FA4-8D688243B982']//div[@id="grid"]/div[4]/a[5]
${StakeGroupEngagementRecordNewXpath}                    xpath:(//div[@id='control_89186F28-56D9-423C-9FA4-8D688243B982']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[5]/div[contains(text(),'FR15 - Add_View Engagements_MS_AS')])[1]
${StakeGroupEngagementScheduledLabelXpath}               xpath://div[@id='control_8286C3A1-50CB-4DDC-A2CD-94AEE6C02E28']
${StakeGroupEngagementStatusDDXpath}                     xpath://div[@id='control_C072FF42-2D88-4B84-866B-FE7E9436460F']//li
${StakeGroupEngagementDDExecutedXpath}                   xpath://div[contains(@class, 'transition visible')]//a[text()='Executed on-time'][1]
${StakeGroupEngagementPFExecutedXpath}                   xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Executed (Confidential)']
${StakeGroupEngagementCloseXpath}                        xpath://*[@id="form_C5D7993E-A223-4AE0-A15D-119FE22E21DC"]/div[1]/i[2]

#*********************************************** FR16 - Add_View Engagement Plan_MS_AS **************************************************
${StakeGroupEngagementPlanTabXpath}                      xpath://li[@id='tab_DDBBBB82-6CF9-48FC-9B94-74802828F534']
${StakeGroupEngagementPlanRefreshXpath}                  xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']//div[@id="grid"]/div[4]/a[5]
${StakeGroupEngagementPlanItemsXpath}                    xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${StakeGroupEngagementPlanRecordXpath}                   xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${StakeGroupEngagementPlanLinkBtnXpath}                  xpath://div[@id="form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F"]/div[1]/i[1]
${StakeGroupEngagementPlanRecordNoXpath}                 xpath:(//div[@id='form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']//div[contains(text(),'- Record #')])[1]
${StakeGroupEngagementPlanProcessFlowXpath}              xpath://div[@id='btnProcessFlow_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${StakeGroupEngagementPlanPFEditXpath}                   xpath:(//div[@id='divProcess_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupEngagementPlanInLineEditTextXpath}           xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupEngagementPlanAddBtnXpath}                   xpath://div[@id='control_7BFEF019-BD44-41B3-A571-0BC79A458DBF']
${StakeGroupEngagementPlanPFBtnXpath}                    xpath://div[@id='btnProcessFlow_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${StakeGroupEngagementPlanPFAddXpath}                    xpath:(//div[@id='divProcess_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupEngagementPlanBUDDXpath}                     xpath://div[@id='control_8BE367EF-E449-4165-BC05-74385ECBF771']
${StakeGroupEngagementPlanBusUnitExpand1Xpath}           xpath://a[text()='Global Company']/../i
${StakeGroupEngagementPlanBusUnitExpand2Xpath}           xpath://a[text()='South Africa']/../i
${StakeGroupEngagementPlanBusUnitVictorySiteXpath}       xpath://a[text()='Victory Site']
${StakeGroupEngagementPlanFLDDXpath}                     xpath://div[@id='control_7CB2DF1F-C8F7-40E7-B63C-BFD63ACBC20A']//li
${StakeGroupEngagementPlanFLOptionID}                    xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'MIS | Sishen')]
${StakeGroupEngagementPlanTitleXpath}                    xpath:(//div[@id='control_185410E8-D077-4DE6-8958-5772CA36E091']//input)[1]
${StakeGroupEngagementPlanProjectLinkXpath}              xpath://div[@id='control_DE6A7B48-B355-48A7-AA3E-8475171708AF']/div[1]
${StakeGroupEngagementPlanProjectDDXpath}                xpath://div[@id='control_301410A3-9118-4FCA-93B7-4C2A90320266']
${StakeGroupEngagementPlanProjectSelectXpath}            xpath://a[text()='Baseline 18/03/2021 - do not use']
${StakeGroupEngagementPlanStartDateXpath}                xpath://div[@id='control_90276DFA-A2DD-4A38-8D96-E84491597886']//input[@type='text']
${StakeGroupEngagementPlanEndDateXpath}                  xpath://div[@id='control_56848732-729E-4C20-A0FC-1034ACF3D6F4']//input[@type='text']
${StakeGroupEngagementPlanFrequencyDDXpath}              xpath://div[@id='control_E457C6F1-F44C-4B21-8089-E7153700AFB4']//li
${StakeGroupEngagementPlanFrequencyWeeklyXpath}          xpath://a[text()='Weekly']
${StakeGroupEngagementPlanFrequencyDailyXpath}           xpath://a[text()='Daily']
${StakeGroupEngagementPlanDayWeekDDXpath}                xpath://div[@id='control_D24F5B79-62C5-46E8-B38C-32AF14CCFD8C']//li
${StakeGroupEngagementPlanDayWeekOptXpath}               xpath://a[text()='Wednesday']
${StakeGroupEngagementPlanShowAdvanceXpath}              xpath://div[@id='control_7929B98B-21B8-41E1-B4CF-873D96EC5263']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupEngagementPlanPurposeDDXpath}                xpath://div[@id='control_36951962-3063-4DA2-9846-ED7137AFC783']/div/a/span[2]/b[1]
${StakeGroupEngagementPlanPurposeOptXpath}               xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'Communicating Information')]/i[1]
${StakeGroupEngagementPlanMethodDDXpath}                   xpath://div[@id='control_5D729CA2-07EF-4E0A-B491-1E223A263474']
${StakeGroupEngagementPlanMethodOptXpath}                xpath:(//a[contains(text(),'Written correspondence (letter / email)')])[1]
${StakeGroupEngagementPlanResponsiblePersonDDXpath}        xpath://div[@id='control_C2B7C6FA-10FC-4593-BD27-6869D1790758']
${StakeGroupEngagementPlanResponsiblePersonSrchXpath}                    xpath:(//input[@placeholder='Type and enter to search'])[1]
${StakeGroupEngagementPlanResponsiblePersonOptXpath}                     xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${StakeGroupEngagementPlanCommentsXpath}                 xpath:(//div[@id='control_D0735E60-22C5-4A8B-8AAE-31CE9FA6249A']//textarea)[1]
${StakeGroupEngagementPlanSaveContinueBtnXpath}          xpath://div[@id='control_B1893417-CAAD-4DC3-BD27-2EC339FBAE64']/div/div[text()='Save to continue']
${StakeGroupEngagementPlanAttendeesTabXpath}             xpath://li[@id='tab_A32B5B7D-4DDE-4AD5-A146-AB8DB138ED8C']/div[text()='Attendees']
${StakeGroupEngagementPlanStakeholderDDXpath}            xpath://div[@id='control_86E5207D-ECEA-4F6D-9680-376A0EB4C2FE']/div/a/span[2]/b[1]
${StakeGroupEngagementPlanStakeholderSrchXpath}          xpath:(//input[@placeholder='Type and enter to search'])[2]
${StakeGroupEngagementPlanStakeholderOptXpath}           xpath://div[contains(@class, 'transition visible')]//a[text()='Andrew Fletcher']/i[1]
${StakeGroupEngagementPlanGroupsDDXpath}            xpath://div[@id='control_7524420C-1E4E-49C7-AAF6-C87B97ECEFCF']/div/a/span[2]/b[1]
${StakeGroupEngagementPlanGroupsSrchXpath}          xpath:(//input[@placeholder='Type and enter to search'])[3]
${StakeGroupEngagementPlanGroupsOptXpath}           xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(), 'Auto Test')])/i[1]
${StakeGroupEngagementPlanSaveBtnXpath}                  xpath://div[@id='btnSave_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${StakeGroupEngagementPlanRecordNewXpath}                xpath:(//div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td/div[contains(text(),'FR16 - Add_View Engagement Plan_MS_AS')])[1]
${StakeGroupEngagementPlanEntitiesExpandXpath}           xpath://a[text()='Coltness Iron Company Ltd']/../i
${StakeGroupEngagementPlanEntitiesSelectXpath}           xpath:(//a[text()='David Abel (DA)']/i[1])[2]
${StakeGroupEngagementPlanInLineEditTextXpath}           xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']//div[@id="grid"]/div[4]/div/div[1]
${StakeGroupEngagementPlanRefreshXpath}                  xpath://div[@id='control_3E81F0BD-F14C-4379-A2EC-610D9F4DE5A9']//div[@id="grid"]/div[4]/a[5]
${StakeGroupEngagementPlanCloseXpath}                    xpath://*[@id="form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F"]/div[1]/i[2]

#*********************************************** FR17 - View Commitments_MS **************************************************
${StakeGroupCommitmentsStakeGroupRecordCloseXpath}       xpath://div[@id="form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E"]/div[1]/i[2]
${StakeGroupCommitmentsStakeGroupModCloseXpath}          xpath://div[@id="divSearch"]/div[1]/i[2]
${StakeGroupCommitmentsStakeGroupModRecordXpath}         xpath:(//div[@id='grid']/div[3]/table/tbody/tr[2]/td[6])[1]
${StakeGroupCommitmentsInterfaceXpath}                   xpath://label[.='Commitments Register']
${StakeGroupCommitmentsAddBtnXpath}                      xpath://div[@id='btnActAddNew']
${StakeGroupCommitmentsPFXpath}                          xpath://div[@id='btnProcessFlow_form_DCB70D8A-B79E-4968-9607-29115B4FCDC2']
${StakeGroupCommitmentsPFAddXpath}                       xpath:(//div[@id='divProcess_DCB70D8A-B79E-4968-9607-29115B4FCDC2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupCommitmentsPFEditXpath}                      xpath:(//div[@id='divProcess_DCB70D8A-B79E-4968-9607-29115B4FCDC2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${StakeGroupCommitmentsBUDDXpath}                        xpath://div[@id='control_21A07758-2945-467A-92CF-F571AE83FEFA']//li
${StakeGroupCommitmentsBUSelectXpath}                    xpath://a[text()='Sishen Mine']
${StakeGroupCommitmentsFunctionLocDDXpath}               xpath://div[@id='control_D3AF1650-B305-44CF-8463-1B003793EB72']//li
${StakeGroupCommitmentsFunctionLocOptXpath}              xpath://a[text()='MIS | Sishen']
${StakeGroupCommitmentsRegistTitleXpath}                 xpath://div[@id='control_804F813A-B603-4ED8-A416-3571D2146714']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupCommitmentsRegisterOwnerDDXpath}             xpath://div[@id='control_189B6C8F-E360-4339-A9B7-BF2C517A69E0']//li
${StakeGroupCommitmentsRegisterOwnerSrchXpath}           xpath:(//input[@placeholder='Type and enter to search'])[1]
${StakeGroupCommitmentsRegisterOwnerOptXpath}            xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User'][1]
${StakeGroupCommitmentsSaveContinueBtnXpath}             xpath://div[@id='control_D43881CB-1BF1-49AE-A3A1-95EC897D869F']/div/div[text()='Save to continue']
${StakeGroupCommitmentsRecordNoXpath}                    xpath:(//div[@id='form_DCB70D8A-B79E-4968-9607-29115B4FCDC2']//div[contains(text(),'- Record #')])[1]
${StakeGroupCommitmentsSubModAddBtnXpath}                xpath://div[@id='control_9FB2EFC8-8431-41B8-808E-21304A600CEC']/div/div/div/div[@id='btnAddNew']
${StakeGroupCommitmentsConditionsPFXpath}                xpath://div[@id='btnProcessFlow_form_7C062343-94C0-4691-9D16-7E07735C641C']
${StakeGroupCommitmentsConditionsPFAddXpath}             xpath:(//div[@id='divProcess_7C062343-94C0-4691-9D16-7E07735C641C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeGroupCommitmentsConditionsCatDDXpath}             xpath://div[@id='control_052B3A60-874C-4F7A-88EA-E2019BA50262']//li
${StakeGroupCommitmentsConditionsCatOptXpath}            xpath://a[text()='Social']
${StakeGroupCommitmentsConditionsTitleXpath}             xpath://div[@id='control_06D6617B-3C38-4008-A3E5-00043F9E3202']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupCommitmentsConditionsOwnerDDXpath}           xpath://div[@id='control_AED68E6D-3039-4916-8599-E42B7A7C9EE1']//li
${StakeGroupCommitmentsConditionsOwnerSrchXpath}         xpath:(//input[@placeholder='Type and enter to search'])[3]
${StakeGroupCommitmentsConditionsOwnerOptXpath}          xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User'][1]
${StakeGroupCommitmentsConditionsApproverDDXpath}        xpath://div[@id='control_B5A54D2B-72E4-4C3D-AFC8-E6DFE3029AAE']//li
${StakeGroupCommitmentsConditionsApproverSrchXpath}      xpath:(//input[@placeholder='Type and enter to search'])[4]
${StakeGroupCommitmentsConditionsApproverOptXpath}       xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User'][1]
${StakeGroupCommitmentsConditionsSaveContinueBtnXpath}          xpath://div[@id='control_9598A464-A2BC-409E-8FDC-B6D659AF9647']/div/div[text()='Save to continue']
${StakeGroupCommitmentsConditionsRecordNoXpath}          xpath:(//div[@id='form_7C062343-94C0-4691-9D16-7E07735C641C']//div[contains(text(),'- Record #')])[1]
${StakeGroupCommitmentsConditionsBenRegisterXpath}       xpath://li[@id='tab_C2060628-7011-4182-8869-12E133F6030B']/div[text()='Beneficiary Registers']
${StakeGroupCommitmentsConditionsGroupBenRegisterPanelXpath}        xpath://div[@id='control_1E13624E-E03D-44A9-BB74-9DB7B6B4E4CE']/div/div/span[text()='Stakeholder Group Beneficiary Register']
${StakeGroupCommitmentsConditionsGroupBenRegisterAddBtnXpath}       xpath://div[@id='control_B748AA6E-D321-484E-A038-94253531C16A']/div/div/div[2]/div[@id='btnAddNew']
${StakeGroupCommitmentsConditionsGroupBenRegisterDDXpath}           xpath:(//div[@id='control_B95D7401-05C0-45B6-9608-CD3EBE4274AB']//li)[1]
${StakeGroupCommitmentsConditionsGroupBenRegisterSrchXpath}         xpath:(//input[@placeholder='Type and enter to search'])[7]
${StakeGroupCommitmentsConditionsGroupBenRegisterOptXpath}          xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(), 'Auto Test')])[1]
${StakeGroupCommitmentsConditionsGroupLvlExpectDDXpath}             xpath:(//div[@id='control_EA6E5653-F763-4E66-BA9A-741084596110']//li)[1]
${StakeGroupCommitmentsConditionsGroupLvlExpectOptXpath}            xpath://a[text()='Medium']
${StakeGroupCommitmentsConditionsGroupConseqFailDDXpath}            xpath:(//div[@id='control_E6406CA7-E06B-475A-A3F1-0BD965EC5805']//li)[1]
${StakeGroupCommitmentsConditionsGroupConseqFailOptXpath}           xpath:(//a[text()='Low'])[2]
${StakeGroupCommitmentsConditionsGroupSaveBtnXpath}                 xpath://div[@id='control_B748AA6E-D321-484E-A038-94253531C16A']//div[@id='btnSaveAll']
${StakeGroupCommitmentsConditionsSearchAutoTestXpath}               xpath:(//div[@id='divSearchWrapper']/div/div[3]/table/tbody/tr[3]/td[5]//input[@type='text'])[2]
${StakeGroupCommitmentsConditionsSearchSearchRecordXpath}           xpath:(//div[@id='grid']/div[3]/table/tbody/tr[2]/td[6]/div[contains(text(), 'Auto Test')])[1]
${StakeGroupCommitmentsVGRefreshXpath}                  xpath://div[@id='control_91B6644B-A674-499F-B3D6-A2B39278BEB2']//div[@id="grid"]/div[4]/a[5]
${StakeGroupCommitmentsVGRecordXpath}                   xpath:(//div[@id='control_91B6644B-A674-499F-B3D6-A2B39278BEB2']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[7]/div[contains(text(), 'FR17 - View Commitments_MS')])[1]

#*********************************************** FR18 - Add/View Grievances_MS **************************************************
${StakeGroupGrievancesIsoMetrixLogoXpath}               xpath://div[@class='iso header item brand']
${StakeGroupEventsInterfaceXpath}                       xpath://label[.='Event Management']
${StakeGroupEventsSearchBtnID}                          id:btnActApplyFilter
${StakeGroupEventsAddBtnID}                             id:btnActAddNew
${StakeGroupEventsPF1LogEventXpath}                     xpath:(//div[@id='divProcess_B6196CB4-4610-463D-9D54-7B18E614025F'])[2]/div/div[2]/div/div[@class='step active']//div[text()='1.Logging an Event']
${StakeGroupEventsReportExternPartyChckBoxXpath}        xpath://div[@id='control_958A7A20-553C-49A8-BF0F-ED462AF78BAD']/div[@class='c-chk']
${StakeGroupEventsReportExternPartyDDXpath}             xpath://div[@id='control_B63B7D36-331C-48B0-AF27-F1126B0F8EA0']//span[2]/b[1]
${StakeGroupEventsReportExternPartyOptXpath}            xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(), 'Auto Test')])/i[1]
${StakeGroupEventsWhatReportedXpath}                    xpath://div[@id='control_E2E6184A-4B67-4EBD-9CCF-EDA5D0C872B9']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupEvents2VerificationTabXpath}                xpath://li[@id='tab_90D1C7C9-45EE-402F-B76C-A61222A110E1']/div[text()='2.Verification & Additional Detail']
${StakeGroupEventsActivityDDXpath}                      xpath://div[@id='control_A545A6BF-2235-4998-86DD-4246FD93E79A']//li
${StakeGroupEventsActivityOptXpath}                     xpath://a[text()='Cleaning of conveyors']
${StakeGroupEventsActivityLblXpath}                     xpath://div[@id='control_137D9DF4-AE00-4D3E-9F93-F6B8663D5C97']
${StakeGroupEventsWhatHappenDDXpath}                    xpath://div[@id='control_5904652A-5180-4B08-8BD8-AA3704360351']//li
${StakeGroupEventsWhatHappenOptXpath}                   xpath://a[text()='Explosives Management']
${StakeGroupEventsHowHappenDDXpath}                     xpath://div[@id='control_58A81103-5F88-4AAF-8783-54D3BACD3403']//li
${StakeGroupEventsHowHappenOptExpandXpath}              xpath://a[text()='Electrical']/../i
${StakeGroupEventsHowHappenOptXpath}                    xpath://a[text()='Electrical Failure']
${StakeGroupEventsComplaintDDXpath}                     xpath://div[@id='control_E1D4CAF6-9C41-4F91-A2F0-2B606FEA59F4']//li
${StakeGroupEventsComplaintOptXpath}                    xpath://a[text()='Yes']
${StakeGroupGrievancesOpenVGXpath}                      xpath:(//div[@id='control_AE8EC219-4756-40BA-8773-68B10FE425BA']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[7]/div[contains(text(), 'Grievances')])[1]
${StakeGroupGrievancesInLineEditTextXpath}              xpath://div[@id='control_AE8EC219-4756-40BA-8773-68B10FE425BA']//div[@id="grid"]/div[4]/div/div[1]
${EngagementGrievenceFLExpand1Xpath}                    xpath:(//a[text()='MIS | Sishen']/../i)[1]
${EngagementGrievenceFLExpand2Xpath}                    xpath:(//a[text()='MIS-M | Mining']/../i)[1]
${EngagementGrievenceFLExpand3Xpath}                    xpath:(//a[text()='MIS-M01 | Common Mining Process']/../i)[1]
${EngagementGrievenceFLExpand4Xpath}                    xpath:(//a[text()='MIS-M01-DR | Drilling']/../i)[1]
${EngagementGrievenceFLExpand5Xpath}                    xpath:(//a[text()='MIS-M01-DR01 | Rotary Drills']/../i)[1]
${EngagementGrievenceFLExpand6Xpath}                    xpath:(//a[text()='MIS-M01-DR01-F356 | Atlas Copco Pitvipers']/../i)[1]
${EngagementGrievenceFLSelectNew}                       xpath:(//a[text()='MIS-M01-DR01-F356-0001 | Atlas Copco Remote'])[1]

#*********************************************** FR19 - Capture StakeGroup Actions_MS **************************************************
${StakeGroupActionsNoResultsXpath}                      xpath://div[@id='control_6AECC604-74CD-4CA2-8014-252301E5A6E8']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${StakeGroupActionsAddBtnXpath}                         xpath://div[@id='control_6AECC604-74CD-4CA2-8014-252301E5A6E8']//div[@id='btnAddNew']
${StakeGroupActionsPFXpath}                             xpath://div[@id='btnProcessFlow_form_F72A20BD-FF84-43A1-8729-31F4F84F23C5']
${StakeGroupActionsPFAddXpath}                          xpath:(//div[@id='divProcess_F72A20BD-FF84-43A1-8729-31F4F84F23C5'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add action']
${StakeGroupActionsPFInitiatedXpath}                    xpath:(//div[@id='divProcess_F72A20BD-FF84-43A1-8729-31F4F84F23C5'])[2]/div/div[2]/div/div[@class='step active']//div[text()='To be initiated']
${StakeGroupActionsTypeDDXpath}                         xpath://div[@id='control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE']//li
${StakeGroupActionsTypeOptXpath}                        xpath://a[text()='Corrective']
${StakeGroupActionsDescriptionXpath}                    xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${StakeGroupActionsEntityDDXpath}                       xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']//li
${StakeGroupActionsEntityExpandXpath}                   xpath:(//a[text()='Anglo American Group']/../i)[2]
${StakeGroupActionsEntityOptXpath}                      xpath:(//a[text()='Bulk Commodities & Other Minerals'])[3]
${StakeGroupActionsResponsibleDDXpath}                  xpath:(//div[@id='control_7854D003-23E6-4A2E-AF2E-357C965FA684']//li)[1]
${StakeGroupActionsResponsibleSrchXpath}                xpath:(//input[@placeholder='Type and enter to search'])[4]
${StakeGroupActionsResponsibleOptXpath}                 xpath://div[contains(@class, 'transition visible')]//a[text()='AutoTest User'][1]
${StakeGroupActionVerificationID}                       xpath://div[@id='control_9837FA24-F3EE-4463-8BD4-8F1D6038885F']//span[2]/b[1]
${StakeGroupActionVerificationXpath}                    xpath:(//input[@placeholder='Type and enter to search'])[6]
${StakeGroupActionVerifyResultXpath}                    xpath:(//div[contains(@class, 'transition visible')]//a[text()='1 Administrator'])[1]
${StakeGroupActionsDueDateXpath}                        xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${StakeGroupActionsRecurringDDXpath}                    xpath://div[@id='control_2EA9211B-54AC-4846-8A26-58606645D84A']//li
${StakeGroupActionsRecurringOptXpath}                   xpath://a[text()='No']
${StakeGroupActionsSaveBtnXpath}                        xpath://div[@id='btnSave_form_F72A20BD-FF84-43A1-8729-31F4F84F23C5']
${StakeGroupActionsCloseBtnXpath}                       xpath://*[@id="form_F72A20BD-FF84-43A1-8729-31F4F84F23C5"]/div[1]/i[2]
${StakeGroupActionsPopupYesBtnXpath}                    xpath://div[@id='btnConfirmYes']
${StakeGroupActionsSubModRecordXpath}                   xpath://div[@id='control_6AECC604-74CD-4CA2-8014-252301E5A6E8']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[7]/div[contains(text(), 'FR19 - Capture StakeGroup Actions_MS')]

${EngagementManagmentProjOptXpath1}                      xpath://a[text()='Baseline 18/03/2021 - do not use']/i[1]
${EngagementGrievanceRespSupSelectID1}                   xpath:(//a[text()='A Admin'])







