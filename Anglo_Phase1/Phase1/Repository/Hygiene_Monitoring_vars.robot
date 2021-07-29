*** Variables ***
#************************************************* Anglo Landing Page ****************************************
${HygieneButton}                            xpath://*[@id="section_50588bfc-de0f-4bea-bc98-7fd4b1bcd249"]/label

#************************************************* Occupational Hygiene Page ****************************************
${HygieneMonitoringButton}                  xpath://*[@id="section_5c58ba23-582d-4286-b129-7d51deed85b9"]/label
${HygieneMonitoringAddButton}               xpath://*[@id="btnActAddNew"]/div
${ProcessflowButton}                        xpath://*[@id="btnProcessFlow_form_09401948-BB2C-46DC-8CE2-0CB456D04334"]/span
${ProcessflowAddPhase}                      xpath:(//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${BusinessUnitDropdown}                     xpath://*[@id="control_3AD32ED5-0174-4C7B-80F7-172C012A1B66"]/div[1]/a/span[2]/b[1]
${BUAAGOption}                              xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BUBCOOption}                              xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BUKOption}                                xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BUSMOption}                               xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${GeographicLocationDropdown}               xpath://*[@id="control_84FD6FDE-AAA9-44D1-AC37-347723069804"]/div[1]/a/span[2]/b[1]
${AustraliaLocation}                        xpath://*[@id="9a25275e-ad7d-4244-9fa9-ff46db195d9e_anchor"]
${SouthAfricaDaimondButton}                 xpath://*[@id="65367928-698c-4d94-811c-bf797af721b1"]/i
${GautengDaimondButton}                     xpath://*[@id="2fe3fc83-44d6-4707-ba20-59273e23a3b2"]/i
${CenturionDaimondButton}                   xpath://*[@id="6f30a4df-bd33-4390-9d27-a8c6e426d351"]/i
${KIOHeadOfficeSelection}                   xpath://*[@id="7afdae2b-cc07-40d8-a166-1680be5d1650_anchor"]
${ResponsiblePersonDropdown}                xpath://*[@id="control_EE9AC7E0-503B-4752-A066-6AAE62B68F48"]/div[1]/a/span[2]/b[1]
${ResponsiblePersonSearchbox}               xpath:(//input[@placeholder='Type and enter to search'])[1]
${AutoTestSelection}                        xpath://*[@id="cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor"]
${AdministratorSelection}                   xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${MonitoredHEGSEGDropdown}                  xpath://*[@id="control_AED95D8D-8BF8-4398-A3B1-A37B9CDE17E7"]/div[1]/a/span[2]/b[1]
${MHCSTAAPSearchButton}                     xpath:(//input[@placeholder='Type to search'])[3]
${MHBoilerSelection}                        xpath://*[@id="f24c75b4-3a09-487f-8328-ee41df88c495_anchor"]
${MHCSTAAPSelection}                        xpath://*[@id="63867cfd-ff26-4bfe-9ecd-37c02bb133f4_anchor"]
${MHCSMFAPSelection}                        xpath://*[@id="00144994-b468-4b46-82d4-88a0e3370662_anchor"]
${MHCSMYPSelection}                         xpath://*[@id="01fedd10-57d1-4718-9690-cb7d9ff760d9_anchor"]
${MHEGSEGSelection}                         xpath://*[@id="7009043f-cd45-43b3-9fc5-9dcd3a871fdc_anchor"]
${TypeOfMonitoringDropdown}                 xpath://*[@id="control_A819E8D3-22B7-40D1-B3F3-8A66C6819E94"]/div[1]/a/span[2]/b[1]
${PersonSelection}                          xpath://*[@id="e48259d0-1ed8-4a3d-bd31-c4fe4d57b227_anchor"]
${AreaSelection}                            xpath://*[@id="3b9a5ed3-754a-4456-a5f2-d301726a8944_anchor"]
${EquipmentSelection}                       xpath://*[@id="56ce1cce-09f6-4a07-b0a9-6b074ea36b20_anchor"]
${SamplingTypeDropdown}                     xpath://*[@id="control_29BBC8DA-F7F2-4DBF-B943-C3CE36D70C46"]/div[1]/a/span[2]/b[1]
${ManualSelection}                          xpath://*[@id="f8295188-766f-462f-a438-30a99ce3a0b5_anchor"]
${SystemGenaratedSelection}                 xpath://*[@id="ae86cd97-196a-475b-824c-b41c98dcd45a_anchor"]
${SchedulingTypeDropdown}                   xpath://*[@id="control_5F81915B-00F3-482C-8A47-0C10C99D01ED"]/div[1]/a/span[2]/b[1]
${MultipleSelection}                        xpath://*[@id="7addf86c-ad22-4328-b071-c6bdd07d1772_anchor"]
${MonitoringFrequencyDropdown}              xpath://*[@id="control_F11F8D3F-BF3B-44FA-8A88-A8968EB4D397"]/div[1]/a/span[2]/b[1]
${DailySelection}                           xpath://*[@id="86b6e8dc-ea19-4aea-9ca3-481b05fae63a_anchor"]
${OESTPTimefield}                           xpath://*[@id="control_59696B98-5352-432F-8ED6-5DB97642120E"]/div[1]/span
${ScheduleEvery}                            xpath://*[@id="control_EE9873A7-AF75-4762-9B8E-8E4CE996452E"]/div[1]/div/input
${StakeHolderClassificationDropdown}        xpath://*[@id="control_003B769C-8C3A-4073-AD58-2AB5994B0CEB"]/div[1]/a/span[2]/b[1]
${ContractorSelection}                      xpath://*[@id="14e20951-a8fa-457f-840d-69af3adf1a58_anchor"]/i[1]
${SamplingMethodDropdown}                   xpath://*[@id="control_4CBC5CEF-81C2-43B4-AA2C-875200216276"]/div[1]/a/span[2]/b[1]
${HEGSEGSelection}                          xpath://*[@id="675385d9-8c8a-4f2c-b8bb-a1f139a76667_anchor"]
${SampleSizeTextbox}                        xpath://*[@id="numberInput"]
${SampleSizePercentageDropDown}             xpath://*[@id="control_4CD794A3-2581-415B-8DA0-23E549E64FE5"]/div[1]/a/span[2]/b[1]
${SampleSizeSelection}                      xpath://*[@id="0e8f8974-cd55-41f4-b955-f1f7ec6993f8_anchor"]
${MonitoringReferenceTextbox}               xpath://*[@id="control_C997D80B-E2DC-45C7-8C87-753D02FAE01E"]/div[1]/div/input
${MonitoringStarDate}                       xpath://*[@id="control_0C777184-3FB6-495A-897A-14F50673CAFD"]/div[1]/span/span/input
${MonitoringEndDate}                        xpath://*[@id="control_D1585D3C-3596-4931-A616-C8339E6F358F"]/div[1]/span/span/span/span
${MonitoringEndDateSelection}               xpath://*[@id="control_D1585D3C-3596-4931-A616-C8339E6F358F"]/div[1]/span/span/input
${ShiftDropdown}                            xpath://*[@id="control_54E61685-934F-41B7-BA9D-F9CA2B57BBB4"]/div[1]/a/span[2]/b[1]
${ShiftSelection}                           xpath://*[@id="ca36706a-44c7-4233-a92c-945471e042f6_anchor"]
${SaveButtonXpath}                          xpath://*[@id="control_204068BD-3BAA-4AAB-BFCE-7DF8728BF374"]/div[1]/div
${ProcessflowScheduledPhase}                xpath:(//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])[2]/div/div[2]/div[3]/div[1]//div[text()='Scheduled']

#************************************************* Email Notification ****************************************
${Officeurl}                                https://www.office.com
${outlookusername}                          Bala.Sivarathri@isometrix.com
${outlookpassword}                          Metrix@2021@
${SignInBtn}                                xpath://a[contains(text(),'Sign in')]
${EmailField}                               xpath://input[@type='email']
${EmailNext}                                xpath://input[@value='Next']
${EmailPasswordField}                       xpath://input[@type='password']
${EmailSignInBtn}                           xpath://input[@value='Sign in']
${Outlook}                                  xpath://a[@id='ShellMail_link']
${SystemMailFolder}                         xpath://span[text()='IsometrixMails']
${EmailLinkBacktoRecord}                    xpath://a[@data-auth='NotApplicable']
${IsoMetrixSignInXpath}                     xpath://div[@id='divMixedMode']/div/div[2]/div[text()='ISOMETRIX SIGN IN']
${HygieneMonitoringAddedSubject}            xpath:(//span[contains(text(),'Non production - IsoMetrix Hygiene Monitoring #')][contains(text(),'has been logged.')])[1]

#************************************************* FR:2 Move monitoring to In Progress ****************************************
${StatusDropDown}                           xpath://*[@id="control_1CE4E028-1CFA-49E0-BD4A-5180AAB2B25A"]/div[1]/a/span[2]/b[1]
${InProgressSelection}                      xpath:(//div[contains(@class, 'transition visible')]//a[text()='In Progress'])[1]
${InProgressSelection1}                      xpath://*[@id="19169cb5-fe6c-4467-9671-7bf2dbe3ac60_anchor"]
${InProgressSaveButton}                     xpath://*[@id="btnSave_form_09401948-BB2C-46DC-8CE2-0CB456D04334"]/div[3]
${InProgressPhase}                          xpath:((//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])/div/div[2]/div[5]/div/div[text()='In Progress'])[2]

#************************************************* FR:3 Capture HygieneMonitoring Stressors by Person ****************************************
${HMSearchButton}                           xpath://*[@id="btnActApplyFilter"]/div
${HMPersonRecordSelection}                  xpath://*[@id="grid"]/div[3]/table/tbody/tr[1]/td[7]/div
${MonitoringResultsDropdown}                xpath://*[@id="control_1799322D-82DE-4F09-8A21-1A7EE7733E4C"]/div[9]/div[1]
${HMSAddButton}                             xpath://div[text()='Hygiene Monitoring Stressors']/../..//*[@id="btnAddNew"]/div
${HMSProcessflowButton}                     xpath://*[@id="btnProcessFlow_form_57CB546A-36CE-43EB-A391-9F84B3EA8F82"]/span
${HMSProcessflowAddPhase}                   xpath:(//div[@id='divProcess_57CB546A-36CE-43EB-A391-9F84B3EA8F82'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${PersonDropdown1}                           xpath://*[@id="control_EA85B51F-466E-493F-AF34-DAF6E61DA58F"]/div[1]/a/span[2]/b[1]
${PersonDropdown}                           xpath://*[@id="control_32227851-1988-4E53-B6C7-1D58303E8134"]/div[1]/a/span[2]/b[1]
${AreaDropdown}                             xpath://*[@id="control_EA85B51F-466E-493F-AF34-DAF6E61DA58F"]/div[1]/a/span[2]/b[1]
${PersonDropdownSearchbox}                  xpath:(//input[@placeholder='Type and enter to search'])[5]
${AreaDropdownSearchbox}                    xpath:(//input[@placeholder='Type and enter to search'])[4]
${ANVJSelection}                            xpath://*[@id="606a124d-bd2d-4bff-b779-a237aa74de3b_anchor"]
${TBNSelection}                             xpath://*[@id="90ca8496-4e0d-47a9-83d1-36ed32dbf027_anchor"]
${EPPSelection}                             xpath://*[@id="5e3293d2-4917-4c7e-bb0c-ffeff130fead_anchor"]
${HazardCatogeryDropdown}                   xpath://*[@id="control_53EFA822-EDE8-4DC2-BD52-C9C6171FD4D9"]/div[1]/a/span[2]/b[1]
${PhysicalSelection}                        xpath://*[@id="5ee5629f-f057-4049-9446-ce036f738705_anchor"]
${PhysicalSelection}                        xpath://*[@id="69bb4ade-bae8-4fdb-9252-4ef4f1e97585_anchor"]
${MECDropdown}                              xpath://*[@id="control_F6DA52A5-D28D-4CB9-89DB-136AE2B0E81A"]/div[1]/a/span[2]/b[1]
${NoiseMonitoringDaimondButton}             xpath://*[@id="931b0d9a-901d-4ecb-9f44-571cf42321ad"]/i
${DosimeterSelection}                       xpath://*[@id="721ae586-5162-456f-89ed-11e4f892d425_anchor"]
${AssetDropdown}                            xpath://*[@id="control_5776E628-7BE7-4C75-8527-30CB6130B75E"]/div[1]/a/span[2]/b[1]
${AssetDropdownSelection}                   xpath://*[@id="68fed1ea-0bc7-4277-9921-066fff46c5cd_anchor"]
${AssetDropdownSelection1}                   xpath://*[@id="c67e1a28-0a5c-4b15-88a1-7d2b0cfc3706_anchor"]
${ScheduleDate}                             xpath://*[@id="control_F7DA0104-3DBD-49F2-9C55-66004A3EFCB0"]/div[1]/span/span/input
${StartDate}                                xpath://*[@id="control_FA216CD9-A012-49B1-9781-EC8E8643449C"]/div[1]/span/span/input
${SamplingStartTime}                        xpath://*[@id="control_24343547-6F3C-4E00-AFD6-20A313A3D316"]/div[1]/span
${EndDateIcon}                              xpath://*[@id="control_08885BA8-82B1-4AFE-97B4-394C01AE757E"]/div[1]/span/span/span/span
${EndDateSelection}                         xpath://*[@id="control_08885BA8-82B1-4AFE-97B4-394C01AE757E"]/div[1]/span/span/input
${SamplingEndTime}                          xpath://*[@id="control_48F48444-8991-4BED-A7A7-5E6BE70583DF"]/div[1]/span
${IstheFilterInformationRequred}            xpath://*[@id="control_C124D3C9-08A2-414A-9D35-B12C3B1C1732"]/div[1]/div
${FilterInformationDropdown}                xpath://*[@id="control_A5D04FA2-3887-4A6F-A13E-D5C3C3C0C8F0"]/div[9]/div[1]
${SaveAndContinueButton}                    xpath://*[@id="control_8B192261-E55F-4F85-8A0E-7F21FDA689E1"]/div[1]/div
${HMSProcessflowEditPhase}                  xpath:(//div[@id='divProcess_57CB546A-36CE-43EB-A391-9F84B3EA8F82'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${ConsequenceDropdown}                      xpath://*[@id="control_BA0A583E-0CED-43E9-B964-FC8CE09728CF"]/div[1]/a/span[2]/b[1]
${LegalAndRegulatoryDaimond}                xpath://*[@id="007227b5-1849-4252-8ae5-627450737d60"]/i
${LegalMajorSelection}                      xpath://*[@id="9d63070b-3085-4cd7-98ea-e0779896a6c2_anchor"]
${LikelyHoodDropdown}                       xpath://*[@id="control_6D7E5BD8-00B2-4027-B800-A0F070EC138A"]/div[1]/a/span[2]/b[1]
${AlmostCertainSelection}                   xpath://*[@id="f9ec2a99-4fea-430e-9a80-9d169333dca1_anchor"]
${MonitoringStressorSaveButton}                xpath://*[@id="btnSave_form_57CB546A-36CE-43EB-A391-9F84B3EA8F82"]/div[3]
${ObservationTextbox}                       xpath://*[@id="control_A26D727C-623B-4CC1-A9BB-7A53015C69B8"]/div[1]/div/textarea


#******************************************* FR:3 Capture HygieneMonitoring Stressors Results by Person ****************************************
${StressorResultsDropdown}                  xpath://*[@id="control_A11706ED-28E0-4518-81D0-BDECD66485E2"]/div[9]/div[1]
${StressorResultsAddbutton}                 xpath:(//div[text()='Hygiene Monitoring Stressors']/../..//*[@id="btnAddNew"]/div)[2]
${StessorsProcessflowButton}                xpath://*[@id="btnProcessFlow_form_21AD3EE9-0E65-4B59-B57E-C4659A716650"]/span
${StressorsProcessflowAddPhase}             xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${HazardNameDropdown}                       xpath://*[@id="control_A6EB183B-5185-449E-ACA5-1868A3659E3E"]/div[1]/a/span[2]/b[1]
${HazardNameSearch}                         xpath:(//input[@placeholder='Type to search'])[116]
${CSTDaimondButton}                         xpath:(//*[@id="63867cfd-ff26-4bfe-9ecd-37c02bb133f4"]/i)[2]
${StressorsPhysicalSelection}               xpath:(//*[@id="69bb4ade-bae8-4fdb-9252-4ef4f1e97585_anchor"])[2]
${SelicaSelection}                          xpath://*[@id="7fb495ee-380f-4e01-b64b-505ebd6cbd2f_anchor"]
${ResultTextbox1}                           xpath:(//*[@id="numberInput"])[9]
${StressorsSaveandContinueButton}           xpath://*[@id="control_7833BBEA-6D3B-46A7-AC51-811BD1EF624D"]/div[1]/div
${StressorsProcessflowEditPhase1}           xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#************************************************* FR:3 Capture HygieneMonitoring Stressors by Area ****************************************
${HMAreaRecordSelection}                    xpath://*[@id="grid"]/div[3]/table/tbody/tr[2]/td[7]/div
${AreaDropdown}                             xpath://*[@id="control_EA85B51F-466E-493F-AF34-DAF6E61DA58F"]/div[1]/a/span[2]/b[1]
${AreaDropdownSearchbox}                    xpath:(//input[@placeholder='Type and enter to search'])[4]
${EPPSelection}                             xpath://*[@id="5e3293d2-4917-4c7e-bb0c-ffeff130fead_anchor"]
${AreaDescriptionTextbox}                   xpath://*[@id="control_B261174F-71DB-40A2-8D53-6E248625C6C6"]/div[1]/div/input

#************************************************* FR:3 Capture HygieneMonitoring Stressors by Equipment ****************************************
${HMEquipmentRecordSelection}               xpath://*[@id="grid"]/div[3]/table/tbody/tr[1]/td[7]/div
${EquipmentDropdown}                        xpath://*[@id="control_E4928611-CDD9-4AB7-B719-BF4507F65629"]/div[1]/a/span[2]/b[1]
${EquipmentDropdownSearchbox}               xpath:(//input[@placeholder='Type and enter to search'])[3]
${AABXDaimondButton}                        xpath://*[@id="dc49242a-0681-449c-b7d0-34242c18e796"]/i
${PAGSelection}                             xpath://*[@id="efdcca82-4b5f-4d90-ad12-3038ed17e6df_anchor"]
${PhysicalSelection1}                       xpath://*[@id="746aece9-1a9f-46b2-9e74-4eb35a2c5f0f_anchor"]

#************************************************* FR:4 Capture HygieneMonitoring Results ****************************************
${HMStressorPersonDropdown}                 xpath://*[@id="control_32227851-1988-4E53-B6C7-1D58303E8134"]/div[1]/a/span[2]/b[1]
${StressorsResultsDropdown}                 xpath://*[@id="control_A11706ED-28E0-4518-81D0-BDECD66485E2"]/div[9]/div[1]
${StressorsResultsAddButton}                xpath://div[text()='Hygiene Monitoring Results']/../..//*[@id="btnAddNew"]/div
${StessorsProcessflowButton}                xpath://*[@id="btnProcessFlow_form_21AD3EE9-0E65-4B59-B57E-C4659A716650"]/span
${StressorsProcessflowAddPhase}             xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${HazardNameDropdown}                       xpath://*[@id="control_A6EB183B-5185-449E-ACA5-1868A3659E3E"]/div[1]/a/span[2]/b[1]
${HazardNameSearch}                         xpath:(//input[@placeholder='Type to search'])[116]
${CSMFADaimondButton}                       xpath:(//*[@id="da8f7f62-3e5d-4592-8c14-712eaf2f0867"]/i)[2]
${StressorsPhysicalSelection1}               xpath:(//*[@id="5ee5629f-f057-4049-9446-ce036f738705_anchor"])[2]
${CSTDaimondButton}                         xpath:(//*[@id="63867cfd-ff26-4bfe-9ecd-37c02bb133f4"]/i)[2]
${StressorsPhysicalSelection}               xpath:(//*[@id="69bb4ade-bae8-4fdb-9252-4ef4f1e97585_anchor"])[2]
${SelicaSelection}                          xpath://*[@id="7fb495ee-380f-4e01-b64b-505ebd6cbd2f_anchor"]
${ResultTextbox1}                           xpath:(//*[@id="numberInput"])[9]
${StressorsSaveandContinueButton}           xpath://*[@id="control_7833BBEA-6D3B-46A7-AC51-811BD1EF624D"]/div[1]/div
${StressorsProcessflowEditPhase1}           xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']


#************************************************* FR5–Capture HygieneMonitoring Findings ****************************************
${FindingsResultsDropdown}                  xpath://*[@id="control_9221EE44-8056-412A-8C88-8A1633C7D03A"]/div[9]/div[1]
${FindingsAddButton}                        xpath://div[text()='Hygiene Monitoring Findings']/../..//*[@id="btnAddNew"]/div
${FindingsProcessflowButton}                xpath://*[@id="btnProcessFlow_form_B44E1349-9F0B-47B4-8F31-5AD001737D37"]/span
${FindingsProcessflowAddPhase}              xpath:(//div[@id='divProcess_B44E1349-9F0B-47B4-8F31-5AD001737D37'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${FindingDescription}                       xpath://*[@id="control_40ECC722-B08B-48F3-9906-3CFCE527C5CD"]/div[1]/div/textarea
${FunctionalLocationDropdown}               xpath://*[@id="control_DE18F9A3-BBB4-4600-B420-0167AE11B426"]/div[1]/a/span[2]/b[1]
${MISSishenSelection}                       xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]
${FindingOwnerDropdown}                     xpath://*[@id="control_434D9128-5EBC-4E25-9836-72A2C4451733"]/div[1]/a/span[2]/b[1]
${FindingOwnerSearchBox}                    xpath:(//input[@placeholder='Type and enter to search'])[3]
${AdministratorSelection}                   xpath:(//*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"])[2]
${FindingClassificationDropdown}            xpath://*[@id="control_7689E71C-DC7E-41C1-9124-C6312596E956"]/div[1]/a/span[2]/b[1]
${MajorNonConSelection}                     xpath:(//*[@id="37e3a345-8b6a-41b8-ad8e-6a9561148b31_anchor"])
${FindingClosureDueDate}                    xpath://*[@id="control_1318D08E-2DA5-47DC-AFC8-0E99CC12C72A"]/div[1]/span/span/span/span
${FindingClosureSelection}                  xpath://*[@id="control_1318D08E-2DA5-47DC-AFC8-0E99CC12C72A"]/div[1]/span/span/input
${RiskSourceDropdown}                       xpath://*[@id="control_E2CBB706-26AB-4373-813A-05D4860FC38F"]/div[1]/a/span[2]/b[1]
${BiologicalSelection}                      xpath://*[@id="1e07b897-e70f-4cf5-b08e-137a1624b664_anchor"]/i[1]
${RelatedPermitsDropdown}                   xpath://*[@id="control_6FC51E0E-C6FD-4316-940D-2DC2029A0ECA"]/div[1]/a/span[2]/b[1]
${ACPSelectionCheckbox}                     xpath://*[@id="b9afda6c-db09-4f0b-8c76-fb56c95a1927_anchor"]/i[1]
${LinkToContractorCompany}                  xpath://*[@id="control_645E34D6-28C1-41C7-8788-2D2B7E1D89F5"]/div[1]/div
${LinkToStakeHolder}                        xpath://*[@id="control_A57F1CD7-32DA-4989-9EB8-E9F629C37A52"]/div[1]
${ContractorCompanyDropdown}                xpath://*[@id="control_BA68EA99-D7F7-45D0-AC6C-1943E0873DE2"]/div[1]/a/span[2]/b[1]
${ContractorCompanySearcbox}                xpath:(//input[@placeholder='Type and enter to search'])[4]
${ABPumpsSelection}                         xpath://*[@id="47759dcd-86a8-490e-a003-c1c708ee336c_anchor"]/i[1]
${StakeIndividualsDropdown}                 xpath://*[@id="control_B60F2A34-EF55-4114-8103-7382AF7F0CEE"]/div[1]/a/span[2]/b[1]
${StakeIndividualsSearcbox}                 xpath:(//input[@placeholder='Type and enter to search'])[5]
${AAMSelection}                             xpath://*[@id="4e9fad73-56a1-4fe1-92de-6232267ddbed_anchor"]/i[1]
${FindingsSaveButton}                       xpath://*[@id="control_E0B5417B-8F24-4E1D-A4DB-8C68192F6F7B"]/div[1]/div
${FindingsProcessflowEditPhase}             xpath:(//div[@id='divProcess_B44E1349-9F0B-47B4-8F31-5AD001737D37'])[2]/div/div[2]/div[3]/div//div[text()='Edit phase']

#************************************************* FR:6 Complete HygieneMonitoring ****************************************
${StatusDropDown}                           xpath://*[@id="control_1CE4E028-1CFA-49E0-BD4A-5180AAB2B25A"]/div[1]/a/span[2]/b[1]
${CompletedSelection}                       xpath://*[@id="58d37837-f1b0-40e6-bee5-b9da4e9a0204_anchor"]
${CompletedSaveButton}                      xpath://*[@id="btnSave_form_09401948-BB2C-46DC-8CE2-0CB456D04334"]/div[3]
${CompletedPhase}                           xpath:((//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])/div/div[2]/div[7]/div/div[text()='Completed'])[2]
${StressorsResultsAddButton}                xpath://div[text()='Hygiene Monitoring Results']/../..//*[@id="btnAddNew"]/div
${StessorsProcessflowButton}                xpath://*[@id="btnProcessFlow_form_21AD3EE9-0E65-4B59-B57E-C4659A716650"]/span
${StressorsProcessflowAddPhase}             xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div[1]/div[1]//div[text()='Add phase']
${HazardNameDropdown}                       xpath://*[@id="control_A6EB183B-5185-449E-ACA5-1868A3659E3E"]/div[1]/a/span[2]/b[1]
${HazardNameSearch}                         xpath:(//input[@placeholder='Type to search'])[116]
${CSTDaimondButton}                         xpath:(//*[@id="63867cfd-ff26-4bfe-9ecd-37c02bb133f4"]/i)[2]
${StressorsPhysicalSelection}               xpath:(//*[@id="69bb4ade-bae8-4fdb-9252-4ef4f1e97585_anchor"])[2]
${SelicaSelection}                          xpath://*[@id="7fb495ee-380f-4e01-b64b-505ebd6cbd2f_anchor"]
${ResultTextbox1}                           xpath:(//*[@id="numberInput"])[9]
${StressorsSaveandContinueButton}           xpath://*[@id="control_7833BBEA-6D3B-46A7-AC51-811BD1EF624D"]/div[1]/div
${StressorsProcessflowEditPhase1}           xpath:(//div[@id='divProcess_21AD3EE9-0E65-4B59-B57E-C4659A716650'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']


#************************************************* FR6–Complete HygieneMonitoring ****************************************
${StatusDropDown}                           xpath://*[@id="control_1CE4E028-1CFA-49E0-BD4A-5180AAB2B25A"]/div[1]/a/span[2]/b[1]
${CompleteSelection}                        xpath://*[@id="58d37837-f1b0-40e6-bee5-b9da4e9a0204_anchor"]
${CompleteSaveButton}                       xpath://*[@id="btnSave_form_09401948-BB2C-46DC-8CE2-0CB456D04334"]/div[3]
${CompleteProcessflowEditPhase}             xpath:((//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])/div/div[2]/div[7]/div/div[text()='Completed'])[2]

