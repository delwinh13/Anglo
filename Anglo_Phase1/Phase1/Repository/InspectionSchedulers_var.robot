*** Variables ***
#************************************************* InspectionSchedulers ****************************************
${InspectionandobservationXpath}        xpath://*[@id="section_f77f755a-0d8f-4354-beea-01318fe81871"]/label
${InspectionSchedulerbuttonXpath}       xpath://*[@id="section_920c6eb9-4e26-4d81-8b5f-43c7f6c5efaa"]/label


#***********************************************FR1 capture Inspection Scheduler MS *******************************
${InspectionSchedulerSearchOptionsAddbttn}          xpath://*[@id="btnActAddNew"]/div
${InspectionSchedulerInspectionTypeID}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[12]/div[1]/a/span[1]
${InspectionSchedulerInspectionTypeSelectID}        xpath://*[@id="7a4ad174-f1e1-4b0f-bce0-a906510b8da8_anchor"]
${InspectionSchedulerBusinessUnitSelectIDDPD}       xpath://*[@id="control_BFE2139A-F39D-4F4E-BD6D-572B68546C05"]/div[1]/a/span[2]/b[1]
${InspectionSchedulerBusinessUnitSelectDPDANGLo}    xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${InspectionSchedulerBusinessUnitSelectDPDBULK}     xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${InspectionSchedulerBusinessUnitSelectDPDKumba}    xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${InspectionSchedulerBusinessUnitSelectDPDSunshine}    xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
${InspectionSchedulerFunctionallocationSelectDPD}      xpath://*[@id="control_0325B29B-8410-4B30-80B5-783BA7D28499"]/div[1]/a/span[2]/b[1]
${InspectionSchedulerFunctionallocationSelect}         xpath://*[@id="c90467d6-40cb-45e8-97ba-367fb080e969_anchor"]
${InspectionSchedulerCheckListTobeDoneDPD}             xpath://*[@id="control_7A04BA0A-2785-41C7-95C8-C83E902BF783"]/div[1]/a/span[2]/b[1]
${InspectionSchedulerCheckListTobeDoneSelect}          xpath://*[@id="122321f7-0136-4c7c-ae1b-4a4616849bfc_anchor"]/i[1]
${InspectionSchedulerNameofInspection}                 xpath://*[@id="control_F1F3CF3D-7BFE-44CA-A915-A6281CB0466C"]/div[1]/div/input
${InspectionSchedulerPurpose}                          xpath://*[@id="control_472E85CF-6E0B-4FB7-8C85-35C280D6F4EF"]/div[1]/div/textarea
${InspectionSchedulerProcessflow}                      xpath://*[@id="btnProcessFlow_form_10C56277-BF3D-4C75-BE8A-F6F46BB33480"]/span
${InspectionSchedulerSave&Continue}                    xpath://*[@id="control_641BC0F9-F876-42AD-9CDF-A6F420BC9BA6"]/div[1]/div
${InspectionSchedulerValidateAddphase}                xpath:(//div[@id='divProcess_10C56277-BF3D-4C75-BE8A-F6F46BB33480'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']

#************************************FR1AS********
${InspectionSchedulerInspectiontypeCM}     xpath://*[@id="52802b57-3138-4285-91b3-0baa2ccefe92_anchor"]
${InspectionSchedulerControls}             xpath://*[@id="control_A02469B0-042B-407A-A2CD-E0FE300EC1DF"]/div[1]/a/span[1]/ul/li

#*************************************FR2********************************************************************************************************************
${InspectionSchedulerrecurrenceAddBttn}          xpath://*[@id="btnAddNew"]/div
${InspectionSchedulerRecurrenceProcessflow}      xpath://*[@id="btnProcessFlow_form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB"]/span
${InspectionSchedulerRecurrenceAddphaseenabled}  xpath:(//div[@id='divProcess_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${InspectionSchedulerRecurrenceEditphaseenabled}    xpath:(//div[@id='divProcess_10C56277-BF3D-4C75-BE8A-F6F46BB33480'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${InspectionSchedulerRecurrenceFinalphaseenabled}    xpath:(//div[@id='divProcess_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Final phase']
${ISRecurrenceResponsiblepersonDPD}              xpath://*[@id="control_01B1845E-0081-4304-B0C6-239D8B2B144A"]/div[1]/a/span[2]/b[1]
${ISRecurrenceResponsiblepersonDPDSearch}        xpath:(//input[@placeholder='Type and enter to search'])[1]
${ISRecurrenceResponsiblepersonSelect}           xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${ISRecurrenceownerDPD}                          xpath://*[@id="control_23E99F78-777B-430C-91F5-F30AA1DA3F27"]/div[1]/a/span[2]/b[1]
${ISrecurrenceOwnerSearch}                       xpath:(//input[@placeholder='Type and enter to search'])[2]
${ISRecurrenceOwnerSelect}                       xpath:/html/body/div[1]/div[3]/div/div[2]/div[17]/ul[1]/ul/li[1]/a
${ISRecurrenceTeam}                              xpath://*[@id="control_8F14A7C7-310A-4836-8190-B9DCD966C7F2"]/div[1]/a/span[2]/b[1]
${ISRecurrenceInputSearch}                       xpath:(//input[@placeholder='Type and enter to search'])[3]
${ISRecurrenceTeamSelect}                        xpath:/html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li[1]/a/i[1]
${ISRecurreceStartDatefield}                    xpath://*[@id="control_0F04A24A-49B8-4229-84E1-3816AF826DD7"]/div[1]/span/span/input
${ISRecurrenceStartDateInputselect}             xpath://div[@id='control_0F04A24A-49B8-4229-84E1-3816AF826DD7']//input
${ISRecurreceEndDatefield}                      xpath://*[@id="control_DCC55A98-9EAA-452B-9823-783816390399"]/div[1]/span/span/span/span
${ISRecurrenceFrequenceyDPD}                     xpath://*[@id="control_C28E4341-3CEE-4ECA-9B8F-CE2F475B847B"]/div[1]/a/span[2]/b[1]
${ISRecurrenceFrequencySelectOnceOff}            xpath://*[@id="ca526be4-5878-46bf-9bb9-c999607fa9c0_anchor"]
${ISRecurrenceFrequencySelectDaily}              xpath://*[@id="94441f49-b43f-43a0-9fa1-a6a2e6467e82_anchor"]
${ISRecurrenceFrequencySelectDailyCheckBoxTick}   xpath://*[@id="control_368F387B-E638-4592-A429-7397542FE787"]/div[1]/div
${ISRecurrenceFrequencySelectWeekly}             xpath://*[@id="d549b433-e9eb-4aca-83bd-970ff37ee096_anchor"]
${ISRecurrenceFrequencySelectYearly}             xpath://*[@id="f5dc6dcc-4b75-4636-91ed-e147d53d280f_anchor"]
${ISRecurrenceSchedulerSaveBttn}                 xpath://*[@id="btnSave_form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB"]/div[3]
${InspectionSchedulerSearchFilterBUDPD}          xpath://*[@id="searchOptions"]/div[3]/table/tbody/tr[4]/td[5]/div[1]/a/span[2]/b[1]
${InspectionSchedulerBUSelect}                   xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c_anchor"]/i[1]
${InspectionSchedulerSearchBttn}                 xpath://*[@id="btnActApplyFilter"]/div
${InspectionSchedulerViewBttn}                   xpath://*[@id="grid_10C56277-BF3D-4C75-BE8A-F6F46BB33480_context"]/a[1]
${Validationerrorboxclosebttn}                   xpath://*[@id="opentip-2"]/div/div[2]/div[1]
${ISRecurrenceSchedulerlinkdoc}                  xpath://*[@id="control_8A69BC72-E7D9-4137-81C5-33067251AC97"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                          xpath://*[@id="divConfirm"]/div/div/div[1]
${ISRecurrenceSchedulerURLLINK}                  xpath://*[@id="urlValue"]
${ISRecurrenceSchedulerTittleDoc}               xpath://*[@id="urlTitle"]
${ISRecurrenceSchedulerDOCAddbttn}                xpath://*[@id="btnConfirmYes"]/div
${ISSaveSupportingDocumentsbttn}                  xpath://*[@id="control_0C59C6D9-F0FF-4D99-BDAD-706BC0E0650B"]/div[1]/div
${ISRecurrenceRecordvalidation}                 xpath://div[@id='grid']//table//tbody//tr[1]
${ISRecurrenceSchedulerFinalProcessflow}        xpath://*[@id="btnProcessFlow_form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB"]/span
${InspectionSchedulerActive/InactiveDPD}        xpath://*[@id="control_9FA45347-6BF9-4F66-8E94-C107EDDC834A"]/div[1]/a/span[2]/b[1]
${InspectionSchedulerInactiveSelect}             xpath://*[@id="396a9071-2420-4f72-a986-171091d0c3ba_anchor"]
${InspectionSchedulerReason}                     xpath://*[@id="control_19B29203-6A13-422E-BFE7-34FDE886A4E1"]/div[1]/div/textarea
${InspectionSchedulerSavebttn}                   xpath://*[@id="btnSave_form_10C56277-BF3D-4C75-BE8A-F6F46BB33480"]/div[3]


${ISRecurrenceEditInputResponsiblepersonselect}    xpath://*[@id="2b5f9582-d365-46fa-90ca-4d0c975d0dcc_anchor"]
${ISRecurrenceEditActive/InactiveDPD}              xpath://*[@id="control_085C9EBC-20A8-464F-A128-1D13C086EE6D"]/div[1]/a/span[2]/b[1]
${ISrecurrenceSchedulerInactiveSelect}             xpath://*[@id="396a9071-2420-4f72-a986-171091d0c3ba_anchor"]
${ISRecurrenceSchedulerReason}                     xpath://*[@id="control_B45F690F-D3D8-4A86-8039-59827628F7FD"]/div[1]/div/textarea


















