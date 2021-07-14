*** Variables ***
#************************************************* FR1 - Capture Air Quality *******************************************
${EnvironmentalSustainability}      id:section_53a09f09-ff3f-4a37-8482-d9f284add907
${AirQualityMonitoring}             id:section_98e1c3c4-208d-496a-a1cd-01f5974d0d2f
${AirQualityAddNew}                 id:btnActAddNew
${AirQualityProcessID}              id:btnProcessFlow_form_74DBD0CA-CB81-485B-AFD9-8F5F59BEFD9D
${AirQualityBU}                     xpath://*[@id="control_739C430A-AAD9-47C4-80E3-30FE13AB4D33"]/div[1]/a/span[1]/ul/li
${AirQualityBUXpath}                xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${AirQualityBUXpath2}               xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${AirQualityBUXpath3}               xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${AirQualityBUKolomelaXpath}        xpath://*[@id="195d7767-d50a-4031-adbc-f942b52252b2"]/i
${AirQualityBUSelectMining}         id=5722287f-6e82-4b60-94e9-945409d307df_anchor
${AirQualityBUSishen}               id:25742496-c98d-431e-96c8-18619861422e_anchor
${AirQualityMonth}                  xpath://*[@id="control_4E1D4CE9-349A-491A-8D18-EFD53A2076C7"]/div[1]/a/span[1]/ul/li
${AirQualityMonthSelect}            id:5628d422-556b-4b87-b05d-c0f76c4aa26f_anchor
${AirQualityYear}                   xpath://*[@id="control_228918B1-E384-4DE9-9910-2D881B26DA23"]/div[1]/a/span[1]/ul/li
${AirQualityYearSelect}             id:bfdf5e93-32ba-457a-8e69-1a581f400e38_anchor
${AirQualityMonitoringPt}           xpath://*[@id="control_E96E3D7B-B465-4EEE-B615-F90459343BE6"]/div[1]/a/span[1]/ul/li
${AirQualityMonitoringPtSelect}     xpath://*[@id="de59268b-57b1-4250-88d5-6989a8b7b5cb_anchor"]
${AirQualitySampleDrp}              xpath://*[@id="control_A68322E0-4BC2-4A8C-A57D-5C6381E882B3"]/div[1]/a/span[1]/ul/li
${AirqualitySampleSearch}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[11]/div[1]/input
${AirQualitySampleSelect}           xpath://*[@id="2b5f9582-d365-46fa-90ca-4d0c975d0dcc_anchor"]
${AirQualitySaveId}                 id:btnSave_form_74DBD0CA-CB81-485B-AFD9-8F5F59BEFD9D
${AirQualityProcessEdit}            xpath:(//div[@id='divProcess_74DBD0CA-CB81-485B-AFD9-8F5F59BEFD9D'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AirQualityMonitoringFindingDrp}   xpath://*[@id="control_F0FAA022-87BA-48E1-9A52-D5856F210E3E"]/div[9]/div[1]/i
#************************************************* FR1 - Capture Air Quality OPt Sc 1 *******************************************
${AirQualityType}                   xpath://*[@id="control_164E9ECF-98B7-44BE-810E-9E6D002BE0EB"]/div[1]/a/span[2]/b[1]
${AirQualityTypeDust}               xpath://*[@id="db911a6a-b2ad-48e0-b5a8-06a6a86302d1_anchor"]
${AirQualityLinkPermitCheck}        xpath://*[@id="control_198375A9-1B33-46D1-A93F-180F33F21D25"]/div[1]/div
${AirQualityLinkPermitDrp}          xpath://*[@id="control_3544E0CE-09D7-408E-8CB9-EC387D9B3675"]/div[1]/a/span[1]/ul/li
${AirQualityLinkPermitSelect}       xpath://*[@id="d47dbcc2-9045-479f-b980-caffb24b0320_anchor"]
${AirQualityLinkProjectCheck}       xpath://*[@id="control_3018FA38-B287-444A-A4F0-E4CD583F047E"]/div[1]/div
${AirQualityLinkProjectDrp}         xpath://*[@id="control_44FA56D6-420C-4B96-A208-AE39A0424D3C"]/div[1]/a/span[1]/ul/li
${AirQualityLinkProjectSelect}      xpath://*[@id="57fbf217-3650-4f4e-ab29-514e17a3d741_anchor"]

${AirQualitySupportingDoc}          xpath://*[@id="control_36C93CF0-9F8F-4661-A131-810C96569C49"]/div[1]/div[1]/div[2]/b[2]

#************************************************* FR2-Capture Emissions Measurement **************************
${AirQualityParamReading}           xpath://*[@id="control_3CB28695-7F32-4A0B-9B5E-A7399E51A9B2"]/div[9]/div[1]/i
${AirQualityParamReadingAdd}        xpath://div[text()='Emission Measurements']/../..//*[@id="btnAddNew"]/div
${AirQualityParamDrp}               xpath://*[@id="control_7772C02F-A0D6-4722-B46B-F56F365AE1D8"]/div[1]/a/span[1]/ul/li
${AirQualityParamSelect}            xpath://*[@id="8478f673-20dd-440a-b7b3-3856ae0b0b1a_anchor"]
${AirQualityParamMeasurement}       xpath://*[@id="formWrapper_0"]/td[5]/..//*[@id="numberInput"]
${AirQualityParamUnitDrp}           xpath://*[@id="control_262495D5-3D67-461A-AE55-2BB7CE6BD497"]/div[1]/a/span[1]/ul/li
${AirQualityParamUnitSelect}        xpath://*[@id="20bd8984-7e86-4186-86e7-23d36aff6464_anchor"]
${AirQualityParamTime}              xpath://*[@id="control_424E49C4-9F9E-4F2B-8AE3-544D9CE19AF4"]/div[1]/span
${AirQualityParamComment}           xpath://*[@id="control_CE92607E-3CB8-4B9B-90D5-EA4C22CC17EA"]/div[1]/div/textarea
${AirQualityParamSave}              xpath://*[@id="btnSave_form_74DBD0CA-CB81-485B-AFD9-8F5F59BEFD9D"]/div[3]

#************************************************* FR3-Capture Dust Measurements ***************************************
${AirQualityManagementDrp}          xpath://*[@id="control_B85384C4-EF31-486E-BAB1-D66480457717"]/div[9]/div[1]/i
${AirQualityDustAdd}                xpath://div[text()='Dust Measurement']/../..//*[@id="btnAddNew"]/div
${AirQualityDustMonitorPtDrp}       xpath://*[@id="control_EDDF8770-EC82-443B-9004-C993CD9A76B4"]/div[1]/a/span[1]/ul/li
${AirQualityDustMonitorPtSelect}    xpath://*[@id="de59268b-57b1-4250-88d5-6989a8b7b5cb_anchor"]
${AirQualityDustMeasurementIn}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[24]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[5]/div/div[1]/div/input
${AirQualityDustUnitDrp}            xpath://*[@id="control_C4DA1DA7-E7AE-4597-875B-7C7A043AB15F"]/div[1]/a/span[1]/ul/li
${AirQualityDustUnitSelect}         xpath://*[@id="20bd8984-7e86-4186-86e7-23d36aff6464_anchor"]
${AirQualityDustUnitTime}           xpath://*[@id="control_5C076472-5BF9-40C6-B69D-1EDB0983D681"]/div[1]/span
${AirQualityDustSave}               xpath: //div[text()='Dust Measurement']/../..//*[@id="btnSaveAll"]/div


#************************************************* FR4 - Capture Air quality Monitoring Finding **************************
${AirQualityMonFindingAdd}          xpath://div[text()='Air Quality Monitoring Findings']/../..//*[@id="btnAddNew"]/div
${AirQualityFindindProcessID}       id:btnProcessFlow_form_A4BB87E5-A0CA-4A12-A57D-06244726EDAA
${AirQualityFindingDesc}            xpath://*[@id="control_40ECC722-B08B-48F3-9906-3CFCE527C5CD"]/div[1]/div/textarea
${AirQualityFindingOwnerDrp}        xpath://*[@id="control_434D9128-5EBC-4E25-9836-72A2C4451733"]/div[1]/a/span[1]/ul/li
${AirQualityFindingOwnerSearch}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[22]/div[1]/input
${AirQualityFindingOwnerSelect}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[22]/ul[1]/ul/li[8]/a
${AirQualityFindingClassDrp}        xpath://*[@id="control_7689E71C-DC7E-41C1-9124-C6312596E956"]/div[1]/a/span[1]/ul/li
${AirQualityFindingClassSelect}     id:213002b8-5781-4d12-880a-a6480b225eac_anchor
${AirQualityFindingSave}            xpath://*[@id="btnSave_form_A4BB87E5-A0CA-4A12-A57D-06244726EDAA"]/div[3]
${AirQualityFindingClose}           xpath://*[@id="form_A4BB87E5-A0CA-4A12-A57D-06244726EDAA"]/div[1]/i[2]
${AirQualityConfirmExit}            xpath://*[@id="btnConfirmYes"]/div

# FR5
${AirQualitySelect}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[25]/div[9]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[4]
${AirQualityFindingClass2}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[59]/ul[1]/ul/li[5]/a

#************************************************* FR5 - Edit Air quality Monitoring Finding ***************************
${AirQualityFindingFLDrp}           xpath://*[@id="control_DE18F9A3-BBB4-4600-B420-0167AE11B426"]/div[1]/a/span[1]/ul/li
${AirQualityFindingFLSel}           xpath://*[@id="bfca906a-1f2a-4508-9bec-bc0770cbea9f_anchor"]
${AirQualityFindingClosureDate}     xpath://*[@id="control_1318D08E-2DA5-47DC-AFC8-0E99CC12C72A"]/div[1]/span/span/input
${AirQualityFindingRiskSourceDrp}   xpath://*[@id="control_E2CBB706-26AB-4373-813A-05D4860FC38F"]/div[1]/a/span[1]/ul/li
${AirQualityFindingRiskSourceSel}   xpath://*[@id="6a203a44-0e56-4caa-91f5-70721d795b8a_anchor"]/i[1]
${AirQualityFindingRelatPermitDrp}  xpath://*[@id="control_6FC51E0E-C6FD-4316-940D-2DC2029A0ECA"]/div[1]/a/span[1]/ul/li
${AirQaulityFindingRelatPermitSel}  xpath://*[@id="control_6FC51E0E-C6FD-4316-940D-2DC2029A0ECA"]/div[1]/a/span[1]/ul/li
${AirQualityFindingRelateDrp}       xpath://*[@id="control_5DBAAA36-2C4B-41BF-9E19-9C13FF03A076"]/div[1]/a/span[1]/ul/li
${AirQualityFindingRelateSel}       xpath://*[@id="e4db7081-5761-4ae9-b28e-2f709771e997_anchor"]

${AirQualityFindingIndvDrp}         xpath://*[@id="control_CDCCCDFB-B2ED-4F45-8B21-54358FAC0FB3"]/div[1]/a/span[1]/ul/li
${AirQualityFindingIndvSel}         xpath://*[@id="fa16e8a7-bfc0-4421-9c3b-10f48e77bdf9_anchor"]/i[1]
${AirQualityFindingFactorDesc}      xpath://*[@id="control_B0C4CB46-6EF6-43B0-B739-6AD8110C1A1A"]/div[1]/div/textarea
${AirQualityFindingWrkPlaceDrp}     xpath://*[@id="control_7CACA862-8EE8-424E-9BFB-FCD58D175434"]/div[1]/a/span[1]/ul/li
${AirQualityFindingWrkPlaceSel}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[77]/ul[1]/ul/li[8]/a/i[1]
${AirQualityFindingWrkPlaceDesc}    xpath://*[@id="control_7CADBA7E-8CC1-408D-ADD8-3B224565131C"]/div[1]/div/textarea
${AirQualityFindingOrgFactorDrp}    xpath://*[@id="control_CD4EA32A-8E60-4164-AF57-6A2DB5335F70"]/div[1]/a/span[1]/ul/li
${AirQualityFindingOrgFactorSel}    xpath://*[@id="d64c890b-88f6-4615-ae77-23a583b74c31_anchor"]/i[1]
${AirQualityFindingOrgFactorDesc}   xpath://*[@id="control_C279E65E-2CA4-49CA-8455-F162FDD1D630"]/div[1]/div/textarea
