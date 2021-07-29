*** Variables ***
${RiskManagementID}                 id:section_63feb4c9-b215-4889-8464-5170299f89f2
${BaseLineRiskLayer1ID}             id:section_c46d15c9-9481-4029-865e-bc69439be9d6
${BaseLineRiskAddNew}               id:btnActAddNew
${BaseLineRiskProcess}              xpath://*[@id="btnProcessFlow_form_6466008A-FF5F-4688-927C-9AF7A36EFB85"]/span
${baseLineRiskProcessLogging}       xpath:(//div[@id='divProcess_6466008A-FF5F-4688-927C-9AF7A36EFB85'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Logging phase']
${BaseLineRiskBUDrp}                xpath://*[@id="control_7ADE5394-1E6D-4ED5-A88D-0E1447D571E0"]/div[1]/a/span[1]/ul/li
${BaseLineRiskBUAnglo}              xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BaseLineRiskBUAnglo}              xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BaseLineRiskBUBulk}               xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BaseLineRiskBUKumba}              xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BaseLineRiskBUSishenSelect}       xpath:(//a[text()='Sishen Mine'])
${BaseLineRiskTitle}                xpath://*[@id="control_8F5FF883-CB77-4608-A392-1E884CD70EA3"]/div[1]/div/input
${BaseLineRiskRiskIntro}            xpath://*[@id="control_D3A159E1-ABA7-4BCB-9B0F-1AA0AD824A1F"]/div[1]/div/textarea
${BaseLineRiskObjective}            xpath://*[@id="control_0AE872B5-DC1D-499D-B221-2B61E9AAC7F9"]/div[1]/div/textarea
${BaseLineRiskBounderies}           xpath://*[@id="control_3AD68745-08C7-4032-B2A6-22601195A655"]/div[1]/div/textarea
${BaseLineRiskAssump}               xpath://*[@id="control_81BE1D76-F3D6-4B5E-AC9F-BFF442130283"]/div[1]/div/textarea
${BaseLineRiskMethod}               xpath://*[@id="control_6486B17A-AFC5-4950-9ABC-34BA4C7F0DD1"]/div[1]/div/textarea
${BaseLineRiskProcessMap}           xpath://*[@id="control_7BD38761-8845-4B8E-ABE1-C068EB6A35CF"]/div[1]/div[1]/div[2]/b[2]
${BaseLineRiskSave}                 xpath://*[@id="btnSave_form_6466008A-FF5F-4688-927C-9AF7A36EFB85"]/div[3]
${BaseLineRiskProcessRead}          xpath:(//div[@id='divProcess_6466008A-FF5F-4688-927C-9AF7A36EFB85'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Read - only']

#************************************************* FR2-Capture Baseline Change Log *************************************
${BaseLineChangeAdd}                xpath://div[text()='Baseline Change Log']/../..//*[@id="btnAddNew"]/div
${BaseLineChangeProcess}            xpath://*[@id="btnProcessFlow_form_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E"]/span
${BaseLineChangeProcessAdd}         xpath:(//div[@id='divProcess_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${BaseLineChangeDate}               xpath://*[@id="control_2F345D95-2937-4E24-9266-A0E63D87FF43"]/div[1]/span/span/input
${BaseLineChangeReasonDrp}          xpath://*[@id="control_94BF8E2B-025E-4533-BFE0-EC7E765A6FF9"]/div[1]/a/span[1]/ul/li
${BaseLineChangeReasonDrpClose}     xpath://*[@id="control_94BF8E2B-025E-4533-BFE0-EC7E765A6FF9"]/div[1]/a/span[2]/b[1]
${BaseLineChangeReasonEvent}        xpath:(//a[text()='Event management'])/i
${BaseLineChangeLinkEventDrp}       xpath://*[@id="control_8D1B7234-2CFC-43E7-B1BE-E770A1D237DD"]/div[1]/a/span[1]/ul/li
${BaseLineChangeLinkEventSelect}    xpath:(//a[text()=' Mud Gun Failure '])

${BaseLineChangeReasonDeSel}        xpath://*[@id="control_94BF8E2B-025E-4533-BFE0-EC7E765A6FF9"]/div[1]/a/span[2]/b[3]
${BaseLineChangeAudit}              xpath:(//a[text()='Audit review'])/i
${BaseLineChangeLinkAuditDrp}       xpath://*[@id="control_A3A2D058-C269-4274-8808-EF35ABD57BD9"]/div[1]/a/span[1]/ul/li
#${BaseLineChangeLinkAuditSelect}

${BaseLineChangeStake}             xpath:(//a[text()='Stakeholder engagement'])/i
${BaseLineChangeLinkStakeDrp}      xpath://*[@id="control_D3DD4627-9AF6-4275-BAA3-49A9E1FAAC91"]/div[1]/a/span[1]/ul/li
${BaseLineChangeLinkStakeSel}      xpath:(//a[text()=' First Line Supervisory Forum (FLS)'])

# Main Scenario

${BaseLineChangeAnnual}            xpath:(//a[text()='Annual review']/i)
${BaseLineChangeChange}            xpath:(//a[text()='Change']/i)
${BaseLineChangeHazard}            xpath:(//a[text()='New hazard / risk identified']/i)
${BaseLineChangeRespDrp}           xpath://*[@id="control_654B1273-9E8C-4E6E-834D-2B589E3311E0"]/div[1]/a/span[1]/ul/li
${BaseLineChangeRespSrch}          xpath:(//input[@placeholder='Type and enter to search'])[1]
${BaseLineChangeRespSelect}        xpath:(//a[text()='1 Administrator'])
${BaseLineChangeSave}              xpath://*[@id="btnSave_form_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E"]/div[3]
${BaseLineChangeProcessEdit}       xpath:(//div[@id='divProcess_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#************************************************* FR3-Capture Risk Assessment Team*************************************
${BaseLineRiskAsstAdd}             xpath://div[text()='Risk Assessment Team']/../..//*[@id="btnAddNew"]/div
${BaseLineRiskAsstNameDrp}         xpath://*[@id="control_E0535A21-FBC8-4F90-B767-B9C02D121842"]/div[1]/a/span[1]/ul/li
${BaseLineRiskAsstNameSrch}        xpath:(//input[@placeholder='Type and enter to search'])[3]
${BaselineRiskAsstNameSel}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='A Admin'])[1]
${BaseLineRiskAsstRoleDrp}         xpath://*[@id="control_A1BF9E59-A685-4589-A3B6-9519333C11D1"]/div[1]/a/span[1]/ul/li
${BaseLineRiskAsstRoleSel}         xpath:(//a[text()='Scribe'])
${BaseLineRiskAsstSave}            xpath://div[text()='Risk Assessment Team']/../..//*[@id="btnSaveAll"]/div

#************************************************* FR4- Capture Hazard Inventory ***************************************
${BaseLineRiskAsstClose}           xpath://*[@id="form_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E"]/div[1]/i[2]
${BaseLineRiskHazardTab}           xpath://*[@id="tab_EB8B0778-CA47-4D14-AFFE-5661F384EC2C"]/div[1]
${BaseLineRiskHazardAdd}           xpath://div[text()='Hazard Inventory']/../..//*[@id="btnAddNew"]/div
${BaseLineRiskHazardClassDrp}      xpath://*[@id="control_C02EFACC-99FB-401E-80EA-8E005C953F8E"]/div[1]/a/span[1]/ul/li
${BaseLineRiskHazardClassSel}      xpath:(//a[text()='Explosives'])
${BaseLineRiskHazardDesc}          xpath://*[@id="control_B92B79A4-9D5E-438B-900D-F394022151A2"]/div[1]/div/textarea
${BaseLineRiskHazardBA}            xpath://*[@id="control_EEE339F2-0229-4468-8A52-D42CBD13ACB4"]/div[1]/a/span[1]/ul/li
${BaseLinkRiskHazardBASel}         xpath:(//a[text()='Support Services - Engineering'])
${BaseLineRiskHazardMag}           xpath://*[@id="control_45569A36-F2BC-4368-A5D9-59F4A5AE406D"]/div[1]/div/textarea
${BaselineRiskHazardMec}           xpath://*[@id="control_A52EA721-EF81-4F1D-9DAA-D420B1AEF2EA"]/div[1]/div/textarea
${BaseLineRiskHazardAssump}        xpath://*[@id="control_0A583F03-2A7B-4AB8-B2EF-6B1AA8AA3C22"]/div[1]/div/textarea
${BaseLineRiskHazardIssueDrp}      xpath://*[@id="control_2D85EE31-5B84-437D-A025-C2104D3FE89C"]/div[1]/a/span[1]/ul/li
${BaseLineRiskHazardIssueSel}      xpath:(//a[text()='Yes'])
${BaseLineRiskHazardSave}          xpath://div[text()='Hazard Inventory']/../..//*[@id="btnSaveAll"]/div

#*************************************************FR5-Capture Baseline WRAC*********************************************
${BaseLineRiskWRACTab}             xpath://*[@id="tab_67007E97-22C9-4167-BCA9-92036F53DD91"]/div[1]
${BaseLineRiskWRACAdd}             xpath://div[text()='Baseline WRAC']/../..//*[@id="btnAddNew"]/div
${BaseLineRiskWRACProcess}         xpath://*[@id="btnProcessFlow_form_C573AFA6-72FA-4A61-9551-C9097D40EB0E"]/span
${BaseLineRiskWRACClassDrp}        xpath://*[@id="control_F3AC037D-2695-4593-8A4D-DAF11B894FC6"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACClassSel}        xpath:(//a[text()='Explosives'])
${BaseLineRiskWRACDescDrp}         xpath://*[@id="control_797FE442-E3F9-4DF7-A18B-343103F801A2"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACDescSel}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='auto test'])[1]
${BaseLineRiskWRACBADrp}           xpath://*[@id="control_820F557D-34F8-45D6-A07F-F8AA17690BAF"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACXpath}           xpath://*[@id="09f33438-b41a-43e7-b462-56fa9c3bd183"]/i
${BaseLineRiskWRACBASel}           xpath:(//a[text()='Conveying'])
${BaseLineRiskWRACDescEvent}       xpath://*[@id="control_91BDE3F6-3D3C-4896-BC63-A11A919E12BB"]/div[1]/div/textarea
${BaseLineRiskWRACFunOwnDrp}       xpath://*[@id="control_7F4B3A56-E129-4012-89A2-B4EC9774858A"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACFunOwnSel}       xpath:(//a[text()='Mining'])
${BaseLineRiskWRACLikeDrp}         xpath://*[@id="control_28F53CB1-A517-42DB-B823-C30363EC2E85"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACLikeSel}         xpath:(//a[text()='1) Rare'])
#consequences comment
${ConseqSafetyCmnt}                xpath://*[@id="control_F1313427-798E-4325-8A1B-8EC0A7C89BFD"]/div[1]/div/input
${ConseqHealthCmnt}                xpath://*[@id="control_32528AEA-458A-4B83-BF0E-70FC2C9A5627"]/div[1]/div/input
${ConseqEnvCmnt}                   xpath://*[@id="control_7A183A63-5017-4D86-993F-2FE22919D871"]/div[1]/div/input
${ConseqCommCmnt}                  xpath://*[@id="control_CFDF6A69-04A9-47CE-9E52-08A604600CC6"]/div[1]/div/input
${ConseqLegalCmnt}                 xpath://*[@id="control_D6F4766E-9626-49FC-8F2A-950BFA085CB1"]/div[1]/div/input
${ConseqMaterialCmnt}              xpath://*[@id="control_5C69BBA0-F35D-49AA-8B30-E00E10F99DEB"]/div[1]/div/input
${ConseqRepCmnt}                   xpath://*[@id="control_85ECC4AC-583C-452B-9308-91CEB2B19811"]/div[1]/div/input

${BaseLineRiskWRACPermitDrp}       xpath://*[@id="control_21E52A8B-96FF-4C47-AA5F-EED1C9131B59"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACPermitSel}       xpath:(//a[text()='ACP']/i)
${BaseLineRiskWRACStakeGrpDrp}     xpath://*[@id="control_2ABE081D-B527-43F5-90BA-3DC61620F06A"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACStakeGrpSrch}    xpath:(//input[@placeholder='Type and enter to search'])[3]
${BaseLineRiskWRACStakeGrpSel}     xpath:(//a[text()='Kuruman Auto (Imt)']/i)
${BaselineRiskWRACStakeIndDrp}     xpath://*[@id="control_F0848128-64DE-42D6-A4C8-5462798CFA7D"]/div[1]/a/span[1]/ul/li
${BaseLineRiskWRACStakeIndSrch}    xpath:(//input[@placeholder='Type and enter to search'])[4]
${BaseLineRiskWRACStakeIndSel}     xpath:(//a[text()='Auto Test robot (Autotest)']/i)
${BaseLineRiskWRACSave}            xpath://*[@id="btnSave_form_C573AFA6-72FA-4A61-9551-C9097D40EB0E"]/div[3]

${BaseLineRiskWRACClose}           xpath://*[@id="form_C573AFA6-72FA-4A61-9551-C9097D40EB0E"]/div[1]/i[2]
${BaselineRiskWRACConfirm}         xpath://*[@id="btnConfirmYes"]/div

#*************************************************FR6-Capture Possible Improvements or Additional Controls**************
${BaseLineRiskImprvDrp}            xpath://*[@id="control_09A3F461-BDF3-435B-A22A-829B8C2607DB"]/div[9]/div[1]
${BaseLineRiskImprvAdd}            xpath://div[text()='Possible Improvements or Additional Controls Actions']/../..//*[@id="btnAddNew"]/div
${BaseLineRiskImprvProcess}        xpath://*[@id="btnProcessFlow_form_12CDB0B0-0838-4B45-A570-6F3674D9EEC2"]/span
${BaseLineRiskImprvTaskDrp}        xpath://*[@id="control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvTaskSel}        xpath:(//a[text()='Ad Hoc'])
${BaseLineRiskImprvTypeDrp}        xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvTypeSel}        xpath:(//a[text()='Corrective'])
${BaseLineRiskImprvDesc}           xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${BaseLineRiskEntityDrp}           xpath://*[@id="control_34D02E21-7837-484C-844E-BCC8CC077837"]/div[1]/a/span[1]/ul/li
${BaseLineRiskEntityAnglo}         xpath:(//a[text()='Anglo American Group']/../i)[2]
${BaseLineRiskEntityBulk}          xpath:(//a[text()='Bulk Commodities & Other Minerals']/../i)[3]
${BaseLineRiskEntityKumba}         xpath:(//a[text()='Kumba']/../i)[2]
${BaseLineRiskEntitySishen}        xpath:(//a[text()='Sishen Mine'])[46]
${BaseLineRiskEntityBenefic}       xpath:(//a[text()='Benefic. Plant'])[9]
${BaseLineRiskImprvRespDrp}        xpath://*[@id="control_7854D003-23E6-4A2E-AF2E-357C965FA684"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvRespSrch}       xpath:(//input[@placeholder='Type and enter to search'])[6]
${BaseLineRiskImprvRespSel}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='A Admin'])[1]
${BaseLineRiskImprvAgencyDrp}      xpath://*[@id="control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvAgencySel}      xpath:(//a[text()='Fire or Explosion'])
${BaseLineRiskImprvPrioDrp}        xpath://*[@id="control_64D59225-1029-4ABE-9EB3-C41FAAD8859B"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvPrioSel}        xpath:(//a[text()='Low'])
${BaseLineRiskImprvDueDate}        xpath://*[@id="control_A1A7A250-4916-472D-A6A5-CDA980F5DA52"]/div[1]/span/span/input
${BaseLineRiskImprvRecurDrp}       xpath://*[@id="control_2EA9211B-54AC-4846-8A26-58606645D84A"]/div[1]/a/span[1]/ul/li
${BaseLineRiskImprvRecurSel}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])[1]
${BaseLineRiskImprvSave}           xpath://*[@id="btnSave_form_12CDB0B0-0838-4B45-A570-6F3674D9EEC2"]
${BaseLineRiskImprvClose}          xpath://*[@id="form_12CDB0B0-0838-4B45-A570-6F3674D9EEC2"]/div[1]/i[2]

${BaseLineChangeLogSel}            xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[4]
${BaseLineChangeRespSel2}          xpath:(//a[text()='AutoTest User'])[3]
${BaseLineChangeDrp}               xpath://*[@id="control_434D611E-A016-4089-9481-276A22F57435"]/div[1]/a/span[1]/ul/li
${BaseLineChangeComSel}            xpath:(//a[text()='Yes'])[2]

${BaseLineChangeRespSrch2}         xpath:(//input[@placeholder='Type and enter to search'])[11]


