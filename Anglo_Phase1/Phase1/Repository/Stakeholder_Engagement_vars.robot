*** Variables ***
#************************************************* Stakeholder Engagements ****************************************
${SocialSustainabilityXpath}            xpath://label[.='Social Sustainability']
${EngagementManagementXpath}            xpath://label[.='Engagement Management']
${EngagementManagementXpath2}            xpath://label[.='Engagement Management2']
${EngagementManagementXpath3}            xpath://label[.='Engagement Management3']

${EngagementManagementAddBtnID}         id:btnActAddNew
${EngagementManagementProcessId}        id:btnProcessFlow_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC
${EngagementManagementTitleXpath}       xpath://div[@id='control_B0DFFFFF-66B3-4CB4-B4E5-23C8E0010864']/div[1]/div/input
${EngagementManagementDateXpath}        xpath://div[@id='control_C6060E39-99D5-417B-90CF-09077C971E5D']/div[1]/span/span/input
${EngagementManagementBUDDID}           id:control_16C9A7FC-3091-4E0D-9B1A-709C8F0AC8B5
${EngagementManagmentBUExpandXpath}     xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${EngagementManagmentBUExpand2Xpath}    xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
#kumba
${EngagementManagmentBUExpand3Xpath}    xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
#sishen mine
${EngagementManagmentBUSelectID}        id:25742496-c98d-431e-96c8-18619861422e_anchor
${EngagementManagmentLinkProjXpath}     xpath://div[@id='control_29AB36D5-E83F-43EF-AFF5-F7353A5353E9']/div[1]/div
${EngagementManagmentFLDDID}            id:control_B3768415-FC73-4B14-BA94-3D4E0299E15E
${EngagementManagmentFLOptionID}        id:c90467d6-40cb-45e8-97ba-367fb080e969_anchor
${EngagementManagmentProjectDDID}       id:control_963F5190-1317-42C1-AD7A-B277FCBA7101
${EngagementManagmentProjSrchXpath}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[12]/div[1]/input
${EngagementManagementProjSelectAll}    xpath://*[@id="control_963F5190-1317-42C1-AD7A-B277FCBA7101"]/div[1]/a/span[2]/b[2]
${EngagementManagmentProjOptXpath}      xpath://*[@id="8192900b-65f7-47b9-9351-05302c281249_anchor"]/i[1]
${EngagementManagementDetailsID}        id:tab_134C2E6D-2571-4418-97AA-791E0BDB874A

