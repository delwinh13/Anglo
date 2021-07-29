*** Variables ***
${EnvironmentalSustainabilityID}            id:section_53a09f09-ff3f-4a37-8482-d9f284add907
${BioDiversityMonitoringID}                 id:section_f6ff2b7f-9712-40ec-9fa5-119e10de4c7d
${BioMonAdd}                                id:btnActAddNew
${BioMonProcessID}                          id:btnProcessFlow_form_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C
${BioMonProcessAddPhase}                    xpath:(//div[@id='divProcess_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${BioMonBUDrpXpath}                         xpath://*[@id="control_0A34F3A8-33FC-49F8-BC66-F024D376FBAD"]/div[1]/a/span[2]
${BioMonBUAnglo}                            xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BioMonBUBulk}                             xpath://*[@id="fb93eb86-7cff-4f7e-95ae-48817f24f052"]/i
${BioMonBUKumba}                            xpath://*[@id="826e8170-0375-48c4-9aaf-af59e8e8aeba"]/i
${BioMonBUKolomela}                         xpath://*[@id="195d7767-d50a-4031-adbc-f942b52252b2"]/i
${BioMonBUMining}                           xpath:(//a[text()='Mining Operations'])
${BioMonTypeDrp}                            xpath://*[@id="control_36075F35-DAB1-4FC2-B2D1-AB14ADE295D7"]/div[1]/a/span[2]/b[1]
${BioMonTypeSelect}                         xpath:(//a[text()='Flora'])
${BioMonTypeDrp2}                           xpath://*[@id="14eb5bf8-42fb-4f65-a1f9-b8f3448c2e62"]
${BioMonMonthDrp}                           xpath://*[@id="control_50C453F4-08EA-4260-A516-FB66F7A31B26"]/div[1]/a/span[1]/ul/li
${BioMonMonthSelect}                        xpath:(//div[contains(@class, 'transition visible')]//a[text()='August'])
${BioMonYearDrp}                            xpath://*[@id="control_3D6D5440-22D5-49BD-8487-7DC13D7FD682"]/div[1]/a/span[2]/b[1]
${BioMonYearSelect}                         xpath:(//div[contains(@class, 'transition visible')]//a[text()='2018'])
${BioMonYearSelect2}                        xpath:(//div[contains(@class, 'transition visible')]//a[text()='2019'])
${BioMonMonitoringPtDrp}                    xpath://*[@id="control_F94557BC-A37F-43F9-8A40-3A11BE9D90A9"]/div[1]/a/span[1]/ul/li
${BioMonMonitoringPtSelect}                 xpath:(//a[text()='12'])
${BioMonSupportingDoc}                      xpath://*[@id="control_0B795949-90F9-415F-86CA-8D36F77A33DA"]/div[1]/div[1]/div[2]/b[2]
${BioMonSave}                               xpath://*[@id="btnSave_form_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C"]/div[3]
${BioMonProcessEdit}                        xpath:(//div[@id='divProcess_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${BioMonEnvPermitChk}                       xpath://*[@id="control_A784C4B6-3584-4E40-B0A7-98AE843FAC08"]/div[1]/div
${BioMonEnvPermitDrp}                       xpath://*[@id="control_1C8FE451-F691-4689-A2E8-2DA250B8CE06"]/div[1]/a/span[1]/ul/li
${BioMonEnvPermitSelect}                    xpath:(//a[text()='Blasting Permit'])
#************************************************* FR1- Capture Biodiversity Monitoring Altenate Scenario 2 ************
${BioMonLinkProjectChk}                     xpath://*[@id="control_2ADFA838-9686-4196-A907-EBC43CA3785C"]/div[1]/div
${BioMonLinkProjectDrp}                     xpath://*[@id="control_869F982F-5A16-4607-AD2E-10F456BDEDA6"]/div[1]/a/span[1]/ul/li
${BioMonLinkProjectSearch}                  xpath:(//input[@placeholder='Type to search'])[9]
${BioMonLinkProjectSelect}                  xpath:(//a[text()='auto test'])
${BioMonBUDeselect}                         xpath://*[@id="control_0A34F3A8-33FC-49F8-BC66-F024D376FBAD"]/div[1]/a/span[2]/b[2]
${BioMonBuSishen}                           xpath:(//a[text()='Sishen Mine'])
#************************************************* FR2-Capture Biodiversity Measurement - Flora ************************
${BioMeasureDrp}                            xpath://*[@id="control_B3F84844-A6B6-4BB2-ACA3-3D81D9839FB6"]/div[9]/div[1]/i
${BioMonFloraAdd}                           xpath://div[text()='Biodiversity Measurement - Flora']/../..//*[@id="btnAddNew"]/div
${BioMonFloraParamDrp}                      xpath://*[@id="control_B46DF15A-9778-418B-AA1F-A61438B2F129"]/div[1]/a/span[1]/ul/li
${BioMonFloraParamSrch}                     xpath:(//input[@placeholder='Type and enter to search'])[1]
${BioMonFloraParamXpath}                    xpath://*[@id="e354a8ce-1bb8-4591-bde1-9c2cda757815"]/i
${BioMonFloraSelect}                        xpath:(//a[text()='Combretum family'])
${BioMonFloraMonDrp}                        xpath://*[@id="control_9102937C-5520-46E7-BB92-CFB9139D570B"]/div[1]/a/span[1]/ul/li
${BioMonFloraMonSelect}                     xpath:(//a[text()='Rescue'])
${BioMonFloraMonNum}                        xpath://div[@id='control_E1D4AB68-7B21-47E8-9274-A14D7F44C5D2']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${BioMonFloraMonDrp2}                       xpath://*[@id="control_717709D5-7B19-4ED7-AF2C-40B5BB66C49C"]/div[1]/a/span[1]/ul/li
${BioMonFloraMonSrch}                       xpath:(//input[@placeholder='Type and enter to search'])[2]
${BioMonFloraMonSelect2}                    xpath:(//a[text()='1 Administrator'])
${BioMonFloraComment}                       xpath://*[@id="control_93F58914-D753-4661-9190-9ED31E3FDB09"]/div[1]/div/textarea
${BioMonFloraMonSave}                       xpath://div[text()='Biodiversity Measurement - Flora']/../..//*[@id="btnSaveAll"]/div

#************************************************* FR3-Capture Biodiversity Measurement - Fauna ************************
${BioMonTypeFauna}                          xpath:(//a[text()='Fauna'])
${BioFaunaMeasureDrp}                       xpath://*[@id="control_B3F84844-A6B6-4BB2-ACA3-3D81D9839FB6"]/div[9]/div[1]
${BioMonFaunaAdd}                           xpath://div[text()='Biodiversity Measurement - Fauna']/../..//*[@id="btnAddNew"]/div
${BioMonFaunaParamDrp}                      xpath://*[@id="control_6DAF2B80-5DB9-45CA-86B2-9A25058F0F56"]/div[1]/a/span[1]/ul/li
${BioMonFaunaParamSrch}                     xpath:(//input[@placeholder='Type and enter to search'])[1]
${BioMOnFaunaParamRum}                      xpath://*[@id="f5f54faa-0352-4b7d-b302-653b86740e79"]/i
${BioMonFaunaParamSel}                      xpath:(//a[text()='Buffalo and antelopes'])
${BioMonFaunaMonDrp}                        xpath://*[@id="control_C6D5514D-338D-4D8C-BD01-10C1253885A5"]/div[1]/a/span[1]/ul/li
${BioMonFaunaMonRescue}                     xpath:(//a[text()='Rescue'])
${BioMonfaunaMonCount}                      xpath:(//a[text()='Count'])
${BioMonFaunaTakenByDrp}                    xpath://*[@id="control_E4EB297F-7917-4077-BA32-C3E00CEAAC35"]/div[1]/a/span[1]/ul/li
${BioMonFaunaTakenBySrch}                   xpath:(//input[@placeholder='Type and enter to search'])[2]
${BioMonFaunaTakenBySel}                    xpath:(//a[text()='1 Administrator'])
${BioMonFaunaComment}                       xpath://*[@id="control_3E01B7D5-1805-4FDA-BFCC-FA4FA77F8F03"]/div[1]/div/textarea
${BioMonFaunaRelocPtDrp}                    xpath://*[@id="control_2947BE29-3B0A-4F30-8C8D-6EE0EBCB9651"]/div[1]/a/span[1]/ul/li
${BioMonFaunaRelocPtSel}                    xpath:(//a[text()='10'])[2]

#************************************************* FR4-Capture Findings ************************************************
${BioMonFindingDrp}                         xpath://*[@id="control_1871D179-7CFD-4DD1-8158-D48140711AFC"]/div[9]/div[1]
${BioMonFindingAdd}                         xpath://div[text()='Biodiversity Findings']/../..//*[@id="btnAddNew"]/div
${BioMonFindingProcess}                     xpath://*[@id="btnProcessFlow_form_0E7CADBB-8D75-42EA-BB3A-2BD553AB2749"]/span
${BioMonFindingDesc}                        xpath://*[@id="control_40ECC722-B08B-48F3-9906-3CFCE527C5CD"]/div[1]/div/textarea
${BioMonFindingFLDrp}                       xpath://*[@id="control_DE18F9A3-BBB4-4600-B420-0167AE11B426"]/div[1]/a/span[1]/ul/li
${BioMonFindingFLSel}                       xpath:(//a[text()='MIS | Sishen'])
${BioMonFindingOwnDrp}                      xpath://*[@id="control_434D9128-5EBC-4E25-9836-72A2C4451733"]/div[1]/a/span[1]/ul/li
${BioMonFindingOwnSrch}                     xpath:(//input[@placeholder='Type and enter to search'])[1]
${BioMonFindingOwnSel}                      xpath:(//a[text()='1 Administrator'])
${BioMonFindingClassDrp}                    xpath://*[@id="control_7689E71C-DC7E-41C1-9124-C6312596E956"]/div[1]/a/span[1]/ul/li
${BioMonFindingClassSel}                    xpath:(//a[text()='Recommendation'])
${BioMonFindingSave}                        xpath://*[@id="btnSave_form_0E7CADBB-8D75-42EA-BB3A-2BD553AB2749"]/div[3]