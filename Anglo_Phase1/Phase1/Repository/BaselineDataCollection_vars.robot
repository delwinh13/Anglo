*** Variables ***
#************************************************* Baseline Data Collection Variables ****************************************************
${SocialSustainabilityXpath}       xpath://label[.='Social Sustainability']
${BaselineDataCollection}          xpath://label[.='Baseline Data Collection']
${BDCSearchID}                     id:btnActApplyFilter
${BaselineDataCollectionAddbtn}    id:btnActAddNew
${ProcessFlow}                     xpath://*[@id="btnProcessFlow_form_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6"]/span
${ProcessFlowAdd}                  xpath:(//div[@id='divProcess_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${ProcessFlowEdit}                 xpath:(//div[@id='divProcess_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${ProcessFlowCompleted}            xpath:(//div[@id='divProcess_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Completed']
${DetailsTab}                      xpath://li[@id='tab_04F8E324-CA78-48AC-9E31-549BAA850FE9']/div[text()='Details']
${SupportDocsTab}                  xpath://li[@id='tab_2B5B4275-75BA-4839-9B9F-69ED501317AA']/div[text()='Supporting Documents']
${SiteDropDown}                    xpath://*[@id="control_B26D3884-A0B9-4030-A4F4-3EAE76CDC15C"]/div[1]/a/span[1]/ul/li
${AngloAmericantreesdrpdwn}        xpath://a[text()='Anglo American Group']/../i
${BulkCommtreesdrpdwn}             xpath://a[text()='Bulk Commodities & Other Minerals']/../i
#kumba
${Kumbatreesdrpdwn}                xpath://a[text()='Kumba']/../i
#sishen mine
${SishenMinetreesdrpdwn}           xpath://a[text()='Sishen Mine']/../i
${BeneficPlanttreesdrpdwn}         xpath://a[text()='Benefic. Plant']
${Title}                           xpath://*[@id="control_81FA8B5D-6B8F-4F6A-8B82-2A6831B40179"]/div[1]/div/input
${Detail}                          xpath://div[@id='control_9BB4403E-C3B3-4B2F-BC45-2529C3AB81F6']/div[1]/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${Scope}                           xpath://div[@id='control_107FAB79-6249-4658-8239-DF36214307EF']/div[1]/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${Purpose}                         xpath://div[@id='control_3C27A5CB-E49D-45B4-864F-69AD32B097EB']/div[1]/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ExpectedOutcome}                 xpath://div[@id='control_741EB4CA-B7AB-41E2-AA66-BA1251D32DA1']/div[1]/div/textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${DataCollectionStartDate}         xpath:(//div[@id='control_2954B417-114C-4033-9227-162DA49A13D8']//span//input)[1]
${DataCollectionEndDate}           xpath:(//div[@id='control_8AF8FC7B-05E5-4160-8EBE-DE6B651D2795']//span//input)[1]
${TotalNoSurveys}                  xpath:(//div[@id='control_2EABEA53-FB2C-4B46-8105-121016BD9DB5']//div//input)[1]
${Owner}                           xpath://*[@id="control_A103012C-EC58-4CC4-9313-68107194A3BF"]/div[1]/a/span[1]/ul/li
${OwnerSearch}                     xpath:(//input[@placeholder='Type and enter to search'])[1]
${OwnerOption}                     xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${Team}                            xpath://*[@id="control_70488276-E0F2-4D0B-89C5-1E1478A8F1EA"]/div[1]/a/span[2]/b[1]
${TeamSearch}                      xpath:(//input[@placeholder='Type and enter to search'])[2]
${TeamSearchOption}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='Automated User'])[1]/i[1]
${LinkedProjects}                  xpath://*[@id="control_A7C33883-8EBE-475E-90B2-193709D86B3B"]/div[1]/a/span[2]/b[1]
${LinkedProjectsOption}            xpath:(//div[contains(@class, 'transition visible')]//a[text()='Baseline 18/03/2021 - do not use'])[1]/i[1]
${LinkedStakeholderGroup}          xpath://*[@id="control_9C64D6E7-E150-43BA-9C57-B06F581F4BEA"]/div[1]/a//span[2]/b[1]
${LinkedStakeholderGroupSearch}    xpath:(//input[@placeholder='Type and enter to search'])[3]
${LinkedStakeholderGroupOption}    xpath:(//div[contains(@class, 'transition visible')]//a[text()='Resonant Automation'])[1]/i[1]
${Survey}                          xpath://*[@id="control_F89EC2D1-2879-4379-AEF3-68BDEF474038"]/div[1]/a//span[2]/b[1]
${SurveyOption}                    xpath:(//div[contains(@class, 'transition visible')]//a[text()='Social Demo Survey'])[1]/i[1]
${Savebtn}                         xpath://*[@id="btnSave_form_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6"]/div[3]
${SavetoContinueBtn}               xpath://*[@id="control_915F80F7-DBD1-43B5-8647-FA7370A69A32"]
${RecordSaved}                     xpath://*[@id="txtHeader"]
${BDCRecordNo}                     xpath:(//div[@id='form_9D8FF3BF-C0FD-423E-A196-8C74C8A84CF6']//div[contains(text(),'- Record #')])[1]
${SurveyTab}                       xpath://li[@id='tab_5372B97E-3CD2-48AE-9A72-CFCFA637797C']/div[text()='Survey']
${ActionsTab}                      xpath://li[@id='tab_BB0274DD-1D3E-4049-B546-12F5C2A561A3']/div[text()='Actions']
${StatusPlanned}                   xpath://div[@id='control_38D3D931-EBDD-4732-A573-E5F13D55D1F5']/div/a/span/ul/li[text()='Planned']
${StatusValue}                     xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[1]/div/div[1]/div[9]/div/div[2]/div[1]/a/span[1]/ul/li
${StatusDrpDwn}                    xpath://*[@id="control_38D3D931-EBDD-4732-A573-E5F13D55D1F5"]/div[1]/a/span[2]/b[1]
${StatusDDInProgress}              xpath:(//div[contains(@class, 'transition visible')]//a[text()='In Progress'])[1]
${StatusInProgress}                xpath://div[@id='control_38D3D931-EBDD-4732-A573-E5F13D55D1F5']/div/a/span/ul/li[text()='In Progress']
${StatusCompleted}                 xpath://div[@id='control_38D3D931-EBDD-4732-A573-E5F13D55D1F5']/div/a/span/ul/li[text()='Completed']
${StatusDDComplete}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='Completed'])[1]
${SupportingDocuments}             xpath://*[@id="tab_2B5B4275-75BA-4839-9B9F-69ED501317AA"]/div[1]
${SaveSupportingDocumentsbtn}      xpath://*[@id="control_90779E50-51E6-4C66-B95F-49A705A3BB34"]/div[1]/div
${LinkToDocument}                  xpath://*[@id="control_4F964D0A-A466-476C-B38B-2907EACCB8CD"]/div[1]/div[1]/div[2]/b[2]
${URLAddBtn}                       xpath://*[@id="btnConfirmYes"]
${URLValue}                        xpath://*[@id="urlValue"]
${URLTitle}                        xpath://*[@id="urlTitle"]
${SurveyNoResults}                 xpath://div[@id='control_52772A2D-30BB-4D97-9AD0-B292B55AB401']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${SurveyAddbtn}                    xpath://*[@id="btnAddNew"]
${SurveyNameLabel}                 xpath://div[@id='control_32921A95-2ADC-4CE3-83AE-1209A9BB2A46']
${SurveySaveAndStartSurveybtn}     xpath://*[@id="control_35D39A00-2098-47BE-8307-CAA84F012641"]/div[1]/div
${RecordSaved2}                    xpath:(//*[@id="txtHeader"])[2]
${SurveyProcessFlowbtn}            xpath://*[@id="btnProcessFlow_form_84689229-E012-4864-81DA-849A34367DC1"]/span
${SurveyProcessFlowAdd}            xpath:(//div[@id='divProcess_84689229-E012-4864-81DA-849A34367DC1'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SurveyProcessFlowEdit}           xpath:(//div[@id='divProcess_84689229-E012-4864-81DA-849A34367DC1'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${ExcludeFromResults}              xpath://div[@id='control_101740D6-A260-4B2D-9DB5-B4FEC3BAE230']//div[@class='c-chk']/div
${GeographicLocation}              xpath://*[@id="control_669136F0-EBF1-412A-8B60-4EF0433E19DE"]/div[1]/a/span[1]/ul/li
# ${GeographicLocationOption1}       xpath://*[@id="65367928-698c-4d94-811c-bf797af721b1"]/i
# ${GeographicLocationOption2}       xpath://*[@id="2fe3fc83-44d6-4707-ba20-59273e23a3b2"]/i
# ${GeographicLocationOption3}       xpath://*[@id="6f30a4df-bd33-4390-9d27-a8c6e426d351"]/i
${GeographicLocationOption}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='Australia'])[1]
${SurveyName}                      xpath://*[@id="control_509E21D4-6B42-4154-8DDD-B99F421F45EE"]/div[1]/a/span[1]/ul/li
${SurveyNameOption}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='Social Demo Survey'])[1]
${SurveyConductedBy}               xpath://*[@id="control_C8533C3C-6B41-4D9E-A7BA-D69CED135AC7"]/div[1]/a/span[1]/ul/li
${SurveyConductedBySearch}         xpath:(//input[@placeholder='Type and enter to search'])[4]
${SurveyConductedByOption}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${SurveyRecordNo}                  xpath:(//div[@id='form_84689229-E012-4864-81DA-849A34367DC1']//div[contains(text(),'- Record #')])[1]
${SurveyStatusNotStarted}          xpath://div[@id='control_56059D92-1396-4437-B259-0B8C8449EE54']//li[text()='Not started']
${SurveyLatXpath}                  xpath://div[@id='control_BB858230-4189-4D3C-A2C4-FF2293BDD98C']/div/div/input[@readonly='readonly']
${SurveyLongXpath}                 xpath://div[@id='control_1F810E99-A069-412F-AA59-F9343849128A']/div/div/input[@readonly='readonly']
${SurveyMapCSS}                    css:#graphicsLayer2_layer > path
${SurveyChecklistSTART}            xpath://div[@id='btnChecklist_form_84689229-E012-4864-81DA-849A34367DC1']//div[text()='START']
${Reason}                          xpath://*[@id="control_CA3B8F8B-CC41-4DE8-A7BC-7E3127CDBBA3"]/div[1]/div/textarea
${ExcludedByDD}                    xpath://*[@id="control_3A5BB21B-0127-409B-B4E2-9B5DAFB030C5"]//li[text()='AutoTest User']
${DateExcluded}                    xpath://*[@id="control_3BA6BA80-891C-4E38-8272-6708E7F837CD"]//span[@class='k-picker-wrap k-state-disabled']
${SurveySavebtn}                   xpath://div[@id='form_84689229-E012-4864-81DA-849A34367DC1']//div[@id='btnSave_form_84689229-E012-4864-81DA-849A34367DC1']/div[text()='Save']
${SurveyStatus}                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[15]/div[4]/div[12]/div[1]/a/span[1]/ul/li
${SocialDemoSurveyCheclist}        xpath://div[@id='form_checklist_84689229-E012-4864-81DA-849A34367DC1']//*[@id="nav_84689229-E012-4864-81DA-849A34367DC1"][text()='Baseline Data Collection - Social Demo Survey']
${SaveCurrentSectionbtn}           xpath://*[@id="btnSave_checklist_84689229-E012-4864-81DA-849A34367DC1"]/div[text()='Save current section']
${SaveCurrentSectionRecord}        xpath://div[@id='form_checklist_84689229-E012-4864-81DA-849A34367DC1']//*[@id="divPager"]/div[contains(text(),'Record')][1]
${CloseCheckSaveCurrent}           xpath://*[@id="form_checklist_84689229-E012-4864-81DA-849A34367DC1"]/div[1]/i[2]
${ChecklistLoadingData}            xpath://div[@id='divWait']/div[text()='Loading data...']
${ChecklistCONTINUE}               xpath://div[@id='btnChecklist_form_84689229-E012-4864-81DA-849A34367DC1']/div[text()='CONTINUE']
${ChecklistInProgress}             xpath://div[@id='checklistSummary']//div[text()='In progress']
${SurveyStatusInProgress}          xpath://div[@id='control_56059D92-1396-4437-B259-0B8C8449EE54']//li[text()='In progress']
${SurveyNextbtn}                   xpath://*[@id="btnSave_checklist_84689229-E012-4864-81DA-849A34367DC1"]/div[text()='NEXT']
${SurveyPreviousbtn}               xpath://*[@id="btnSave_checklist_84689229-E012-4864-81DA-849A34367DC1"]/div[text()='Previous']
${SurveyFinishbtn}                 xpath://*[@id="btnSave_checklist_84689229-E012-4864-81DA-849A34367DC1"]/div[text()='Finish']
${CloseSurvey}                     xpath://*[@id="form_84689229-E012-4864-81DA-849A34367DC1"]/div[1]/i[2]
${BlastingQues1}                   xpath://*[@id="control_333BF3FD-AC64-4AC1-85FA-A0B58ADBFA1C"]/div[1]/a/span[2]/b[1]
${BlastingQues1Option}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[25]/ul[1]/ul/li[1]/a
${BlastingQues3}                   xpath://*[@id="control_CD5F6F2A-2B13-47DB-90FC-5083E92745B7"]/div[1]/a/span[2]/b[1]
${BlastingQues3option}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[27]/ul[1]/ul/li[1]/a
${NoiseQues2option}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[31]/div[3]/div/div[2]/div[1]/div/div[9]/div[2]/table/tr[3]/td[2]/div/div[1]/div
${NoiseQues3option}                xpath://*[@id="control_2208BC54-1351-4D69-BCB6-81592896CFAC"]/div[1]/div
${ChronicConditionsdrpdwn}         xpath://*[@id="control_FADA1D38-4B40-431B-8B39-B5A5826E8624"]/div[1]/a/span[2]/b[1]
${ChronicConditionsYesdrpdwn}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Yes'])
${ListOfConditionsdrpdwn}          xpath://*[@id="control_1F7AC86E-7C7A-40D9-B229-DF72E55F1112"]/div[1]/a/span[2]/b[1]
${ConditionAsthma}                 xpath:(//div[contains(@class, 'transition visible')]//a[text()='Asthma'])/i[1]
${Viewbtn}                         xpath://*[@id="btnChecklist_form_84689229-E012-4864-81DA-849A34367DC1"]/div[text()='View']
${ChecklistComplete}               xpath://div[@id='checklistSummary']//div[text()='Complete']
${SurveyStatusComplete}            xpath://div[@id='control_56059D92-1396-4437-B259-0B8C8449EE54']//li[text()='Complete']
${ActionsTab}                      xpath://*[@id="tab_BB0274DD-1D3E-4049-B546-12F5C2A561A3"]
${ActionsAddbtn}                   xpath://div[@id='control_B047BC07-3B9E-4577-A34F-E313BB83CFF6']//*[@id="btnAddNew"]
${ActionsProcessFlowbtn}           xpath://*[@id="btnProcessFlow_form_D64A5CCF-80FF-48BE-BA89-3C2BCCED1152"]/span
${ActionsPFAdd}                    xpath:(//div[@id='divProcess_D64A5CCF-80FF-48BE-BA89-3C2BCCED1152'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add action']
${ActionsPFInitiated}              xpath:(//div[@id='divProcess_D64A5CCF-80FF-48BE-BA89-3C2BCCED1152'])[2]/div/div[2]/div/div[@class='step active']//div[text()='To be initiated']
${ActionsSavebtn}                  xpath://*[@id="btnSave_form_D64A5CCF-80FF-48BE-BA89-3C2BCCED1152"]
${ActionsTaskType}                 xpath://*[@id="control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9"]/div[1]/a/span[1]/ul/li
${ActionsTaskTypeAdHoc}            xpath:(//div[contains(@class, 'transition visible')]//a[text()='Ad Hoc'])
${ActionsTypeOfAction}             xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[1]/ul/li
${TypeOfActionCorrective}          xpath:(//div[contains(@class, 'transition visible')]//a[text()='Corrective'])
${ActionDescription}               xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${Entity}                          xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[1]/ul/li
${AngloAmericanGrouptree}          xpath:(//a[text()='Anglo American Group']/../i)[2]
${AngloAmericanplctree}            xpath:(//a[text()='Bulk Commodities & Other Minerals']/../i)[3]
#kumba
${AngloAmericanplctree2}            xpath:(//a[text()='Kumba']/../i)[2]
#sishen mine
${AngloAmericanplcOption}          xpath:(//a[text()='Sishen Mine'])[2]
#${AngloAmericanGrouptree}          xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
#${AngloAmericanplctree}            xpath://*[@id="7b0159f1-23bb-4579-ae4a-86a751efc2ca"]/i
#${AngloAmericanplctree2}           xpath://*[@id="e0c53028-7283-4577-acd8-4f6d681f1b62"]/i
#${AngloAmericanplcOption}          xpath://*[@id="01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor"]
${ResponsiblePerson}               xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[1]/ul/li
${ResponsiblePersonSearch}         xpath:(//input[@placeholder='Type and enter to search'])[6]
${ResponsiblePersonOption}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])
${ActionDueDate}                   xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${RecurringAction}                 xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[1]/ul/li
${RecurringActionOptionNo}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])
${ActionsCloseIcon}                xpath://*[@id="form_D64A5CCF-80FF-48BE-BA89-3C2BCCED1152"]/div[1]/i[2]
${ActionsCloseIconConfirmYes}      xpath://*[@id="btnConfirmYes"]
${BDCStatusDDComplete}             xpath:(//div[contains(@class, 'transition visible')]//a[text()='Completed'])

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
${BDCLoggedSubject}                         xpath:(//span[contains(text(),'Baseline Data Collection')][contains(text(),'has been logged.')])[1]
${IsoMetrixSignInXpath}                     xpath://div[@id='divMixedMode']/div/div[2]/div[text()='ISOMETRIX SIGN IN']