${EngagementManagmentFuncDDID}          id:control_0FF334FE-CE57-49BF-BA69-9BE5DA3447CB
${EngagementManagmentFuncOptXpath}      xpath://*[@id="2d1d20e4-fd80-4437-9681-fe055fb28cf2_anchor"]/i[1]
${EngagementManagmentMethodDDID}        id:control_4A471537-8229-4E54-A86C-DCEB99BA24D0
${EngagementManagmentMethodOptID}       id:7956269d-1421-4acf-8539-c5ecaee58212_anchor
${EngagementManagmentConfChkXpath}      xpath://*[@id="control_C108E1A8-9B60-4E8B-B85A-08E47E5C6A7D"]/div[1]/div
${EngagementManagmentRespPersonDDID}    id:control_213251A2-010A-4BBF-A65A-A1FC8C6F7033
${EngagementManagmentRespSrchXpath}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/div[1]/input
${EngagementManagmentRespRsltID}        id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${EngagementManagmentCntInqDDID}        id:control_2D1B5E8D-BBF2-448A-9765-F03FA8C31019
${EngagementManagmentCntInqOptXpath}    xpath://*[@id="814b07fb-9411-4556-838f-f8d3784f3e96_anchor"]/i[1]
${EngagementManagmentDescXpath}         xpath://*[@id="control_1C19AE65-23A1-4ADC-A631-D9273FC0CE9F"]/div[1]/div/textarea
${EngagementManagmentLocDDID}           id:control_F703A144-D0B6-4D4D-B5E2-D4E186427A43
${EngagementManagmentLocOptID}          id:9a25275e-ad7d-4244-9fa9-ff46db195d9e_anchor
${EngagementManagmentSaveID}            id:btnSave_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC
${EngagementManagementProcessPlanned}   xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned']
${EngagementManagementProcessAddPhase}  xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${EngagementManagementProcessPlanCo}    xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned (Confidential)']
${EngagementManagementEngStatValidate}  xpath://*[@id="29df86fc-4ad6-44ab-8627-be03677fccd5"]
${EngagementManagementLongText}         xpath://*[@id="control_DAA4D814-C0FD-417C-A22F-79CADF81F81A"]
${EngagementManagementLatText}          xpath://*[@id="control_A5D5CA3A-9002-4FF7-A8B2-EC09C0B951D0"]/div[1]/div/input
${EngagementManagementMap}              xpath://*[@id="control_0C7F6C43-9E47-423C-812A-6313835A1B40"]/div[9]/div[1]/i
${EngagementManagementAttendeesTab}     xpath://*[@id="tab_8337AF92-3D94-432B-A159-4D6A85AE95A2"]
${EngagementManagementActionTab}        xpath://*[@id="tab_D428CA3F-E89E-4E73-B706-7F5925B543EF"]
${EngagementManagementEngMap}           css:#graphicsLayer2_layer > path
#************************************************* Supporting Documents ************************************************
${SupportingDocXpath}                   xpath://*[@id="tab_4AAEFEC7-A1F0-4BA8-80E1-59A6E945DE0C"]/div[1]
${SupportingDocLinkDoc}                 xpath://*[@id="control_304C0965-8A0D-468D-9CF9-8AE17140CAC6"]/div[1]/div[1]/div[2]/b[2]
${SupportingDocPopName}                 xpath://*[@id="divConfirm"]/div/div/div[1]
${SupportingDocAddLink}                 xpath://*[@id="urlValue"]
${SupportingDocAddTitle}                xpath://*[@id="urlTitle"]
${SupportingDocAddBtn}                  xpath://*[@id="btnConfirmYes"]
${SupportingDocValidate}                xpath://*[@id="doc_url"]
${SupportingDocSave}                    id:control_F33B6F6E-13E8-4ABC-8364-61C5086C73A3

#************************************************* Link Grievance Scenario 2********************************************
${EngagementManagementGrievanceDrp}     xpath://*[@id="control_ADF3F830-49E4-47FE-AB04-75C0890DA968"]/div[1]/a/span[2]/b[1]
${EngagementManagementGrievanceInput}   xpath:/html/body/div[1]/div[3]/div/div[2]/div[19]/div[1]/input
${EngagementManagementGrievanceCheck}   xpath://*[@id="1115a40f-e822-48e7-886b-d80e63027e52_anchor"]/i[1]
${EngagementManagementGrievanceVal}     xpath://*[@id="1115a40f-e822-48e7-886b-d80e63027e52"]

#************************************************* Link Commitments Scenario 3******************************************
${EngagementManagementComitDrp}         xpath://*[@id="control_1E01C557-92EF-43AB-956D-3F00669EB13F"]/div[1]/a/span[2]/b[1]
${EngagementManagementComitInput}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[20]/div[1]/input
${EngagementManagementComitCheck}       xpath://*[@id="30912eb4-2016-4daf-b0b4-9112768e529c_anchor"]/i[1]
${EngagementManagementComitvalidate}    xpath://*[@id="30912eb4-2016-4daf-b0b4-9112768e529c"]

#************************************************* Link Related Permits Scenario 4**************************************
${EngagementManagementPermitDrp}        xpath://*[@id="control_F5863D2C-E246-40FA-8715-A0BFC670CEC6"]/div[1]/a/span[2]/b[1]
${EngagementManagementPermitInput}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[21]/div[1]/input
${EngagementManagementPermitCheck}      xpath://*[@id="db0f430a-f4ef-4db5-b4dc-a28e31a07e2a_anchor"]/i[1]
${EngagementManagementPermitValidate}   xpath://*[@id="99e13089-b7eb-40e6-8f91-c42ad5360140"]

