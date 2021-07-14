*** Variables ***
#************************Training and Suggestions Dashboard*******
${TrainingAndSuggestionslabelbutton}     xpath://*[@id="section_a483e664-bd1b-433f-ab2c-4505ba418202"]/label
${TrainingRegisterlabelbutton}           xpath://*[@id="section_c7b72cb5-599c-47ec-9769-16c030ebc66b"]/label

#*******************FR1-Schedule Training Register************
${TrainingRegisternewADDbttn}               xpath://*[@id="btnActAddNew"]/div
${TrainingRegisterProcessFlow}              xpath://*[@id="btnProcessFlow_form_F5BC9D93-E877-47B0-A1A9-BBAD9BDAD3C9"]/span
${TrainingRegisterAddPhase}                 xpath:(//div[@id='divProcess_F5BC9D93-E877-47B0-A1A9-BBAD9BDAD3C9'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${TrainingRegisterEditPhase}                xpath:(//div[@id='divProcess_F5BC9D93-E877-47B0-A1A9-BBAD9BDAD3C9'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${TrainingRegisterBusinessUnitDPD}          xpath://*[@id="control_F1420085-200D-48D2-B8F4-93789DCEE6FC"]/div[1]/a/span[2]/b[1]
${TrainingRegisterBusinessUnitDPDAnglo}     xpath://a[text()='Anglo American Group']/../i
${TrainingRegisterBusinessUnitDPDBulk}      xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${TrainingRegisterBusinessUnitDPDKumba}     xpath://a[text()='Kumba']/../i
${TrainingRegisterBusinessUnitDPDSishen}    xpath://a[text()='Sishen Mine']
${TrainingCourseDPD}                        xpath://*[@id="control_DB54978D-9BD7-42F5-8331-7F85081ED112"]/div[1]/a/span[2]/b[1]
${TrainingCourseSelect1}                    xpath:(//a[text()='Business Partner SOP']/../i[1])[2]    #preprod xpath://a[text()='Business Partner SOP']/../i
${TrainingCourseSelect2}                    xpath://a[text()='Overhead Crane Operators Licence'][1]
#QA2data
${TrainingCourseDescription}                xpath://*[@id="control_80D872D0-C9B0-4B49-8BDC-6BC3A8CD6D59"]/div[1]/input
${TrainingStartDate}                        xpath://*[@id="control_33A0DE11-E1A7-4D10-A02C-6B40693393A0"]/div[1]/span/span/input
${TrainingEndDate}                          xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[17]/div[1]/span/span/input
${TrainingInternal/ExternalDPD}             xpath://*[@id="control_1611D7E7-F6B0-4821-95AB-A33AD4434C82"]/div[1]/a/span[2]/b[1]
${TrainingSelectInternal}                   xpath://a[text()='Internal'][1]
${TrainingSelectExternal}                   xpath://a[text()='External'][1]
${TrainingCourseLang}                       xpath://*[@id="control_F3684154-D8F7-4B22-BE31-E809E0F32E40"]/div[1]/div/input
${TrainingInternalInstructorDPD}            xpath://*[@id="control_5ECEC760-7144-444E-BDE5-C993A0336E49"]/div[1]/a/span[2]/b[1]
${TrainingInternalInstructorSelect}         xpath://*[@id="control_5ECEC760-7144-444E-BDE5-C993A0336E49"]/div[1]/a/span[2]/b[1]
${TrainingInternalInstructorInputSearch}     xpath:(//input[@placeholder='Type and enter to search'])[1]
${TrainingInternalInstructorSelectDPD}       xpath://a[text()='AARON MARK KING (AARON)'][1]
${TrainingRegisterSaveBttn}                 xpath://*[@id="btnSave_form_F5BC9D93-E877-47B0-A1A9-BBAD9BDAD3C9"]/div[3]
${TrainingRegisterlinktoProject}            xpath://*[@id="control_C3871A37-A8FC-424F-805E-104209B0F8BB"]/div[1]/div
${TrainingRegisterProjectDPD}               xpath://*[@id="control_4F913E5A-C2B3-4D16-A932-85EB02E6ED6D"]/div[1]/a/span[2]/b[1]
${TrainingRegisterProjectSelect}            xpath://a[text()='auto test']                      #preprod xpath://a[text()='test2']
${TrainingRegisterTrainingProviderDPD}      xpath://*[@id="control_A96918CB-6C32-49B7-801E-379441B962B8"]/div[1]/a/span[2]/b[1]
${TrainingRegisterTrainerSelect}            xpath://a[text()='4 Elements Siyaba'][1]
${TrainingRegisterExternalInstructor}       xpath://*[@id="control_17A01C5A-0564-4380-BA4F-9CF1729FF813"]/div[1]/div/input
${TrainingRegisterTotalCost}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[23]/div[9]/div/div[7]/div[1]/div/inputr
${TrainingRegitserAttendeesAddbttn}         xpath://*[@id="btnAddNew"]/div
${TREmployementTypeDPD}                     xpath://*[@id="control_CA47EC65-F4ED-489F-A798-01F5D790601D"]/div[1]/a/span[2]/b[1]
${TREmployementTypeSelect}                  xpath://a[text()='Employee']/i[1]
${TRTraineeNameDPD}                         xpath://*[@id="control_99402854-1B25-437D-A52F-1E53D0E04ECC"]/div[1]/a/span[2]/b[1]
${TRTraineeNameInputSearch}                 xpath:(//input[@placeholder='Type and enter to search'])[3]
${TRTraineeNameSelect}                      xpath:(//a[text()='ABONGILE NONELWA GALADA (ABONGILE NONELWA)'])[2]
${TRTraineeAttendeesSavebttn}               xpath://*[@id="btnSave_form_BCB495DA-2EB4-4068-B70C-C0BC3E47BF2C"]/div[3]
${TRTraineescore}                           xpath://div[@id='control_99825D5E-923B-4240-8B09-6A5E6769BEC4']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${TRTrainingResultDPD}                      xpath://*[@id="control_55EC4597-80DA-44EA-A5A6-848915F97278"]/div[1]/a/span[2]/b[1]
${TRTrainingResultselect}                   xpath: //a[text()='Competent']

${AddStakeHolder}                           xpath://*[@id="control_40D81157-600F-472D-8F2C-997A091448B0"]/div[1]/div
${StakeHolderFirstName}                     xpath://*[@id="control_E186B9E5-4102-409D-8F57-7355938C09D9"]/div[1]/div/input
${StakeHolderLastName}                      xpath://*[@id="control_A9D1A3E8-C561-452A-A1F4-7BCB496B365F"]/div[1]/div/input
${StakeHolderKnownas}                       xpath://*[@id="control_BED0557B-BBC2-46C1-B571-BE60A267F0EA"]/div[1]/div/input
${StakeHolderFullName}                      xpath://*[@id="control_16CE7364-9A28-43D8-9EE9-D2609B77196D"]/div[1]/div/input
${StakeHolderTittleDPD}                      xpath://*[@id="control_28C03054-D663-431B-9F65-38BE54617019"]/div[1]/a/span[2]/b[1]
${StakeholderTittleSelect}                   xpath://a[text()='Mr']
${StakeHoldersCategoriesDPD}                  xpath://*[@id="control_F1357856-7A84-4716-9B1D-077C87CC8591"]/div[1]/a/span[2]/b[1]
${StakeHoldersExpandXpath}                   xpath://a[text()='Anglo employee / contractor']/../i
${StakeholderEmplyeeXpath}                   xpath:(//a[text()='Employee']/i[1])[1]
${StakeHoldersAppBusiUnitsDPD}               xpath://*[@id="control_4CFB2165-708B-4D55-9988-9CDCB5487291"]/div[1]/a/span[2]/b[1]
${StakeholdersAppBusExpandxpath}             xpath://a[text()='Anglo American Group']/../i
${StakeholdersAppBusExpand1xpath}            xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${StakeholdersAppBusExpand2xpath}             xpath://a[text()='Kumba']/../i
${StakeholderAppBusSelectXpath}              xpath://a[text()='Sishen Mine']/i[1]
${StakeholderRespOwnersDPD}                  xpath://*[@id="control_4BC61A3A-EC52-4BEA-807E-B70C75D5B421"]/div[1]/a/span[2]/b[1]
${StakeholdersResownersInputSearch}          xpath:(//input[@placeholder='Type and enter to search'])[1]
${StakeholderResOwnersSelect}                xpath:(//a[text()='Social Anglo'])/i[1]
${StakeholderAccOwnerDPD}                    xpath://*[@id="control_2A0EA9D1-04B4-4092-AD71-0CA6ED2D9C4B"]/div[1]/a/span[2]/b[1]
${StakeholderAccOwnerInputsearch}            xpath:(//input[@placeholder='Type and enter to search'])[2]
${StakeHolderAccOwnerSelect}                 xpath:(//a[text()='1 Administrator'])
${StakeholderIndividualProcessflow}           xpath://*[@id="btnProcessFlow_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD"]/span
${StakeholderIndAddphase}                   xpath:(//div[@id='divProcess_E686D312-3E2F-4E66-9EAD-AC71C09267DD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${StakeholderActiveXpath}                   xpath://div[@id='control_170F62D3-43C4-4548-A7C3-2E856B137AC8']/div/a/span/ul/li[text()='Active']
${StakeholdersSaveBttn}                     xpath://*[@id="btnSave_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD"]/div[3]
${TRTrainingResultNotyet}                   xpath://a[text()='Not yet Competent']
${TRCertificateTab}                         xpath://*[@id="tab_1CE09BE8-653C-4019-92F6-6B8C68813F94"]/div[1]
${Training TAB}                             xpath://*[@id="tab_CC35B6DF-AA83-40C9-A84F-355416261845"]/div[1]

${SupportingDocPopUpName}                    xpath://*[@id="divConfirm"]/div/div/div[1]/span
${certificatelink}                           xpath://*[@id="control_56EA1800-8DD4-4B1A-B515-D51094277735"]/div[1]/div[1]/div[2]/b[2]
${CertificateURLLINK}                        xpath://*[@id="urlValue"]
${certificatetittle}                         xpath://*[@id="urlTitle"]
${certificateAddpopup}                        xpath://*[@id="btnConfirmYes"]/div
${certificateSaveSupportingdoc}              xpath://*[@id="control_77E1B197-754D-4BE1-9DDB-D9F35A517267"]/div[1]/div

${ActionsTAB}                                 xpath://*[@id="tab_80E5F648-9160-4313-8D55-D546A603F0ED"]/div[1]
${ActionsAddBttn}                             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[24]/div[9]/div[2]/div[4]/div/div/div[1]/div[1]/div[2]/div[1]/div
${ActionsTaskTypeDPD}                         xpath://*[@id="control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9"]/div[1]/a/span[2]/b[1]
${ActionsTaskTypeSelect}                      xpath://a[text()='Ad Hoc']
${ActionsTypeofActionDPD}                      xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[2]/b[1]
${ActionsTypeofactionsSelect}                   xpath://a[text()='Corrective']
${ActionsDescription}                          xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${ActionsEntityDPD}                            xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[2]/b[1]
${ActionsEntityExpandAnglo}                    xpath:(//a[text()='Anglo American Group']/../i)[2]
${ActionsEntityExpandBulk}                     xpath:(//a[text()='Bulk Commodities & Other Minerals']/../i)[3]
${ActionsEntityExpandKumba}                    xpath:(//a[text()='Kumba']/../i)[2]
${ActionsEntityExpandSelect}                  xpath:(//a[text()='Sishen Mine'])[2]
${ActionsRespPersonDPD}                       xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[2]/b[1]
${ActionsResPersonSearchInput}                xpath:(//input[@placeholder='Type and enter to search'])[3]
${ActionsRespersonSelect}                     xpath:(//a[text()='Social Anglo'])
${ActionsAgencyDPD}                           xpath://*[@id="control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9"]/div[1]/a/span[2]/b[1]
${ActionsAgencySelect}                        xpath:(//a[text()='Aviation'])
${ActionsTaskpriorityDPD}                     xpath://*[@id="control_64D59225-1029-4ABE-9EB3-C41FAAD8859B"]/div[1]/a/span[2]/b[1]
${ActionsTaskPrioritySelect}                  xpath://a[text()='Low']
${ActionsDueDate}                             xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${ActionsSAPWorkCheckBox}                     xpath://*[@id="control_BAC7B132-4D29-423C-A18A-86408700B677"]/div[1]/div
${ActionsReplicateActionsCheck}               xpath://*[@id="control_9FB64F38-240A-4D57-8EBF-202D8124CDEE"]/div[1]/div
${ActionsMultipleUsersDPD}                     xpath://*[@id="control_B85CC3EF-7F60-4CE6-8F64-E978C40DD033"]/div[1]/a/span[2]/b[1]
${ActionsMultipleUSersinsrSelect}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[52]/ul[1]/ul/li[1]/a
${ActionsRecurringDPD}                         xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[2]/b[1]
${ActionsRecurringSelect}                      xpath://a[text()='No']
${ActionsSaveBttn}                             xpath://*[@id="btnSave_form_54656040-84AF-4090-97F9-48A3F01FC90B"]/div[3]

${Loadingvariablepermis}                              xpath:://div[@id='divWait']/div[text()='Loading permissions']



