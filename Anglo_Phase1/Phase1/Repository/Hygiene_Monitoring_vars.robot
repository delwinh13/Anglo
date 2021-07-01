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
${SouthAfricaDaimondButton}                 xpath://*[@id="65367928-698c-4d94-811c-bf797af721b1"]/i
${GautengDaimondButton}                     xpath://*[@id="2fe3fc83-44d6-4707-ba20-59273e23a3b2"]/i
${CenturionDaimondButton}                   xpath://*[@id="6f30a4df-bd33-4390-9d27-a8c6e426d351"]/i
${KIOHeadOfficeSelection}                   xpath://*[@id="7afdae2b-cc07-40d8-a166-1680be5d1650_anchor"]
${ResponsiblePersonDropdown}                xpath://*[@id="control_EE9AC7E0-503B-4752-A066-6AAE62B68F48"]/div[1]/a/span[2]/b[1]
${ResponsiblePersonSearchbox}               xpath:(//input[@placeholder='Type and enter to search'])[1]
${AdministratorSelection}                   xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${MonitoredHEGSEGDropdown}                  xpath://*[@id="control_AED95D8D-8BF8-4398-A3B1-A37B9CDE17E7"]/div[1]/a/span[2]/b[1]
${MHEGSEGSelection}                         xpath://*[@id="7009043f-cd45-43b3-9fc5-9dcd3a871fdc_anchor"]
${TimeOfMonitoringDropdown}                 xpath://*[@id="control_A819E8D3-22B7-40D1-B3F3-8A66C6819E94"]/div[1]/a/span[2]/b[1]
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
${ProcessflowEditPhase}                     xpath:(//div[@id='divProcess_09401948-BB2C-46DC-8CE2-0CB456D04334'])[2]/div/div[2]/div[3]/div[1]//div[text()='Scheduled']

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