#************************************************* Optional Scenario 5 6 7 *********************************************

${EngagementManagementBUDrpSelect}      xpath://*[@id="25742496-c98d-431e-96c8-18619861422e"]/i
${EngagementManagementBUSelectID2}      id:54f00015-2059-48c0-9d06-c9dd52d482e9_anchor

#************************************************* Add New Grivenances *************************************************

${EngagementManagementGrivBtn}          id:control_02AC37F4-CC1A-4BEE-B080-83F708A3A4BB
${EngagementGrievanceProcessID}         id:btnProcessFlow_form_B6196CB4-4610-463D-9D54-7B18E614025F
${EngagementGrievanceEventDrp}          xpath://*[@id="control_9C6B5F1B-AF54-4B1D-BF12-0C076D64A87F"]/div[1]/a/span[1]/ul/li
${EngagementGrievanceEventSelect}       xpath://*[@id="69de8a86-cdbb-4ed8-8a04-9c088c7460cd_anchor"]
${EngagementGrievanceTitleInput}        xpath://*[@id="control_E9C32F4B-AB3C-4ABB-B8E6-E5D5E34F139B"]/div[1]/div/input
${EngagementGrievanceEventDesc}         xpath://*[@id="control_E887FEB2-18C9-444E-A023-B05D5F08BC28"]/div[1]/div/textarea
${EngagementGrievanceBUSelectXpath}     xpath://*[@id="control_8FC01D3C-93D7-4570-BAEA-765533CDCB75"]/div[1]/a/span[1]/ul/li
${EnaggementGrievanceFLXpath}           xpath://*[@id="control_C492928D-54AF-49E5-B173-A427BC1A2BE5"]/div[1]/a/span[1]/ul/li
${EngagementGrievanceFLOptXpath}        xpath://*[@id="select3_8c5f2bfd"]/div[1]/input
${EngagementGrievenceFLSelectXpath}     xpath://*[@id="481d6c2d-ad8c-414b-9f73-21602bbc6326_anchor"]
${EngagementGrievanceDateXpath}         xpath://*[@id="control_A68454D1-B0FB-4EB7-B861-2AF37ACAC8DF"]/div[1]/span/span/input
${EngagementGrievanceTimeEventXpath}    xpath://*[@id="control_2CE711B1-4A48-4381-916B-17F5FD255123"]/div[1]/input
${EngagementGrievanceActionInput}       xpath://*[@id="control_58E573F1-1421-4B47-B9F9-68668A0AA36A"]/div[1]/div/textarea

${EngagementGrievanceRespSupXpath}      xpath://*[@id="control_4DC8AFD7-836E-4681-9FB8-99FAF564054C"]/div[1]/a/span[1]/ul/li
${EngagementGrievanceRespSupSearch}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[66]/div[1]/input
${EngagementGrievanceRespSupSelectID}   xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]

${EngagementGrievanceValidatorXpath}    xpath://*[@id="control_783CFD1D-ACE7-4A2B-B0CE-7B6883272992"]/div[1]/a/span[1]/ul/li
${EngagementGrievanceValidatorSearch}   xpath:/html/body/div[1]/div[3]/div/div[2]/div[67]/div[1]/input
${EngagementGrievanceValidatorSelect}   xpath://*[@id="1bf1b5b4-9437-468a-942e-09769b836557_anchor"]

${EngagementGrievanceSaveBtnID}         id:btnSave_form_B6196CB4-4610-463D-9D54-7B18E614025F
${EngagementGrievanceAdd}               xpath://*[@id="46a4b2ed-ce9a-4496-8b2e-74b1dab272de_anchor"]/i[1]

