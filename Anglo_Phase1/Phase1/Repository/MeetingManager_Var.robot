*** Variables ***
${MeetingManagerInterface}           xpath://*[@id="section_d2b0d016-8986-40be-ac01-1f3f95d443f5"]/label
${MeetingAddBttn}                    xpath://*[@id="btnActAddNew"]/div
${MeetingBusUnitDPD}                 xpath://*[@id="control_40A8E51A-41C3-4322-BE8A-7D7169561921"]/div[1]/a/span[2]/b[1]
${MeetingExpandAnglo}                xpath://a[text()='Anglo American Group']/../i
${MeetingExpandBulk}                 xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${MeetingExpandKumba}                xpath://a[text()='Kumba']/../i
${MeetingSelectSeshine}              xpath://a[text()='Sishen Mine']/i
${MeetingRiskDisciplineDPD}          xpath://*[@id="control_324D26A1-AD3F-44DC-A820-C32419644DAA"]/div[1]/a/span[2]/b[1]
${MeetingRiskDisciSelectAll}          xpath://*[@id="control_324D26A1-AD3F-44DC-A820-C32419644DAA"]/div[1]/a/span[2]/b[2]
${MeetingTypeDPD}                      xpath://*[@id="control_DC82AF65-E968-4ADA-9F02-681B357AE245"]/div[1]/a/span[2]/b[1]
${MeetingTypeSelect}                   xpath://a[text()='Autotest']
${Meetingvenue}                      xpath://*[@id="control_0FF8733B-F04F-40B8-A220-A7AE6BA994AA"]/div[1]/div/input
${MeetingFuncLocationDPD}               xpath://*[@id="control_6FC77F10-9E96-4211-9F48-4B0F8B1E276C"]/div[1]/a/span[2]/b[1]
${MeetingFuncLocationselect}          xpath://a[text()='MIS | Sishen']
${meetingDate}                        xpath://*[@id="control_BB1738F0-1789-49C6-8700-253D36E4C91A"]/div[1]/span/span/input
${MeetingStartDate}                   xpath://*[@id="control_73813E47-39A2-4553-B5F7-CE04012B4842"]/div[1]/span
${MeetingEndDate}                    xpath://*[@id="control_7429AEBC-2F6A-4898-BD41-8F952CA2266A"]/div[1]/span
${MeetingChairpersonDPD}                xpath://*[@id="control_12117E46-D276-4009-B849-3302F5B964CF"]/div[1]/a/span[2]/b[1]
${MeetingChairpersonName}            xpath://a[text()='AARON SWARTS (AARON)']
${MeetingChairpersonSelectsearch}          xpath:(//input[@placeholder='Type and enter to search'])[1]
${MeetingOrginalMinutesDPD}          xpath://*[@id="control_C37AAF2C-ECD2-44D2-B85E-48761865FE56"]/div[1]/a/span[2]/b[1]
${MeetingOriginalSelectSearch}       xpath:(//input[@placeholder='Type and enter to search'])[2]
${MeetingOrginalSelect}                    xpath://a[text()='Social Anglo']
${Meetinglinktoteams}                     xpath://*[@id="control_4BF6630E-04AC-4B4A-A4C3-2B8A5AC71544"]/div[1]/div/input
${MeetingManagerProcessflow}          xpath://*[@id="btnProcessFlow_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/span
${MeetingManagerAddPhase}             xpath:(//div[@id='divProcess_69F3DA1F-736E-429D-B71E-6CFA05928C5E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${MeetingManagerSaveButton}           xpath://*[@id="btnSave_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/div[3]

${MeetingSupportingDoctab}           xpath://*[@id="tab_1F5212D1-3BDF-43CB-9230-2B3422678C62"]/div[1]
${MSupportdocLink}                   xpath://*[@id="control_BAD782BD-C2CE-463D-A8A8-3A4DD2646011"]/div[1]/div[1]/div[2]/b[2]
${MSupportLinkPOPUP}                 xpath://*[@id="divConfirm"]/div/div/div[1]
${MSupportEnterURl}                  xpath://*[@id="urlValue"]
${MsupportEnterTittle}               xpath: //*[@id="urlTitle"]
${MSupportDOCADDBttn}                xpath://*[@id="btnConfirmYes"]/div
${MSupportSaveDOCBttn}               xpath://*[@id="control_16D68C99-71B1-4AEA-92E2-FF4A4F632C15"]/div[1]/div
${MeetingManagerEditphase}           xpath:(//div[@id='divProcess_69F3DA1F-736E-429D-B71E-6CFA05928C5E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${MeetingManagerTab}                 xpath://*[@id="tab_46095F4B-B15A-405B-B4D3-08C71CDA8A85"]/div[1]

${MeetingAttendeesTab}                                xpath://*[@id="tab_25C8A87A-1B83-4396-8C18-46900EA816C2"]/div[1]
${MeetingManagerattendAttendenceDPD1}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[9]/div/div[1]/a/span[2]
${MeetingManagerattendAttendenceDPD2}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[2]/td[9]/div/div[1]/a/span[2]/b[1]
${MeetingManagerttendAttendenceDPD3}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[3]/td[9]/div/div[1]/a/span[2]/b[1]
${MeetingManagerattendAttendenceDPD1present}          xpath:/html/body/div[38]/ul[1]/ul/li[1]/a
${MeetingManagerattendAttendenceDPD2present}          xpath:/html/body/div[41]/ul[1]/ul/li[1]/a
${MeetingManagerattendAttendenceDPD3present}          xpath:/html/body/div[44]/ul[1]/ul/li[3]/a
${MeetingComments}                                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[3]/td[10]/div/div[1]/div/textarea
${MeetingManagerAttendeeName}                         xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[4]/td[5]/div/div[1]/div/input
${MeetingManagerAttendeesEmailInput1}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[3]/td[6]/div/div[1]/div/input
${MeetingManagerAttendeesEmailInput2}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[4]/td[6]/div/div[1]/div/input
${MeetingattendeeAddbttn}                             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]/div

${Loadingvariablepermis}                              xpath:://div[@id='divWait']/div[text()='Loading permissions']

${MeetingAgendaAddbttn}                         xpath://*[@id="btnAddNew"]/div
${MeetingAgendaProcessFlow}                      xpath://*[@id="btnProcessFlow_form_878B03FA-3A56-4B31-A883-725BE022C779"]/span
${MeetingAgendaAddphase}                        xpath:(//div[@id='divProcess_878B03FA-3A56-4B31-A883-725BE022C779'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${MeetingAgendaEditPhase}                        xpath:(//div[@id='divProcess_878B03FA-3A56-4B31-A883-725BE022C779'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${MeetingAgendaOrder}                          xpath:/html/body/div[1]/div[3]/div/div[2]/div[14]/div[4]/div[5]/div[1]/div/input
${MeetingAgendaItem}                           xpath://*[@id="control_0B7E16D4-79A6-4BB0-BD37-BF927262FA25"]/div[1]/div/textarea
${MeetingAgendaSaveBttn}                       xpath://*[@id="btnSave_form_878B03FA-3A56-4B31-A883-725BE022C779"]/div[3]
${MeetingAgendaselectrecord}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[5]/div[9]/div[2]/div[1]/div/div[27]/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr[1]
${MeetingManagerHeader}                      xpath:/html/body/div[1]/div[3]/div/div[2]/div[14]/div[1]/div[1]/div[1]


${MeetingMinutesAddbttn}                     xpath:(//*[@id="btnAddNew"]/div)[2]
${MeetingMinutesProcessflow}                 xpath://*[@id="btnProcessFlow_form_71696786-108E-4F57-80C5-CFE00F878D76"]/span
${MeetingMinutesAddphase}                    xpath:(//div[@id='divProcess_71696786-108E-4F57-80C5-CFE00F878D76'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${MinutesTextbox}                             xpath://*[@id="control_24F41875-28B0-4F80-B493-80B114AF3E76"]/div[1]/div/textarea
${MinutesSupportdoclink}                     xpath://*[@id="control_CA5A15D1-A390-4DC1-ADD8-D68AEC81AD57"]/div[1]/div[1]/div[2]/b[2]
${MinutesSupportPopUp}                       xpath://*[@id="divConfirm"]/div/div/div[1]
${MinutesSupportURLLINKinput}                xpath://*[@id="urlValue"]
${MinutesTittleInput}                        xpath://*[@id="urlTitle"]
${MinutespopupAddbutton}                      xpath://*[@id="btnConfirmYes"]/div
${MinutesSAVE&CONTINUE}                      xpath://*[@id="control_EF5BF551-1EB9-413C-86F8-940CD23B789F"]/div[1]/div


${MeetingMinuteActionsAddBttn}                 xpath:(//*[@id="btnAddNew"])[2]
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
${ActionsResPersonSearchInput}                xpath:(//input[@placeholder='Type and enter to search'])[5]
${ActionsRespersonSelect}                     xpath:(//a[text()='1 Administrator'])
${ActionsAgencyDPD}                           xpath://*[@id="control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9"]/div[1]/a/span[2]/b[1]
${ActionsAgencySelect}                        xpath:(//a[text()='Aviation'])
${ActionsTaskpriorityDPD}                     xpath://*[@id="control_64D59225-1029-4ABE-9EB3-C41FAAD8859B"]/div[1]/a/span[2]/b[1]
${ActionsTaskPrioritySelect}                  xpath://a[text()='Low']
${ActionsDueDate}                             xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${ActionsSAPWorkCheckBox}                     xpath://*[@id="control_BAC7B132-4D29-423C-A18A-86408700B677"]/div[1]/div
${ActionsReplicateActionsCheck}               xpath://*[@id="control_9FB64F38-240A-4D57-8EBF-202D8124CDEE"]/div[1]/div
${ActionsMultipleUsersDPD}                     xpath://*[@id="control_B85CC3EF-7F60-4CE6-8F64-E978C40DD033"]/div[1]/a/span[2]/b[1]
${ActionsMultipleUSersSelect}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[52]/ul[1]/ul/li[1]/a
${ActionsRecurringDPD}                         xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[2]/b[1]
${ActionsRecurringSelect}                      xpath://a[text()='No']
${ActionsSaveBttn}                             xpath://*[@id="btnSave_form_4D0B6F36-4EDB-431C-A4A6-86361AF5F222"]/div[3]

#*****view previous meeting minutes********
${NavBackmeetingManager}                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/div[1]/div[1]/div[1]
${previousMeetingMinutesTab}                xpath://*[@id="tab_49512EF1-A22C-48FC-AB8D-3F91A7E2A37A"]/div[1]
${ExpandPreviousMeeting}                    xpath://*[@id="control_4D505D7D-9DCB-444D-855A-F77EA95FEAC7"]/div[9]/div[1]/span
${SelectPreviousRecord}                     xpath:(//div[@id='grid']//table//tbody//tr)[4]      #preprod xpath:(//div[@id='grid']//table//tbody//tr)[3]
${MeetingMinutesEditphase}                  xpath:(//div[@id='divProcess_71696786-108E-4F57-80C5-CFE00F878D76'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${meetingminutesprocessflowbttn}            xpath://*[@id="btnProcessFlow_form_71696786-108E-4F57-80C5-CFE00F878D76"]/span
${meetingminutecrossbutton}               xpath://*[@id="form_71696786-108E-4F57-80C5-CFE00F878D76"]/div[1]/i[2]
${meetingAgendacrossbutton}               xpath://*[@id="form_878B03FA-3A56-4B31-A883-725BE022C779"]/div[1]/i[2]
${MeetingMinuteActionsCross}              xpath://*[@id="form_4D0B6F36-4EDB-431C-A4A6-86361AF5F222"]/div[1]/i[2]


${AddActionfeedback}                           xpath://*[@id="control_523DE899-F173-4121-9AFC-0E792D0F9F34"]/div[1]/div
${ActionProgressDPD}                           xpath://*[@id="control_015E8BFA-9ABE-4338-8FA8-3BA86AAF5D77"]/div[1]/a/span[2]/b[1]
${ActionProgressSelect}                        xpath://a[text()='100%']
${ActionFeedbackText}                          xpath://*[@id="control_B9A4BEF3-B4D1-491D-881A-6021DDE86169"]/div[1]/div/textarea
${ActionfeedbackSendDPD}                       xpath://*[@id="control_4854CDB6-7DB2-48B6-B92F-7F2E008CD5E2"]/div[1]/a/span[2]/b[1]
${ActionFeedbackSendInputsearch}               xpath:(//input[@placeholder='Type and enter to search'])[12]
${Actionfeedbacksendto}                        xpath://a[text()='Aaron Barnard']/i[1]
${Actionfeedbacksave&close}                    xpath://*[@id="control_E78520D7-17AE-4AAB-946E-4558049D538A"]/div[1]/div
${Actionpersonresforverification}             xpath://a[text()='Sabelo Madondo']     #preprod xpath://a[text()='Abel Pienaar']
${ActionpersonresforverificationInput}         xpath:(//input[@placeholder='Type and enter to search'])[8]
${ActionpersonresforverificationDPD}           xpath://*[@id="control_9837FA24-F3EE-4463-8BD4-8F1D6038885F"]/div[1]/a/span[2]/b[1]

#FR7**************************

${ExpandOpenActionsFromPreviousMeeting}      xpath://*[@id="control_A3EF4F39-8B9B-4C63-A498-59209FF4BDD3"]/div[9]/div[1]/span
${SelectActionsRecord}                       xpath:(//div[@id='grid']//table//tbody//tr)[5]     #preprod xpath:(//div[@id='grid']//table//tbody//tr)[4]
${MeetingMinuteActionsProcessflow}           xpath://*[@id="btnProcessFlow_form_4D0B6F36-4EDB-431C-A4A6-86361AF5F222"]/span

#****FR8***

${MeetingStatusDPD}                       xpath://*[@id="control_B6535C74-A859-4687-96C2-3F78BDF99127"]/div[1]/a/span[2]/b[1]
${meetingCompleted}                       xpath:(//a[text()='Meeting completed'])
${meetingSignoffsavebttn}                 xpath://*[@id="btnSave_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/div[3]
${Signoffminutesdpd}                      xpath://*[@id="control_F1651644-D1AF-42E1-94E2-2C1B8ADF5004"]/div[1]/a/span[2]/b[1]
${SignoffMinutesYes}                      xpath:(//a[text()='Yes'])[2]

${SignoffminutesTab}                        xpath://*[@id="tab_F59EC1D8-9A16-4B80-A381-E62C74C550A1"]/div[1]
${meetingSignedoffByDPD}                       xpath://*[@id="control_C11AF5D5-63C1-4EFB-89B1-5FA9BA820B08"]/div[1]/a/span[2]/b[1]
${meetingsignedoffsearch}                    xpath:(//input[@placeholder='Type and enter to search'])[16]
${meetingsignedoffbySelect}                       xpath:(//a[text()='AARON MARK KING (AARON)'])
${SignoffcapturedbyDPD}                    xpath://*[@id="control_F87C8D0D-B105-4813-AD4E-0FE2D06ADE3F"]/div[1]/a/span[2]/b[1]
${Signoffcapturedsearch}                  xpath:(//input[@placeholder='Type and enter to search'])[17]
${Signoffcapturedbyselect}                      xpath:(//a[text()='Aaron Curtis'])[2]
${SignoffSavebttn}                        xpath://*[@id="btnSave_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/div[3]
${SignoffCompleted}                       xpath:(//div[@id='divProcess_69F3DA1F-736E-429D-B71E-6CFA05928C5E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Completed']
${MeetingmangerSignoffprocessbttn}        xpath://*[@id="btnProcessFlow_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/span

#************************FR9
${MeetingManagerReportBttn}               xpath://*[@id="btnReports_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/span
${Meetingmanagerreport}                   xpath:(//*[@id="report_35B86813-3703-45B8-996B-21501EAC6DF0"]/span[1])[2]
${ReportMeetingPOPUPconfirmation}          xpath://*[@id="divConfirm"]/div/div/div[1]
${ReportPoPUPContinuebttn}                 xpath://*[@id="btnConfirmYes"]/div


#******FR10
${MeetingTypeSearchDPD}                xpath://*[@id="searchOptions"]/div[3]/table/tbody/tr[3]/td[5]/div[1]/a/span[2]/b[1]
${meetingTypeInputsearch}              xpath://*[@id="select3_6f02e88f"]/div[1]/input
${MeetingTypeSelect}                   xpath://a[text()='Autotest']/i[1]
${Searchbttn}                           xpath://*[@id="btnActApplyFilter"]/div
${ReportBttnSearchpage}                xpath://*[@id="btnReports"]/span
${Reportnormal}                        xpath:(//*[@id="report_08310a22-d724-4f04-a650-3b0f63cdc534"]/span[3])[2]
${ReportFull}                          xpath:(//*[@id="report_08310a22-d724-4f04-a650-3b0f63cdc534"]/span[2])[2]


#*****FR11

${SearchRecordSelect}                        xpath:(//*[@id="grid"]/div[3]/table/tbody/tr/td[5]/div)[1]
${SearchRecordEDITProcessflowbttn}           xpath://*[@id="btnProcessFlow_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/span
${SearchRecordEditPhase}                     xpath:(//div[@id='divProcess_69F3DA1F-736E-429D-B71E-6CFA05928C5E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SearchRecordEditMeetingVenue}              xpath://*[@id="control_0FF8733B-F04F-40B8-A220-A7AE6BA994AA"]/div[1]/div/input
${SearchRecordSave}                          xpath://*[@id="btnSave_form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/div[3]
${SearchMeetingManagercrossbttn}             xpath://*[@id="form_69F3DA1F-736E-429D-B71E-6CFA05928C5E"]/div[1]/i[2]