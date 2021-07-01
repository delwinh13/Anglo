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
${BioMonBUMining}                           xpath://*[@id="5722287f-6e82-4b60-94e9-945409d307df_anchor"]
${BioMonTypeDrp}                            xpath://*[@id="control_36075F35-DAB1-4FC2-B2D1-AB14ADE295D7"]/div[1]/a/span[2]/b[1]
${BioMonTypeSelect}                         xpath://*[@id="14eb5bf8-42fb-4f65-a1f9-b8f3448c2e62_anchor"]
${BioMonTypeDrp2}                           xpath://*[@id="14eb5bf8-42fb-4f65-a1f9-b8f3448c2e62"]
${BioMonMonthDrp}                           xpath://*[@id="control_50C453F4-08EA-4260-A516-FB66F7A31B26"]/div[1]/a/span[1]/ul/li
${BioMonMonthSelect}                        xpath:(//div[contains(@class, 'transition visible')]//a[text()='August'])
${BioMonYearDrp}                            xpath://*[@id="control_3D6D5440-22D5-49BD-8487-7DC13D7FD682"]/div[1]/a/span[2]/b[1]
${BioMonYearSelect}                         xpath:(//div[contains(@class, 'transition visible')]//a[text()='2018'])
${BioMonMonitoringPtDrp}                    xpath://*[@id="control_F94557BC-A37F-43F9-8A40-3A11BE9D90A9"]/div[1]/a/span[1]/ul/li
${BioMonMonitoringPtSelect}                 xpath://*[@id="48f5a992-7cd7-4d94-b3bf-072433ab0e47_anchor"]
${BioMonSupportingDoc}                      xpath://*[@id="control_0B795949-90F9-415F-86CA-8D36F77A33DA"]/div[1]/div[1]/div[2]/b[2]
${BioMonSave}                               xpath://*[@id="btnSave_form_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C"]/div[3]
${BioMonProcessEdit}                        xpath:(//div[@id='divProcess_FDA4AB9B-C01C-46D8-8B28-32599E7EB20C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${BioMonEnvPermitChk}                       xpath://*[@id="control_A784C4B6-3584-4E40-B0A7-98AE843FAC08"]/div[1]/div
${BioMonEnvPermitDrp}                       xpath://*[@id="control_1C8FE451-F691-4689-A2E8-2DA250B8CE06"]/div[1]/a/span[1]/ul/li
${BioMonEnvPermitSelect}                    xpath://*[@id="59a4c0fd-5ab5-4f1b-a46c-e92b54a2b3ec_anchor"]
#************************************************* FR1- Capture Biodiversity Monitoring Altenate Scenario 2 ************
${BioMonLinkProjectChk}                     xpath://*[@id="control_2ADFA838-9686-4196-A907-EBC43CA3785C"]/div[1]/div
${BioMonLinkProjectDrp}                     xpath://*[@id="control_869F982F-5A16-4607-AD2E-10F456BDEDA6"]/div[1]/a/span[1]/ul/li
${BioMonLinkProjectSearch}                  xpath:(//input[@placeholder='Type to search'])[9]
${BioMonLinkProjectSelect}                  xpath://*[@id="57fbf217-3650-4f4e-ab29-514e17a3d741_anchor"]
${BioMonBUDeselect}                         xpath://*[@id="control_0A34F3A8-33FC-49F8-BC66-F024D376FBAD"]/div[1]/a/span[2]/b[2]
${BioMonBuSishen}                           xpath://*[@id="25742496-c98d-431e-96c8-18619861422e_anchor"]
#************************************************* FR2-Capture Biodiversity Measurement - Flora ************************
${BioMeasureDrp}                            xpath://*[@id="control_B3F84844-A6B6-4BB2-ACA3-3D81D9839FB6"]/div[9]/div[1]/i
${BioMonFloraAdd}                           xpath://div[text()='Biodiversity Measurement - Flora']/../..//*[@id="btnAddNew"]/div
${BioMonFloraParamDrp}                      xpath://*[@id="control_B46DF15A-9778-418B-AA1F-A61438B2F129"]/div[1]/a/span[1]/ul/li
${BioMonFloraParamSrch}                     xpath:(//input[@placeholder='Type and enter to search'])[1]
${BioMonFloraParamXpath}                    xpath://*[@id="e354a8ce-1bb8-4591-bde1-9c2cda757815"]/i
${BioMonFloraSelect}                        xpath://*[@id="593e7944-194e-4064-b6a4-d90e577d7ca2_anchor"]
${BioMonFloraMonDrp}                        xpath://*[@id="control_9102937C-5520-46E7-BB92-CFB9139D570B"]/div[1]/a/span[1]/ul/li
${BioMonFloraMonSelect}                     xpath://*[@id="d19ff543-1ced-4699-b279-7d1bbbf8fdb7_anchor"]
${BioMonFloraMonNum}                        xpath://div[@id='control_E1D4AB68-7B21-47E8-9274-A14D7F44C5D2']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${BioMonFloraMonDrp2}                       xpath://*[@id="control_717709D5-7B19-4ED7-AF2C-40B5BB66C49C"]/div[1]/a/span[1]/ul/li
${BioMonFloraMonSrch}                       xpath:(//input[@placeholder='Type and enter to search'])[2]
${BioMonFloraMonSelect2}                    xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${BioMonFloraComment}                       xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[22]/div[9]/div[2]/div[2]/div[1]/div[2]/div[2]/div[1]/div[3]/table/tbody/tr/td[9]/div/div[1]/div/textarea
${BioMonFloraMonSave}                       xpath://div[text()='Biodiversity Measurement - Flora']/../..//*[@id="btnSaveAll"]/div

${BioMonTypeFauna}                          xpath://*[@id="cb4fcaca-baf0-4d1d-81d4-c93bfa675624_anchor"]
${BioFaunaMeasureDrp}                       xpath://*[@id="control_B3F84844-A6B6-4BB2-ACA3-3D81D9839FB6"]/div[9]/div[1]