#************************************************* Add New Commitments *************************************************
${EngagementManagementComitBtn}         id:control_36AC4B8C-31DA-4EFA-86FD-E42B890D6EDF
${EngagementCommitProcessID}            id:btnProcessFlow_form_DCB70D8A-B79E-4968-9607-29115B4FCDC2
${EngagementCommitBUSelectXpath}        xpath://*[@id="control_21A07758-2945-467A-92CF-F571AE83FEFA"]/div[1]/a/span[1]/ul/li
${EngagememtCommitFLXpath}              xpath://*[@id="control_D3AF1650-B305-44CF-8463-1B003793EB72"]/div[1]/a/span[2]/b[1]
${EngagementCommitFLSearchXpath}        xpath://*[@id="select3_bd2e7ae9"]/div[1]/input
${EngagementCommitRegisterTitle}        xpath://*[@id="control_804F813A-B603-4ED8-A416-3571D2146714"]/div[1]/div/input
${EngagementCommitRegisterOwner}        xpath://*[@id="control_189B6C8F-E360-4339-A9B7-BF2C517A69E0"]/div[1]/a/span[2]/b[1]
${EngagementCommitRegisterSearch}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[7]/div[1]/input
${EngagementCommitSelectXpath}          xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${EngagementCommitSaveBtn}              xpath://*[@id="btnSave_form_DCB70D8A-B79E-4968-9607-29115B4FCDC2"]/div[3]
${EngagementCommitAdd}                  xpath://*[@id="6e4d968b-b9f2-48ca-bae9-b21ccc5dd4ca_anchor"]/i[1]

#************************************************* Add New Permits *****************************************************
${EngagementManagementPermitBtn}        id:control_1878368A-95AB-4E0D-8B19-C3737AB8E914
${EngagementPermitProcessID}            id:btnProcessFlow_form_06A92B5E-4170-473C-B9F9-CFF06AB14C74
${EngagementPermitBUXpath}              xpath://*[@id="control_5614586C-E586-4742-9423-A40BFA7F4E1B"]/div[1]/a/span[1]/ul/li
${EngagementPermitCommodityXpath}       xpath://*[@id="control_6DAED832-BAB3-44D2-9B27-AFFBCD771B7F"]/div[1]/a/span[1]/ul/li
${EngagementPermitCommoditySearch}      xpath://*[@id="select3_0175bf43"]/div[1]/input
${EngagementPermitCommoditySelect}      xpath://*[@id="0092478f-1ccd-4b21-8640-5d6c101ea0de_anchor"]
${EngagementPermitSaveAndContinue}       xpath://*[@id="control_EF0AC452-7E71-4717-8A9F-B6D188002C5E"]/div[1]/div
${EngagementPermitTab}                  xpath://*[@id="tab_88A4BD57-8971-422F-B87C-25CF0ECDF31A"]
${EngagementPermitAddNew}               id:btnAddNew
${EngagementPermitNew}                  xpath://*[@id="control_26672207-9205-46BF-A24C-61A01CF2ED75"]/div[1]/a/span[2]/b[1]
${EngagementPermitProcessID2}            id:btnProcessFlow_form_29DAE2B0-C71B-4599-8899-9A431EA65963
${EngagementPermitNewSelect}            xpath://*[@id="22bb5704-99fd-430c-853e-f46a23405a87_anchor"]
${EngagementPermitTitle}                xpath://*[@id="control_8322E2A1-35A5-402D-BAAA-81E7C6E3A027"]/div[1]/div/input
${EngagementPermitDescription}          xpath://*[@id="control_CB867600-1E37-48F6-BF8D-141F88D60649"]/div[1]/div/textarea
${EngagementPermitNatureXpath}          xpath://*[@id="control_2488F522-73AF-462B-93AF-FA1412616C62"]/div[1]/a/span[2]
${EngagementPermitNatureSelect}         xpath://*[@id="8ba19d01-14d3-4c74-b88a-10c2046e3b52_anchor"]

