*** Variables ***
${RiskManagementID}                 id:section_63feb4c9-b215-4889-8464-5170299f89f2
${BaseLineRiskLayer1ID}             id:section_c46d15c9-9481-4029-865e-bc69439be9d6
${BaseLineRiskAddNew}               id:btnActAddNew
${BaseLineRiskProcess}              xpath://*[@id="btnProcessFlow_form_6466008A-FF5F-4688-927C-9AF7A36EFB85"]/span
${baseLineRiskProcessLogging}       xpath:(//div[@id='divProcess_6466008A-FF5F-4688-927C-9AF7A36EFB85'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Logging phase']
${BaseLineRiskBUDrp}                xpath://*[@id="control_7ADE5394-1E6D-4ED5-A88D-0E1447D571E0"]/div[1]/a/span[1]/ul/li
${BaseLineRiskBUAnglo}              xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BaseLineRiskBUBulk}               xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BaseLineRiskBUKumba}              xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BaseLineRiskBUSishenSelect}       xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
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
${BaseLineChangeReasonEvent}        xpath://*[@id="e0ffa401-c8ab-4115-90d4-61594eb029f7_anchor"]/i[1]
${BaseLineChangeLinkEventDrp}       xpath://*[@id="control_8D1B7234-2CFC-43E7-B1BE-E770A1D237DD"]/div[1]/a/span[1]/ul/li
${BaseLineChangeLinkEventSelect}    xpath://*[@id="8ecfe683-4c8e-409f-be90-f937a7899c6f_anchor"]

${BaseLineChangeReasonDeSel}        xpath://*[@id="control_94BF8E2B-025E-4533-BFE0-EC7E765A6FF9"]/div[1]/a/span[2]/b[3]
${BaseLineChangeAudit}              xpath://*[@id="d623cb84-5940-4503-97d5-995260b6d32b_anchor"]/i[1]
${BaseLineChangeLinkAuditDrp}       xpath://*[@id="control_A3A2D058-C269-4274-8808-EF35ABD57BD9"]/div[1]/a/span[1]/ul/li
#${BaseLineChangeLinkAuditSelect}

${BaseLineChangeStake}             xpath://*[@id="c2967487-b281-49a3-8b9b-15d1c0c43505_anchor"]/i[1]
${BaseLineChangeLinkStakeDrp}      xpath://*[@id="control_D3DD4627-9AF6-4275-BAA3-49A9E1FAAC91"]/div[1]/a/span[1]/ul/li
${BaseLineChangeLinkStakeSel}      xpath://*[@id="0954e8d3-8c07-40d8-9cea-4c54fc566ac4_anchor"]

# Main Scenario

${BaseLineChangeAnnual}            xpath://*[@id="4b08d23d-9c5d-4450-b18c-6275a5fecb60_anchor"]/i[1]
${BaseLineChangeChange}            xpath://*[@id="26a5ac06-b77c-40db-a072-33590efac1ac_anchor"]/i[1]
${BaseLineChangeHazard}            xpath://*[@id="6f639739-ae38-4c36-b568-374f0eb5b11b_anchor"]/i[1]
${BaseLineChangeRespDrp}           xpath://*[@id="control_654B1273-9E8C-4E6E-834D-2B589E3311E0"]/div[1]/a/span[1]/ul/li
${BaseLineChangeRespSrch}          xpath:(//input[@placeholder='Type and enter to search'])[1]
${BaseLineChangeRespSelect}        xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${BaseLineChangeSave}              xpath://*[@id="btnSave_form_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E"]/div[3]
${BaseLineChangeProcessEdit}       xpath:(//div[@id='divProcess_B1AFB460-A6D1-43BD-A463-3C2E0ECABF9E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']