${EngagementPermitOwnerDeptXpath}       xpath://*[@id="control_8DF0FB3A-98D6-4495-979A-78D3C54FF1B6"]/div[1]/a/span[1]/ul/li
${EngagementPermitOwnerDeptXpath2}      xpath:(//a[text()='Anglo American Group']/../i)[2]
${EngagementPermitOwnerDeptXpath3}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/ul/li[3]/i
${EngagementPermitOwnerDeptXpath4}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/ul/li[3]/ul/li[6]/i
${EngagementPermitOwnerDeptXpath5}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/ul/li[3]/ul/li[6]/ul/li[6]/i
${EngagementPermitOwnerDeptXpath6}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/ul/li[3]/ul/li[6]/ul/li[6]/ul/li[1]/a

${EngagementPermitOwnerXpath}           xpath://*[@id="control_2A8DF6D3-B366-4781-A532-2D0C61CD617B"]/div[1]/a/span[1]/ul/li
${EngagementPermitOwnerSearch}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[30]/div[1]/input
${EngagementPermitOwnerSelect}          xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${EngagementPermitAcctPersonXpath}      xpath://*[@id="control_4FAD5338-F20C-47C4-9004-53FA19040D27"]/div[1]/a/span[1]/ul/li
${EngagementPermitAcctPersonSearch}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[31]/div[1]/input
${EngagementPermitAcctPersonSelect}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[31]/ul[1]/ul/li[8]/a

${EngagementPermitLegalStakeXpath}      xpath://*[@id="control_FB659290-C2E9-43CA-B1A8-3F7FCD14EF85"]/div[1]/a/span[1]/ul/li
${EngagementPermitLegatStakeSelect}     xpath://*[@id="e8ee6560-f0f3-4679-853d-97f0b38c7a6b_anchor"]
${EngagementPermitGrantingXpath}        xpath://*[@id="control_0FA5100D-5A4F-479F-91A5-322A8AAD456D"]/div[1]/a/span[2]
${EngagementPermitGrantingSearch}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[38]/div[1]/input
${EngagementPermitGrantingSelect}       xpath://*[@id="506816a1-56ee-4783-889b-f3bd471dffe3_anchor"]
${EngagementPermitInsAuthXpath}         xpath://*[@id="control_6B142D02-F252-4AF1-96D9-924B1B7D950B"]/div[1]/a/span[1]/ul/li
${EngagementPermitInsAuthSearch}        xpath:/html/body/div[1]/div[3]/div/div[2]/div[39]/div[1]/input
${EngagementPermitInsAuthSelect}        xpath:/html/body/div[1]/div[3]/div/div[2]/div[39]/ul[1]/ul/li[8]/a

${EngagementPermitSaveID}               id:btnSave_form_29DAE2B0-C71B-4599-8899-9A431EA65963


#************************************************* FR-2 Capture Attendees **********************************************
${EngagementManagementAttendTab}        xpath://*[@id="tab_8337AF92-3D94-432B-A159-4D6A85AE95A2"]
${EngagementTeamAttendeeTab}            xpath://*[@id="tab_BDB94854-EBE4-462B-A733-C438227CD6CD"]
${EngagementAddNewTeam}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[1]/div/div/div[1]/div[1]/div[2]/div[1]/div

${EngagementTeamAttendAdd}              id:control_B5CF2925-9A5E-4F93-A5D4-462B76CFEBF9
${EngagementTeamAttendDrp}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[1]/div/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[5]/div/div[1]/a/span[1]/ul/li
${EngagementTeamAttendSearch}           xpath:/html/body/div[30]/div[1]/input
${EngagementTeamAttendeeAdd}            id:1e2bf0ff-d635-4ef5-b8d1-6c28e3df7e5c_anchor
${EngagementAttendeeSave}               id:btnSaveAll
${EngagementAttendeeInLineEdit}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[1]/div/div/div[1]/div[2]/div[2]/div[1]/div[4]/div/div[2]/div[1]/div/div
${EngagementAttendSelect}               xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[5]
${EngagementTeamAttendProcessID}        id:btnProcessFlow_form_97558D28-83B1-4C55-A920-E9054FC9FFBA
${EngagementTeamAttendProcessEdit}      xpath:(//div[@id='divProcess_97558D28-83B1-4C55-A920-E9054FC9FFBA'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${EngagementTeamAttendClose}            xpath://*[@id="form_97558D28-83B1-4C55-A920-E9054FC9FFBA"]/div[1]/i[2]

#************************************************* FR-3 Capture Individuals Attendees **********************************
${EngagementIndividualAttendeeTab}      xpath://*[@id="tab_0AF17767-5363-4C4B-8DA5-79B375B8EE01"]/div[1]
${EngagementAddNewIndividual}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]/div
${EngagementIndividualAttendDrp}        xpath://*[@id="control_DA9B0184-991D-4267-B01B-36EF4792AF67"]/div[1]/a/span[1]/ul/li
${EngagementIndividualAttendSearch}     xpath:/html/body/div[31]/div[1]/input
${EngagementIndividualAttendSearch2}    xpath:/html/body/div[39]/div[1]/input
${EngagementIndividualAttendSearch2}    xpath:/html/body/div[40]/div[1]/input


${EngagementIndividualAttendAdd}        id:c452478b-7788-4667-aa2d-116bfb096837_anchor
${EngagementIndividualAttendSave}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[2]/div
${EngegementIndividualInlineEdit}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[4]/div/div[2]/div[1]/div/div
${EnagementIndividualSelect}            xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[5]/div
${EngagementIndividualProcessID}        id:btnProcessFlow_form_A89108D5-3731-429B-8CF8-FF11114601AD
${EngagementIndividualProcessEdit}       xpath:(//div[@id='divProcess_A89108D5-3731-429B-8CF8-FF11114601AD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${EngagementIndividualClose}            xpath://*[@id="form_A89108D5-3731-429B-8CF8-FF11114601AD"]/div[1]/i[2]

#************************************************* FR-4 Capture Group Attendees ****************************************
${EngagementGroupAttendeeTab}           xpath://*[@id="tab_D63969CF-767C-4E14-AF44-AB1FE51E6F04"]/div[1]
${EngagementAddNewGroup}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[3]/div/div/div[1]/div[1]/div[2]/div[1]
${EngagementGroupAttendDrp}             xpath://*[@id="control_BCCAA4BD-BD02-428C-A1E3-3BFE31AF66BF"]/div[1]/a/span[1]/ul/li
${EngagementGroupAttendSearch}          xpath:/html/body/div[31]/div[1]/input

${EngagementGroupAttendAdd}             id:506816a1-56ee-4783-889b-f3bd471dffe3_anchor
${EngagementGroupAttendSave}            xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[3]/div/div/div[1]/div[1]/div[2]/div[2]/div
${EngegementGroupInlineEdit}            xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[2]/div/div[12]/div[9]/div[2]/div[3]/div/div/div[1]/div[2]/div[2]/div[1]/div[4]/div/div[2]/div[1]/div/div
${EnagementGroupSelect}                 xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[5]
${EngagementGroupProcessID}             id:btnProcessFlow_form_55676769-BF0D-4709-A561-72CC9FF13F19
${EngagementGroupProcessEdit}           xpath:(//div[@id='divProcess_55676769-BF0D-4709-A561-72CC9FF13F19'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${EngagementGroupClose}                 xpath://*[@id="form_55676769-BF0D-4709-A561-72CC9FF13F19"]/div[1]/i[2]

#************************************************* FR-5 Capture Actions ************************************************
${EngagementActionTab}                  xpath://*[@id="tab_D428CA3F-E89E-4E73-B706-7F5925B543EF"]
${EngagementAddNewAction}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[20]/div[9]/div[2]/div[3]/div/div/div[1]/div[1]/div[2]/div[1]/div
${EngagementActionProcess}              xpath://*[@id="btnProcessFlow_form_5110F491-CFCA-42F7-87A2-001109988E70"]/span
${EngagementActionTypeDrp}              xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[1]/ul/li
#${EngagementActionSearch}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[33]/div[1]/input
${EngagementActionSelect}               xpath://*[@id="42aa5735-8873-4887-b766-442f9c2606d9_anchor"]
${EngagementActionDesc}                 xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea

${EngagementActionEntityDrp}            xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[1]/ul/li
#${EngagementActionEntitySearch}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[34]/div[1]/input
${EngagementActionEntityXpath2}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[32]/ul[1]/ul/li/ul/li[3]/i
#${EngagementActionEntityXpath3}         xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${EngagementActionEntityXpath3}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[32]/ul[1]/ul/li/ul/li[3]/ul/li[6]/i
${EngagementActionEntityXpath4}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[32]/ul[1]/ul/li/ul/li[3]/ul/li[6]/ul/li[6]/i
${EngagementActionEntitySelect}         xpath://*[@id="54f00015-2059-48c0-9d06-c9dd52d482e9_anchor"]


${EngagementActionRespDrp}             xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[1]/ul/li
${EngagementActionRespsearch}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[33]/div[1]/input
${EngagementActionRespSelect}          xpath://*[@id="f8a92ac6-d024-4bf2-bc31-9db1b4961e99_anchor"]
${EngagementActionDue}                 xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${EngagementActionRecuring}            xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[1]/ul/li
${EngagementActionRecuringSelect}      xpath://*[@id="14f2fba0-4b57-42aa-9cba-f1d9c372d3e6_anchor"]
${EngagementActionSave}                xpath://*[@id="btnSave_form_5110F491-CFCA-42F7-87A2-001109988E70"]/div[3]

#************************************************* FR-6-7 Capture Engagement Edit **************************************
#Confidential
${EngagementManagementEngStatus}      id:29df86fc-4ad6-44ab-8627-be03677fccd5
${EngagementStatusExecutedOnTime}     id:f6a432da-dff7-4edc-b9c4-cea8641b6198_anchor
${EngagementStatusCancelled}          xpath://*[@id="788eb8ff-de0d-4a52-93f2-10d9ddf24aba_anchor"]
${EngagementProcessExecutedCon}       xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Executed (Confidential)']
${EngagementProcessCancelCon}         xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Cancelled (Confidential)']

${EngagementManagementEngStatus2}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[12]/div[1]/a/span[1]/ul/li

#Planned
${EngagementManagementEngStatus3}     id:29df86fc-4ad6-44ab-8627-be03677fccd5
${EngagementProcessExecutedPlanned}   xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Executed']
${EngagementProcessCancelledPlanned}  xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Cancelled']

#

${EngagementManagementReportID}        id=btnReports_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC
${EngagementManagementReportList}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[3]/div[2]/div/div/div[2]/div[2]/span[2]
${EngagementManagementConfirmreport}   xpath:/html/body/div/div[4]/div/div/div[3]/div/div/div[2]/div[2]/div

#************************************************* FR9 - View Reports **************************************************
${EngagementManagementSearchInput}    xpath://*[@id="searchOptions"]/div[3]/table/tbody/tr[5]/td[5]/input
${EngagementManagementSearchBtn}      xpath://*[@id="btnActApplyFilter"]/div

${SIReportsBtn}                             xpath://div[@id='btnReports']
${SIViewReportsBtn}                         xpath://*[@id="report_0d4c0b4f-c7df-4ab9-84c1-c27f6f02a15c"]/span[3][@title="View report "]
${SIReportsPopUpConfirm}                    xpath://div[@id='btnConfirmYes']
${SIFullReportsBtn}                         xpath://span[@title='Full report ']
${SIViewReportRightArrow}                   xpath://span[@id='viewer_ctl09_ctl00_Next_ctl00_ctl00']
${SIViewReportExportArrow}                  xpath://span[@id='viewer_ctl09_ctl04_ctl00_ButtonImgDown']
${SIViewReportsLoading}                     xpath://*[@id="viewer_AsyncWait_Wait"]/table/tbody/tr/td[2]
${SIViewReportsWord}                        xpath://div[@id="viewer_ctl09_ctl04_ctl00_Menu"]/div[3]/a













