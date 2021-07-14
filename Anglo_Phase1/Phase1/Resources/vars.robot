*** Variables ***
#************************************************* Common Variables ****************************************************
${BROWSER}             Chrome
# ${URL}                 https://project-anglo.isometrix.net/login.aspx?signin=1
# QA2
${URL}                 https://isom-testprod.ssd.angloamerican.com/login.aspx?mixedmode=1

#${URL}                 https://isom-qa-sa.angloamerican.com/login.aspx?mixedmode=1
#${URL}                 https://isom-dev.angloamerican.com/login.aspx?mixedmode=1
#${Error Message Text}  Validation: Please enter value

# ${URL}                 https://isom-qa-sa.angloamerican.com/login.aspx?mixedmode=1
# Pre-Prod
#${URL}                  https://isom-dev.angloamerican.com/login.aspx?mixedmode=1
${Error Message Text}  Validation: Please enter value

${Password Value}      Admin123
${Username Value}      AutoTest
${TYPE OF FILE}        png
${Path}

#************************************************* Common Elements ****************************************************
${LoadingBarXpath}                      xpath://div[@class='-loading-color']
${WaitDivXpath}                         xpath://div[@id='divWait']
${WaitLoaderID}                         id:txtWait
${IsoMetrixHomeXpath}                   xpath://div[@id='divSiteName']
${LoadingDataXpath}                     xpath:(//div[@id='divWait']/div[text()='Loading data...'])[2]
${LoadingChecklist}                     xpath:(//div[text()='Loading checklist...'])[1]
${LoadingPermissions}                   xpath:(//div[text()='Loading permissions'])[1]

#************************************************* Login Page Elements *************************************************
${Usernameid}                           id:txtUsername
${Passwordid}                           id:txtPassword
${SubmitButtonid}                       id:btnLoginSubmit
${Error Message}                        xpath://*[@id="txtUsername_tt_active"]/div[2]
${Sidebarlink}                          xpath://*[@id='default-page']/body/div/div[1]/a/i
${SSOIsoSignInBtn}                      xpath://div[@id='btnIsometrixSignin']

#************************************************* Unit Of Measure Module **********************************************
${EnvSustainabilityXpath}               xpath://*[@id="section_53a09f09-ff3f-4a37-8482-d9f284add907"]/label
${iFrame}                               xpath://*[@id='ifrMain']
${EPMaintenanceID}                      id:section_b55eceda-0607-46a4-a20e-96cd54dee039
${UnitOfMeasureID}                      id:section_9b39b02a-8daa-4d49-ba83-336829ca77fb
${AddButtonID}                          id:btnActAddNew
${PFlowBtnID}                           id:btnProcessFlow_form_65E8F107-9B9D-4311-A087-401A98AB0E50
${ComponentDdID}                        id:control_9F84D334-9A52-42CB-B6A5-547EF32591A1
${ComponentDdSelectID}                  id:fe7335a0-5b65-4423-b0b3-96bcf651d95e_anchor
${SaveBtnID}                            id:btnSave_form_65E8F107-9B9D-4311-A087-401A98AB0E50
${AddMeasureUnitBtnID}                  id:btnAddNew
${UnitOfMeasureTxtFieldXpath}           xpath://div[@id='control_A726BA2B-AEFA-4B90-8EF2-6913A970AE9C']//input
${UnitOfMeasureLabelXpath}              xpath://div[@id='control_502105A4-62FF-4450-AC69-E4036A03C6A2']/div[1]/div[1]
${UnitOfMeasureSaveBtnID}               id:btnSaveAll
${ComponentDdSelect2ID}                 id:20aeca5d-3a98-477c-8a06-8142ccc9a1fd_anchor

#******************************************** Monitoring Points Module *************************************************
${MonitoringPointsID}                   id:section_eddd5718-7a5c-45d2-97da-48d8a4cd1d3b
${PFlowBtn2ID}                          id:btnProcessFlow_form_931EA7CE-BE6A-4F9B-957E-215A56CA0958
${BusinessUnitDdID}                     id:control_AEEA9167-3331-4242-BBE1-97783EDE536D
${BusinessUnitDdExpandXpath}            xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${BusinessUnitDdExpand2Xpath}           xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${BusinessUnitDdExpand3Xpath}           xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${BusinessUnitDdSelectID}               id:01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor
${ParameterCompDdID}                    id:control_7E584682-73F8-4B54-AB2B-4C64801F494B
${ParameterCompSelectID}                id:3b51174f-d0da-4ed3-a444-2278227d3b49_anchor
${SuppportDocumentTabID}                id:tab_56C86DEE-96E7-42E0-8FF2-B3EA105AA3C5
${LinkToDocumentBtnXpath}               xpath://b[@class='linkbox-link']
${URLTextFieldID}                       id:urlValue
${URLTitleTextFieldID}                  id:urlTitle
${URLAddBtnID}                          id:btnConfirmYes
${MonitoringPointsSaveBtnID}            id:btnSave_form_931EA7CE-BE6A-4F9B-957E-215A56CA0958
${PointsTabID}                          id:tab_DF2232D6-AC27-4881-8568-C43830388CBD
${PointsAddBtnID}                       id:btnAddNew
${PointsPFlowBtnID}                     id:btnProcessFlow_form_24F62D40-8970-4FEF-84C5-B0FFB645C2DE
${PointRefTextFieldXpath}               xpath://div[@id='control_D1A25D38-5B21-4A5B-9019-0C08F1549DDE']//input
${EnvClassDdID}                         id:control_E90F0C48-2E86-428E-A5CD-4AD8B96833AB
${EnvClassDdExpandXpath}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li/i
${EnvClassDdSelectID}                   id:cb4fcaca-baf0-4d1d-81d4-c93bfa675624_anchor
${PointDescriptionTxtFieldXpath}        xpath://div[@id='control_FCB5573F-C6EC-4096-B32F-995B4D88463A']//input
${LatitudeFiledXpath}                   xpath://div[@id='control_92A98992-94E1-4D02-97D2-60F0F5BC6518']//input
${LongitudeFiledXpath}                  xpath://div[@id='control_D2B05371-768C-48EE-A411-DA7A1DC07BB8']//input
${PointsSaveBtnID}                      id:btnSave_form_24F62D40-8970-4FEF-84C5-B0FFB645C2DE
${PointsCloseBtnXpath}                  xpath://div[@id='form_24F62D40-8970-4FEF-84C5-B0FFB645C2DE']/div[1]/i[2]
${ParameterCompSelect2ID}               id:c0373d41-17af-4821-bfc2-4545c7005282_anchor

${Eco2ManXpath}                         xpath://*[@id="section_8df5db42-17ed-4a74-97da-30a5fd14d2de"]
${ClimateChangeMonitoringID}            id:section_337ab220-0d60-4f83-8999-e8e81443068b
${ClimateChangeMonitoringAddBtnID}      xpath://*[@id="btnActAddNew"]
${ClimateChangePFlowID}                 id:btnProcessFlow_form_9DC31173-8C5B-4ACF-AF93-B0F59005FBC5
${BusinessUnitDdXpath}                  xpath://div[@id='control_C57FA867-0410-4DFD-A737-68E1D6309394']//li
${CBusinessUnitDdExpandXpath}           xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
${CBusinessUnitDdExpand2Xpath}          xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
${CBusinessUnitSelectID}                id:25742496-c98d-431e-96c8-18619861422e_anchor
${DateMonthDdXpath}                     xpath://div[@id='control_AF87ED2E-44C9-4AC7-AAE0-5125CE96AD8F']//li
${DateMonthSelectID}                    id:03cdeeb5-a3aa-4e91-84ee-15a51cfeb937_anchor
${DateYearDdXpath}                      xpath://div[@id='control_F0DDC82D-46D3-427A-933F-267393C3CC0A']//li
${DateYearSelectID}                     id:edca662b-6e8e-4a45-9ec2-da82da358739_anchor
${DateCapturedFieldXpath}               xpath://div[@id='control_F9C3B7D9-8F8B-4868-A84F-30F83FF3E98E']//input
${LinkEnvPermitBoxXpath}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[17]/div[1]/div
${LinkToProjectsBoxXpath}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[19]/div[1]/div
${LinkEnvPermitDdXpath}                 xpath://div[@id='control_BDA4C696-A3A2-4206-845A-DE48EED2197F']//li
${LinkEnvPermitSelectID}                id:7a80b074-62c2-4d5b-bcaa-1b61a95dc44c_anchor
${LinkToProjectsDdXpath}                xpath://div[@id='control_B6CA027C-6F9F-4724-A51F-40AB0BB24216']//li
${LinkToProjectsSelectID}               id:18c0a832-c968-41ac-9ae7-66907fc45aa1_anchor
${LinkToDocumentBtnXpath}               xpath:moduleOptionsTextField5dd20feb-5814-461c-a56f-050bd08e16e0
${URLTextFieldID}                       id:urlValue
${TitleTextFieldID}                     id:urlTitle
${URLSaveBtnID}                         id:btnConfirmYes
${ClimateChangeSaveBtnID}               id:btnSave_form_9DC31173-8C5B-4ACF-AF93-B0F59005FBC5
${MeasurementsToggleXpath}              xpath://div[@id='control_6769E488-23D3-4A3B-8591-701675285E0C']/div[9]/div[1]/i
${InlineEditToggleXpath}                xpath://div[@id='control_60C4A7BD-C45E-44C2-A73B-43B47347EEE4']//div[@id='grid']/div[4]/div/div[2]/div[1]/div/div
${MeasurementsAddBtnID}                 id:btnAddNew
${MeasurementPFlowID}                   id:btnProcessFlow_form_95961001-9461-4A83-94CE-F3B754B535A8
${EmissionSourceDdXpath}                xpath://div[@id='control_FE707531-9D1D-4591-86A9-6E667856415B']//li
${EmissionSourceExpandXpath}            xpath://li[@id='641be36e-62f9-4a4f-8516-bcaa95b0e996']/i
${EmissionSourceExpand2Xpath}           xpath://li[@id='04057da3-9fbc-4b5b-b5d1-e8035175a22d']/i
${EmissionSourceSelectID}               id:a27eefed-8cc7-45ba-8ba2-005edd1dd805_anchor
${MeasurementNumberFieldXpath}          xpath://div[@id='control_18C58CFC-2E75-44F3-A490-E6833BA28142']//input[@id='numberInput']
${MeasurementDdXpath}                   xpath://div[@id='control_2F9EA8A6-E0B0-46C7-ABDE-030F8A2692CC']//li
${MeasurementSelectId}                  id:521a334d-47d8-49d0-8f2e-fcbf89095a22_anchor
${TargetNumberFieldXpath}               xpath://div[@id='control_4BF33F0A-9B7D-44F4-ADFD-75B9915C3B98']//input[@id='numberInput']
${TargetDdXpath}                        xpath://div[@id='control_2ED61E8F-494F-49AC-AC2F-9ED47E59AD05']//li
${TargetSelectID}                       id:19cf1ca6-a649-44d7-89ea-cc0189040a1d_anchor
${MeasurementsSaveBtnID}                id:btnSave_form_95961001-9461-4A83-94CE-F3B754B535A8
${MeasurementsCloseBtnXpath}            xpath://div[@id='form_95961001-9461-4A83-94CE-F3B754B535A8']/div[1]/i[2]
${MonitoringFindingsToggleXpath}        xpath://div[@id="control_E3FBB8B8-AD84-4486-A09C-15EDB5695A5A"]/div[9]/div[1]/i
${MontoringFindingsAddBtnXpath}         xpath://div[@id='control_C720B63A-3CE3-42E1-AF58-AC414614A925']//div[@id='btnAddNew']
${MonitoringFindingsPFlowID}            id:btnProcessFlow_form_ABA81AE7-7747-4DDB-89BE-3702E9BDD96C
${MonitoringFindingsDescrFieldXpath}    xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']//textarea
${FindingOwnerDdXpath}                  xpath://div[@id='control_434D9128-5EBC-4E25-9836-72A2C4451733']//li
${FindingOwnerSearchBarXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[40]/div[1]/input
${FindingOwnerSelectID}                 id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${FindingClassDdXpath}                  xpath://div[@id='control_7689E71C-DC7E-41C1-9124-C6312596E956']//li
${FindingClassSelectID}                 id:213002b8-5781-4d12-880a-a6480b225eac_anchor
${FindingClosureDateXpath}              xpath://div[@id='control_1318D08E-2DA5-47DC-AFC8-0E99CC12C72A']//input
${RiskSourcesDdXpath}                   xpath://div[@id='control_E2CBB706-26AB-4373-813A-05D4860FC38F']//li
${RiskSourcesSelectXpath}               xpath://a[@id='20aeca5d-3a98-477c-8a06-8142ccc9a1fd_anchor']/i[1]
${RelatedPermitsDdXpath}                xpath://div[@id='control_6FC51E0E-C6FD-4316-940D-2DC2029A0ECA']//li
${RelatedPermitsSelectXpath}            xpath:/html/body/div[1]/div[3]/div/div[2]/div[44]/ul[1]/ul/li[1]/a/i[1]
${RelatedGroupStandrdDdXpath}           xpath://div[@id='control_5DBAAA36-2C4B-41BF-9E19-9C13FF03A076']//li
${RelatedGroupStandrdSelectID}          id:e4db7081-5761-4ae9-b28e-2f709771e997_anchor
${FindingsDocLinkBtnXpath}              xpath://div[@id='control_26D8DE84-DA5D-40D8-A3C5-890D11364B66']/div[1]/div[1]/div[2]/b[2]
${FindingsURLFieldID}                   id:urlValue
${FindingsURLTitleID}                   id:urlTitle
${FindingsURLSaveBtnID}                 id:btnConfirmYes
${FindingsSaveBtnID}                    id:btnSave_form_ABA81AE7-7747-4DDB-89BE-3702E9BDD96C
${FindingsCloseBtnXpath}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[31]/div[1]/i[2]
${FindingsModalYesBtn}                  id:btnConfirmYes

#*********************************************** Carbon Price Module ***************************************************
${MonitoringMaintenancePageId}          id:section_b1217655-0e30-41c6-b49d-97bc719b1d0a
${CarbonPriceXpath}                     xpath://div[@id='section_c00f7559-1d41-4410-88b1-9eca39068437']/label
${CarbonPriceAddBtnID}                  id:btnActAddNew
${CarbonPFlowID}                        id:btnProcessFlow_form_D2EC7B64-36DA-4789-8F41-2610172F0911
${CarbonBusinessUnitDdXpath}            xpath://div[@id='control_C4ADD04B-C281-4CE0-B3FE-A09954392A17']/div[1]/a/span[2]/b[1]
${CarbonBusinessUnitXpandXpath}         xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${CarbonBusinessUnitXpand2Xpath}        xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${CarbonBusinessUnitSelectXpath}        xpath://a[@id='01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor']/i[1]
${CEmissionSourceDdXpath}               xpath://div[@id='control_6BE3C6D9-03AF-44A9-ACB3-16387ACD1A9A']//li
${CEmissionSourceDdXpandXpath}          xpath://li[@id='641be36e-62f9-4a4f-8516-bcaa95b0e996']/i
${CEmissionSourceDdXpand2Xpath}         xpath://li[@id='04057da3-9fbc-4b5b-b5d1-e8035175a22d']/i
${CEmissionSourceDdSelectXpath}         xpath://a[@id='1ac16d37-b159-4e7d-94c7-1bf262240ec9_anchor']/i[1]
${CarbonPriceNumberFieldXpath}          xpath://div[@id='control_1ACE4184-CBD8-4C00-941E-EA83A607C7B0']//input
${CarbonStartDateXpath}                 xpath://div[@id='control_F2A13E8A-05F8-4571-9AFE-29BFECFC0CBB']//input
${CarbonSaveBtnID}                      id:btnSave_form_D2EC7B64-36DA-4789-8F41-2610172F0911

#********************************************* Emission Linking Module *************************************************
${EmissionLinkingXpath}                 xpath://div[@id='section_dbc71c04-d870-46bf-bd36-a84f15b8248d']/label
${EmissionLinkingAddBtnID}              id:btnActAddNew
${EmissinLinkingPFlowID}                id:btnProcessFlow_form_8D1C41B6-81BE-4765-B7A7-AC44E3D9DA98
${EmissionBusinessUnitDdXpath}          xpath://div[@id='control_D16E76B1-4B04-48EF-BF7C-BCD73D729EE1']//li
${EmissionBusinessUnitDdXpandXpath}     xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${EmissionBusinessUnitDdXpand2Xpath}    xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${EmissionBusinessUnitDdSelectID}       id:01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor
${EmissionFactorDBDdXpath}              xpath://div[@id='control_7D8DD5E3-FAAC-4D39-8EB7-DE88C50D49DB']//li
${EmissionFactorDBDdSelectID}           id:cc02a5ef-8580-411c-ad0e-578095619838_anchor
${EmissionLinkingSaveBtnID}             id:btnSave_form_8D1C41B6-81BE-4765-B7A7-AC44E3D9DA98
${EmissionLinkingValuesAddBtnID}        id:btnAddNew
${EmissionLinkingValuesPFlowID}         id:btnProcessFlow_form_5EC57CD7-AC03-4C01-8885-9C5392F189FA
${EmissionLinkingSourceDdXpath}         xpath://div[@id='control_CF972741-28BF-436F-B4ED-CAB608060B06']//li
${EmissionLinkingSourceDdXpandXpath}    xpath://li[@id='1275bd1b-345f-4310-aec1-233dabf34f62']/i
${EmissionLinkingSourceDdSelectID}      id:641be36e-62f9-4a4f-8516-bcaa95b0e996_anchor
${YearOfComplianceDdXpath}              xpath://div[@id='control_8455965D-CEE6-412E-ABD6-EA623E308E38']//li
${YearOfComplianceDdSelectID}           id:bfdf5e93-32ba-457a-8e69-1a581f400e38_anchor
${CO2eFactorNumberFieldXpath}           xpath://div[@id='control_BC17FC79-35CA-495F-A00F-8B003161C870']//input
${CO2FactorNumberFieldXpath}            xpath://div[@id='control_2AF62128-D8BB-421B-B110-ED225DE34FDE']//input
${CH4FactorNumberFieldXpath}            xpath://div[@id='control_8A9A22DD-0AED-47E8-AABB-CF34D2BEF9C0']//input
${N2OFactorNumberFieldXpath}            xpath://div[@id='control_9B44E894-2882-44B7-B285-60E7C0C99E02']//input
${CO2eFactorUnitDdXpath}                xpath://div[@id='control_6658AAC9-2F62-4AB7-AE78-B917650C6C10']//li
${CO2eFactorUnitDdSelectID}             id:521a334d-47d8-49d0-8f2e-fcbf89095a22_anchor
${CO2FactorUnitDdXpath}                 xpath://div[@id='control_8FEFAEF9-9EB8-45DD-9791-16EB8B8D2827']//li
${CO2FactorUnitDdSelectXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[4]
${CH4FactorUnitDdXpath}                 xpath://div[@id='control_0EB583F9-37CD-44C2-AA6F-757C03DBFB14']//li
${CH4FactorUnitDdSelectXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[11]/ul[1]/ul/li[6]
${N2OFactorUnitDdXpath}                 xpath://div[@id='control_ECF4EEE4-0466-405B-8B2A-DEFFE41AF9D3']//li
${N2OFactorUnitDdSelectXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[7]
${DefaultEmissionFactorBoxXpath}        xpath://div[@id='control_24C2F8C6-A8E4-4FE4-97AD-155EB95C070D']/div[1]/div
${CalculationsTxtBoxXpath}              xpath://div[@id='control_0AD176E4-0BA0-427A-81F2-F307D83E1014']//input
${EmissionLinkingSaveBtnXpath}          xpath:/html/body/div[1]/div[3]/div/div[2]/div[5]/div[2]/div[2]/div[1]/div[3]
${EmissionLinkingCloseBtnXpath}         xpath://div[@id='form_5EC57CD7-AC03-4C01-8885-9C5392F189FA']/div[1]/i[2]
${EmissionFactorDbSelect2ID}            id:110c519d-5030-43f2-964e-5b009451602c_anchor

#******************************************** Emission Factors Module **************************************************
${EmissionFactorsXpath}                 xpath:/html/body/div/div[3]/div[3]/div/div/div/div[12]/div[2]
${EmissionFactorsAddBtnID}              id:btnActAddNew
${EmissionFactorsPFlowID}               id:btnProcessFlow_form_7D7FA005-B236-4D95-B304-726C81824281
${EmissionFactorsDbDDXpath}             xpath://div[@id='control_44B79FEA-DBFB-401F-9514-274AC655FBAC']//li
${EmissionFactorsDbDDSelectID}          id:a659b6aa-759b-4455-809c-7fa64d844931_anchor
${EmissionFactorsSaveBtnID}             id:btnSave_form_7D7FA005-B236-4D95-B304-726C81824281
${EFValuesAddBtnID}                     id:btnAddNew
${EFValuesPFlowID}                      id:btnProcessFlow_form_6365E550-4513-4ED0-A3FB-A368DD15D267
${EFSourceDDXpath}                      xpath://div[@id='control_791937AB-47E9-4215-B5BD-200EBA0B43B0']//li
${EFSourceDDXpandXpath}                 xpath://li[@id='641be36e-62f9-4a4f-8516-bcaa95b0e996']/i
${EFSourceDDXpand2Xpath}                xpath://li[@id='04057da3-9fbc-4b5b-b5d1-e8035175a22d']/i
${EFSourceDDSelectID}                   id:a27eefed-8cc7-45ba-8ba2-005edd1dd805_anchor
${EFYearOfComplianceDDXpath}            xpath://div[@id='control_9B154DF9-A889-4D4D-A995-4396246FF75A']//li
${EFYearOfComplianceDDSelectID}         id:bfdf5e93-32ba-457a-8e69-1a581f400e38_anchor
${EFCO2eFieldXpath}                     xpath://div[@id='control_CE05B67C-AC1F-4F46-8A24-4B77D7B8322D']//input
${EFCO2FieldXpath}                      xpath://div[@id='control_8C5E0269-7D45-4D0A-A804-0736E36DC262']//input
${EFCH4FieldXpath}                      xpath://div[@id='control_94BA5E0F-FF18-4895-ADB4-59DFB3E2066A']//input
${EFN2OFieldXpath}                      xpath://div[@id='control_13FA463C-4CF9-49B4-9082-31560EB99E79']//input
${EFCO2eDDXpath}                        xpath://div[@id='control_F5025329-279F-4525-BC9B-4C683E5F4573']//li
${EFCO2eDDSelectID}                     id:19cf1ca6-a649-44d7-89ea-cc0189040a1d_anchor
${EFCO2DDXpath}                         xpath://div[@id='control_243FD520-BE11-49F3-8241-D333DC68E1DF']//li
${EFCO2DDSelectXpath}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[9]/ul[1]/ul/li[3]/a
${EFCH4DDXpath}                         xpath://div[@id='control_9E8A6EF7-9515-4F1D-93F8-3C4F5B090ABD']//li
${EFCH4DDSelectXpath}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[4]/a
${EFN2ODDXpath}                         xpath://div[@id='control_FD89FEA2-D846-4B8E-84D5-F6F6347C943C']//li
${EFN2ODDSelectXpath}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[11]/ul[1]/ul/li[7]/a
${EFSaveBtnXpath}                       xpath://div[@id='btnSave_form_6365E550-4513-4ED0-A3FB-A368DD15D267']/div[3]
${EFCloseBtnXpath}                      xpath://div[@id='form_6365E550-4513-4ED0-A3FB-A368DD15D267']/div[1]/i[2]
${EmissionFactorsDbDDSelect2ID}         id:110c519d-5030-43f2-964e-5b009451602c_anchor

#***************************************** Energy Physical Properties Module *******************************************
${EnergyPhysicalPropertiesXpath}        xpath://div[@id='section_9bd5e6b4-600b-46b7-a622-ddff8dfead76']/label
${EPPAddBtnID}                          id:btnActAddNew
${EPPPFlowBtnID}                        id:btnProcessFlow_form_B7F1A741-1662-46F4-A0D5-A2147279A382
${EPPBusinessUnitDdXpath}               xpath://div[@id='control_0932E6DE-A925-464C-B322-01DDE794B102']//li
${EPPBusinessUnitDdXpandXpath}          xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${EPPBusinessUnitDdXpand2Xpath}         xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${EPPBusinessUnitDdSelectID}            id:01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor
${EPPEmissionSourceDdXpath}             xpath://div[@id='control_23791483-BB35-4623-A889-8BA40DEB418D']//li
${EPPEmissionSourceDdXpandXpath}        xpath://li[@id='641be36e-62f9-4a4f-8516-bcaa95b0e996']/i
${EPPEmissionSourceDdXpand2Xpath}       xpath://li[@id='04057da3-9fbc-4b5b-b5d1-e8035175a22d']/i
${EPPEmissionSourceDdSelectID}          id:1ac16d37-b159-4e7d-94c7-1bf262240ec9_anchor
${EPPDensityFieldXpath}                 xpath://div[@id='control_05261959-0066-4BF4-B766-732FA76470A2']//input
${EPPDensityDdXpath}                    xpath://div[@id='control_E59E1BCA-D67F-40B4-89CF-59097C91044B']//li
${EPPDensityDdSelectID}                 id:521a334d-47d8-49d0-8f2e-fcbf89095a22_anchor
${EPPDensitySourceFieldXpath}           xpath://div[@id='control_1D738EDB-C3C5-41A5-94B6-0CB60ECAAC38']//input
${EPPNCVFieldXpath}                     xpath://div[@id="control_9342EEC5-9C76-4DF3-9CEF-83CF03C9547A"]//input
${EPPNCVUnitDdXpath}                    xpath://div[@id='control_BF7E3EAD-2C5E-4218-89BF-D8374E787E49']//li
${EPPNCVUnitDdSelectXpath}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[7]/ul[1]/ul/li[6]/a
${EPPNCVSourceFieldXpath}               xpath://div[@id='control_5490F4A9-FE7C-4E74-947A-9C8E6107EAB1']//input
${EPPSaveBtnXpath}                      xpath://div[@id='btnSave_form_B7F1A741-1662-46F4-A0D5-A2147279A382']/div[3]

#************************************************* Top Event Module ****************************************************
${TopEventXpath}                        xpath://div[@id='section_a034254b-11cb-41ed-83a0-88cb548376a5']/label
${TopEventAddBtnID}                     id:btnActAddNew
${TopEventPFlowID}                      id:btnProcessFlow_form_3ED48787-6337-4D63-9A5F-A1D224E0C6C6
${TopEventBUnitDdXpath}                 xpath://div[@id='control_2D9C19F9-6922-4E9A-A1A1-2A5D2DC04311']//li
${TopEventBUnitDdXpandXpath}            xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${TopEventBUnitDdXpand2Xpath}           xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${TopEventBUnitDdXpand3Xpath}           xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${TopEventBUnitDdSelectID}              id:01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor
${TopEventDescriptionFieldXpath}        xpath://div[@id='control_4123D9B2-73C2-497C-8385-1CF67FD8DD8D']//textarea
${TopEventRiskOwnerDdXpath}             xpath://div[@id='control_0D20448A-3D6C-4513-89F6-43F1C2021529']//li
${TopEventRiskOwnerSelectID}            id:ae1b92ea-dadc-4410-8e3d-5f386e265da9_anchor
${TEPriorityUnwantedEventDdXpath}       xpath://div[@id='control_9051B571-FCFF-4073-93F6-80A428F43D4E']//li
${TEPriorityUnwantedEventDdSelectID}    id:948a4985-dba6-436d-997b-957e764ad073_anchor
${TEHazard/RiskSourceXpath}             xpath://div[@id='control_099E1C99-1C68-4A33-9097-E6450CBC1721']//input
${RiskSourceDescriptionXpath}           xpath://div[@id='control_38B5BF79-0984-4473-BE95-AB3DD3811E02']//input
${TEBowtieStatusXpath}                  xpath://div[@id='control_E826AF62-8D4A-4BAC-816E-CCF2BE7976CF']/div[1]
${TopEventSaveBtnID}                    id:btnSave_form_3ED48787-6337-4D63-9A5F-A1D224E0C6C6

#************************************************* Process Mapping Module **********************************************
${PMMaintenancePageXpath}               xpath://*[@id="section_0f6302e7-ca41-4d2c-96dc-af3cb8ff63c3"]/i
${ProcessMappingXpath}                  xpath://*[@id="section_eac0a6b4-5a7b-41ea-89e8-3127212e9d35"]
${PMAddBtnID}                           id:btnActAddNew
${PMProcessFlowID}                      id:btnProcessFlow_form_9466C71F-302B-4132-AA97-B9423BA17B18
${PMBusinessUnitDdXpath}                xpath://div[@id='control_5EAD4695-395F-45EF-A800-F193D78EEEEF']/div[1]/a/span[2]/b[1]
${PMBusinessUnitXpandXpath}             xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${PMBusinessUnitXpand2Xpath}            xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${PMBusinessUnitXpand3Xpath}            xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${PMBusinessUnitSelectXpath}            xpath://a[@id='01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor']/i[1]
${PMBusinessAreaXpath}                  xpath://div[@id='control_9E44085F-2156-465D-A127-E92B86A051D3']//input
${PMProcessDescriptionXpath}            xpath://div[@id='control_41CB5EDC-EE75-4FF6-AF84-80495D16E11C']//textarea
${PMProcessOwnerDdXpath}                xpath://div[@id='control_4A4891D2-AC05-45DC-BA88-3AD2B41E3B94']//li
${PMProcessOwnerSrchXpath}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[6]/div[1]/input
${PMProcessOwnerSelectID}               id:b8ad5f90-d582-46c4-b186-d99649824acd_anchor
${PMReferenceFieldXpath}                xpath://div[@id='control_FDFBF4A6-5416-4A36-AF6A-8D52D62F05D8']//input
${PMLifecycleDdXpath}                   xpath://div[@id='control_15FAB4B6-7F13-435B-9462-A177DC54EECE']//li
${PMLifecycleSelectXpath}               xpath://a[@id='1dcb259e-29b1-4b4c-8f00-79ac009bba82_anchor']/i[1]
${PMLinkToProcessXpath}                 xpath://div[@id='control_0FFB79D4-A97A-4D02-8C25-DDE2AF9D4936']//input
${PMSupportingDocTabXpath}              xpath://li[@id='tab_F350BE30-1A7C-46AF-A545-9D2559B15E18']/div[1]
${PMLinkToDocXpath}                     xpath://div[@id='control_AB61A204-A5AF-402D-98BA-0BE921FC6068']/div[1]/div[1]/div[2]/b[2]
${PMURLFieldID}                         id:urlValue
${PMURLTileFieldID}                     id:urlTitle
${PMURLAddBtnID}                        id:btnConfirmYes
${PMProcessTabXpath}                    xpath://li[@id='tab_BBA92D22-ACCC-4A38-AB5C-B42139E98F03']/div[1]
${PMSaveBtnID}                          id:btnSave_form_9466C71F-302B-4132-AA97-B9423BA17B18
${PMSubProcessTabXpath}                 xpath://li[@id='tab_9756E4AF-2F63-4B8F-AE2A-5756FB354B0D']/div[1]
${PMSubProcessAddBtnXpath}              xpath://div[@id='btnAddNew']/div
${PMSPProcessFlowID}                    id:btnProcessFlow_form_B1E24D8D-F50C-46A1-A028-58B9BF8A3C4B
${PMSubProcessfieldxpath}               xpath://div[@id='control_E4E86E12-2FDE-458B-9A26-13324EF8B80A']//input
${PMSPDescriptionFieldXpath}            xpath://div[@id='control_1FB34881-BF6F-4C5B-832D-532C30E84AA2']//textarea
${PMSPReferenceFieldXpath}              xpath://div[@id='control_944A8146-2FD2-4B0D-8D8A-24A89046456B']//input
${PMSPOrderFieldXpath}                  xpath://div[@id='control_927D5D57-08DB-4654-BD81-20F039F3DDF9']//input
${PMSPLinkedHazardToggleXpath}          xpath://div[@id='control_37C228C9-2C69-4197-A081-C1DF64FF1673']/div[9]/div[1]/i
${PMSPRiskSourceDdXpath}                xpath://div[@id='control_4523FB10-AB56-4B49-9814-ECAEA778B8FD']//li
${PMSPRiskSourceSelectXpath}            xpath://a[@id='20aeca5d-3a98-477c-8a06-8142ccc9a1fd_anchor']/i[1]
${PMSPSupportDocTabXpath}               xpath://li[@id='tab_2914609A-7809-4CF3-9DF7-AD3E953EAC97']/div[1]
${PMSPLinkToDocXpath}                   xpath://div[@id='control_12812464-3714-483D-9522-5A1AF9F90CFE']/div[1]/div[1]/div[2]/b[2]
${PMSPURLFieldID}                       id:urlValue
${PMSPURLTileFieldID}                   id:urlTitle
${PMSPURLAddBtnID}                      id:btnConfirmYes
${PMSubProcessTabXpath}                 xpath://li[@id='tab_55CB9C71-6842-440B-9103-2CF70991F27E']/div[1]
${PMSPSaveBtnID}                        xpath:/html/body/div[1]/div[3]/div/div[2]/div[8]/div[2]/div[2]/div[1]/div[3]
${SPActivitiesTabID}                    xpath://*[@id="tab_A83AA67B-E370-4B60-8940-C231529D9F68"]
${SPActivitiesAddBtnXpath}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[8]/div[4]/div[4]/div[9]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]
${SPActivitiesPFlowID}                  id:btnProcessFlow_form_A36D4BFE-B774-49D6-B690-EC0BBC222DBE
${SPActivitiesActivityXpath}            xpath://div[@id='control_1E269240-6A0E-475F-867C-8F09A0F2854B']//input
${SPActivitiesActivityDescrXpath}       xpath://div[@id='control_1B44EA3A-7E53-48D2-AA5E-D17F4F7B84F7']//textarea
${SPActivitiesOrderXpath}               xpath://div[@id='control_122D7B50-B9A8-4142-805F-86F8EC54D91A']//input
${SPActivitiesSDocTabXpath}             xpath://li[@id='tab_A9A66ACB-80B6-43EE-A78A-791D1CA87FF7']/div[1]
${SPActivitiesLinkToDocXpath}           xpath://div[@id='control_2E0EC5DF-FA18-4D8A-A190-C3E6F77A5279']/div[1]/div[1]/div[2]/b[2]
${SPActivitiesSPURLFieldID}             id:urlValue
${SPActivitiesURLTileFieldID}           id:urlTitle
${SPActivitiesURLAddBtnID}              id:btnConfirmYes
${SPActivitiesTabXpath}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/div[4]/div[4]/div[9]/div[1]/div[3]/ul/li[1]
${SPActivitiesSaveBtnID}                id:btnSave_form_A36D4BFE-B774-49D6-B690-EC0BBC222DBE
${SPActivitiesCloseBtnXpath}            xpath://div[@id='form_A36D4BFE-B774-49D6-B690-EC0BBC222DBE']/div[1]/i[2]
${SPCloseBtnXpath}                      xpath://div[@id='form_B1E24D8D-F50C-46A1-A028-58B9BF8A3C4B']/div[1]/i[2]

#************************************************* Process Mapping Module **********************************************
${EvaluatePMaintenanceID}               id:section_b55eceda-0607-46a4-a20e-96cd54dee039
${HazardCategoriesXpath}                xpath://div[@id='section_b74e0a1a-4888-47e8-b331-b8344b51c119']/label
${HazardCategoriesAddBtnID}             id:btnActAddNew
${HCProcessFlowID}                      id:btnProcessFlow_form_664FCCCE-1B21-4993-8A0A-7ECF4C2B755A
${HCBusinessUnitDdXpath}                xpath://div[@id='control_985F11A4-20D0-4B38-9C5D-A2FBA77FEE4F']/div[1]/a/span[2]/b[1]
${HCBusinessUnitDdXpandXpath}           xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${HCBusinessUnitDdXpand2Xpath}          xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${HCBusinessUnitDdXpand3Xpath}          xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${HCBusinessUnitDdSelectXpath}          xpath://a[@id='01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor']/i[1]
${HCTypeFieldXpath}                     xpath://div[@id='control_C56E686E-2AB6-492D-B404-14ADD73C1183']//input
${HCDescriptionFieldXpath}              xpath://div[@id='control_8E6F725F-3104-4EA0-B07D-3EE3999BF5AA']//textarea
${HCSaveBtnID}                          id:btnSave_form_664FCCCE-1B21-4993-8A0A-7ECF4C2B755A
${HCLevel2AddBtnXpath}                  xpath://*[@id="btnAddNew"]/div
${HCLevel2ProcessFlowID}                id:btnProcessFlow_form_00BB707A-F08E-4857-BDFF-308CD57F7F73
${HCLevel2FieldXpath}                   xpath://div[@id='control_0F53A4B9-55E6-4E34-ADF4-1A917BB097D1']//input
${HCDescription2FieldXpath}             xpath://div[@id='control_5505B5C3-5782-4CCA-B6C0-C277D2947968']//textarea
${HCLink2FieldXpath}                    xpath://div[@id='control_3384201B-5BC4-4F18-8540-A8A5878BBFB0']//input
${HCLevel2SaveBtnID}                    id:btnSave_form_00BB707A-F08E-4857-BDFF-308CD57F7F73
${HCLevel3AddBtnXpath}                  xpath://div[@id='control_0DDFBC37-AB26-4888-A0C6-6DDC7825FE03']//div[@id='btnAddNew']
${HCLevel3ProcessFlowID}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/div[2]/div[2]/div[5]
${HCLevel3FieldXpath}                   xpath://div[@id='control_177643DE-3CC8-4564-9D96-1BD0E364B887']//input
${HCDescription3FieldXpath}             xpath://div[@id='control_AC332A54-C0DD-416E-8184-76BE57E26649']//textarea
${HCConsequence3FieldXpath}             xpath://div[@id='control_C19B8CE4-E41D-4B51-BE8E-791392EE2114']//textarea
${HCLink3FieldXpath}                    xpath://div[@id='control_581AE8F8-2DC4-47A9-BBAB-06666EB0DDAE']//input
${HCLink2BusiImpactBoxXpath}            xpath://div[@id='control_3DA05B4C-B275-42DB-8ED5-6B86C1901BE5']/div[1]/div
${HCLevel3SaveBtnID}                    id:btnSave_form_D817294B-D88F-4F92-BF22-6C098FEC1651
${HCLevel4AddBtnXpath}                  xpath://div[@id='control_743CDC5E-48AD-4602-B250-20D3E1C9F317']//div[@id='btnAddNew']
${HCLevel4ProcessFlowID}                xpath://*[@id="btnProcessFlow_form_02964BA3-7BC5-4010-A471-A35ECEFCB21B"]
${HCLevel4FieldXpath}                   xpath://*[@id="control_61A676AF-4658-4548-B2B3-1C8BCD8681DE"]/div[1]/div/textarea
${HCDescription4FieldXpath}             xpath://div[@id='control_1544DA2A-A009-4F39-A666-71EECC887915']//textarea
${HCLink4FieldXpath}                    xpath://div[@id='control_3B1D2549-D533-496A-85A5-CE74185A4249']//input
${HCLevel4SaveBtnID}                    id:btnSave_form_02964BA3-7BC5-4010-A471-A35ECEFCB21B
${HCLevel5AddBtnXpath}                  xpath:/html/body/div[1]/div[3]/div/div[2]/div[21]/div[4]/div[13]/div[9]/div[2]/div[1]/div/div/div[1]/div[1]/div[2]/div[1]
${HCLevel5ProcessFlowID}                id:btnProcessFlow_form_CAD43B9C-D4A4-45D3-AD27-F5770BA01CF3
${HCLevel5DocSectionFieldXpath}         xpath://div[@id='control_60FBC914-7786-4FA6-8FE6-1431A0D3F6DC']//textarea
${HCLevel5LaymanTermsFieldXpath}        xpath://div[@id='control_48BE6C69-473B-46B5-B4DB-1C8C524745A5']//textarea
${HCLevel5ComplianceFieldXpath}         xpath://div[@id='control_959F35FE-FD71-4044-8B0B-922A8C19B06C']//textarea
${HCLevel5PenaltiesFieldXpath}          xpath://div[@id='control_1A1C2A28-C405-45EB-9749-A0473DA3F9C1']//textarea
${HCLevel5LinkBusImpactBoxXpath}        xpath://div[@id='control_427B41E4-7F02-46F2-AE55-FDF0351CE483']/div[1]/div
${HCLevel5SaveBtnID}                    id:btnSave_form_CAD43B9C-D4A4-45D3-AD27-F5770BA01CF3
${HCObligationAddBtnXpath}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[26]/div[4]/div[17]/div[9]/div[2]/div[1]/div/div/div[1]/div[1]/div[2]/div[1]
${HCObligationFieldXpath}               xpath://*[@id="control_8E22304C-342B-417D-BE07-B0CD0865D53F"]/div[1]/div/textarea
${HCObligationTabXpath}                 xpath://div[@id='control_5EC2C055-9D5E-4111-B577-95F7925BCB9F']/div[1]/div[1]/div[1]
${HCObligationSaveBtnXpath}             xpath://div[@id='control_5EC2C055-9D5E-4111-B577-95F7925BCB9F']//div[@id='btnSaveAll']
${HCLevel5CloseBtnXpath}                xpath:/html/body/div[1]/div[3]/div/div[2]/div[26]/div[1]/i[2]
${HCLevel4CloseBtnXpath}                xpath://div[@id='form_02964BA3-7BC5-4010-A471-A35ECEFCB21B']/div[1]/i[2]
${HCLevel3CloseBtnXpath}                xpath://div[@id='form_D817294B-D88F-4F92-BF22-6C098FEC1651']/div[1]/i[2]
${HCLevel2CloseBtnXpath}                xpath://div[@id='form_00BB707A-F08E-4857-BDFF-308CD57F7F73']/div[1]/i[2]
${HCSave}                               xpath://*[@id="btnSave_form_664FCCCE-1B21-4993-8A0A-7ECF4C2B755A"]/div[3]
${HCDescriptionEdit}                    xpath://*[@id="control_8E6F725F-3104-4EA0-B07D-3EE3999BF5AA"]/div[1]/div/textarea

#************************************************* Engagement Plan Module **********************************************
${SocialSustainabilityXpath}            xpath://div[@id='section_72a755ef-1f20-45ed-a505-15eae928c9c3']/label
${EngagementPlanXpath}                  xpath://div[@id='section_2a633cc7-303f-48ee-92ab-e9c511a40626']/label
${EngagementPlanAddBtnID}               id:btnActAddNew
${EPProcessFlowID}                      id:btnProcessFlow_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC
${EPBusinessUnitDdXpath}                xpath://div[@id='control_16C9A7FC-3091-4E0D-9B1A-709C8F0AC8B5']//li
${EPBusinessUnitDdXpandXpath}           xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${EPBusinessUnitDdXpand2Xpath}          xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
${EPBusinessUnitDdXpand3Xpath}          xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
# ${EPBusinessUnitDdXpand4Xpath}          xpath://li[@id='5765410a-6b85-4388-8d67-acf35f245139']/i
${EPBusinessUnitDdSelectXpath}          id:25742496-c98d-431e-96c8-18619861422e_anchor
${EPFuncLocationDdXpath}                xpath://div[@id='control_B3768415-FC73-4B14-BA94-3D4E0299E15E']//li
${EPFuncLocationSelectID}               id:481d6c2d-ad8c-414b-9f73-21602bbc6326_anchor
${EPTitleFieldXpath}                    xpath://div[@id="control_B0DFFFFF-66B3-4CB4-B4E5-23C8E0010864"]/div[1]/div/input
${EPLinkProjectTckBoxXpath}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[16]/div[1]/div
${EPProjectDdXpath}                     xpath://*[@id="control_963F5190-1317-42C1-AD7A-B277FCBA7101"]/div[1]/a/span[1]/ul/li
${EPProjectSrchXpath}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[12]/div[1]/input
${EPProjectSelectID}                    xpath://*[@id="18c0a832-c968-41ac-9ae7-66907fc45aa1_anchor"]/i[1]
${EPStartDateFieldXpath}                xpath://*[@id="control_C6060E39-99D5-417B-90CF-09077C971E5D"]/div[1]/span/span/input
${EPFrequencyDdXpath}                   xpath://div[@id='control_E457C6F1-F44C-4B21-8089-E7153700AFB4']//li
${EPFrequencyCancelBtnXpath}            xpath://div[@id='control_E457C6F1-F44C-4B21-8089-E7153700AFB4']/div[1]/a/span[2]/b[2]
${EPFrequencyTckBoxXpath}               xpath://div[@id='control_D666E97A-5A99-4FA7-9B91-CC9CABDF948E']/div[1]/div
${EPFrequencySelectID}                  id:77a9b954-cb1c-4fa2-ab2e-7af3673fbbd0_anchor
${EPFrequencySelect2ID}                 id:94ca65ae-a09f-4cdf-adac-c66cfb8469d0_anchor
${EPFrequencySelect3ID}                 id:cdaae4b5-b4ab-45f1-996a-47e4fbdfdabb_anchor
${EPFrequencySelect4ID}                 id:912b5574-c4d8-4012-afd2-35a652c20af1_anchor
${EPFrequencySelect5ID}                 id:6994d6b8-f04f-4311-84fe-9377bfd18f8a_anchor
${EPFrequencySelect6ID}                 id:cb04c60e-b3a1-4bda-9ddc-ea138a193b53_anchor
${EPFrequencySelect7ID}                 id:61ccdea0-89d6-4d66-a62c-ac10fe2717b6_anchor
${EPEngagementEndDateFieldXpath}        xpath://div[@id='control_56848732-729E-4C20-A0FC-1034ACF3D6F4']//input
${EPDayOfWeekDdXpath}                   xpath://div[@id='control_D24F5B79-62C5-46E8-B38C-32AF14CCFD8C']//li
${EPDayOfWeekSelectID}                  id:4d29e6d5-6fb9-4170-a10a-3a65dcee47b3_anchor
${EPWeekOfMonthDdXpath}                 xpath://div[@id='control_86F620B2-495B-46CC-B2D5-1A8A78A91096']//li
${EPWeekOfMonthSelectID}                id:ea746340-5391-4284-9988-5a9c20d999f6_anchor
${EPAnnuallyFromDdXpath}                xpath://div[@id='control_7DA20857-9EFF-4817-A80B-ABD07F22AEED']//li
${EPAnnuallyFromSelectID}               id:03cdeeb5-a3aa-4e91-84ee-15a51cfeb937_anchor
${EPQuaterStartFromDdXpath}             xpath://div[@id='control_7DA20857-9EFF-4817-A80B-ABD07F22AEED']//li
${EPQuaterStartFromSelectID}            id:03cdeeb5-a3aa-4e91-84ee-15a51cfeb937_anchor
${EPBiAnnualFromDdXpath}                xpath://div[@id='control_7DA20857-9EFF-4817-A80B-ABD07F22AEED']//li
${EPBiAnnualFromSelectID}               id:03cdeeb5-a3aa-4e91-84ee-15a51cfeb937_anchor
${EPPurposeOfEngagementDdXpath}         xpath://div[@id='control_36951962-3063-4DA2-9846-ED7137AFC783']/div[1]/a/span[2]/b[1]
${EPPurposeOfEngagementSelectXpath}     xpath://a[@id='4b3fd61c-b661-4213-97b2-c401bdc21653_anchor']/i[1]
${EPMethodOfEngagementDdXpath}          xpath://div[@id='control_5D729CA2-07EF-4E0A-B491-1E223A263474']//li
${EPMethodOfEngagementSelectID}         id:4f7c9b3a-1f2a-479a-88a6-d818063072d6_anchor
${EPResponsiblePersonDdXpath}           xpath://div[@id='control_C2B7C6FA-10FC-4593-BD27-6869D1790758']//li
${EPResponsiblePersonSearchXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/div[1]/input
${EPResponsiblePersonSelectID}          id:d7596aca-b2f3-457e-9580-6cde8067a21d_anchor
${EPCommentsTextFieldXpath}             xpath://div[@id='control_D0735E60-22C5-4A8B-8AAE-31CE9FA6249A']//textarea
${EPSupportDocTabID}                    id:tab_B5A03069-B051-4E79-8874-FE74C890A64D
${EPLinkADocBtnXpath}                   xpath://div[@id='control_1015DD67-EEA8-420F-AAE9-646C5A74C340']/div[1]/div[1]/div[2]/b[2]
${EPURLTxtFieldID}                      id:urlValue
${EPTitleFieldID}                       id:urlTitle
${EPSupportDocAddBtnID}                 id:btnConfirmYes
${EPDetailsTabID}                       id:tab_F8BDEB77-5693-40CC-93CA-91AEC87CB321
${EPSaveBtnID}                          id:btnSave_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F
${EPAttendeesTabID}                     id:tab_A32B5B7D-4DDE-4AD5-A146-AB8DB138ED8C
${EPAttendeesStakeHDdXpath}             xpath://div[@id='control_86E5207D-ECEA-4F6D-9680-376A0EB4C2FE']/div[1]/a/span[2]/b[1]
${EPAttendeesStakeHDdSearchXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[19]/div[1]/input
${EPAttendeesStakeHSelectXpath}         xpath://a[@id='6a942370-d1c5-4ff7-a70c-496f68f1ff42_anchor']/i[1]
${EPAttendeesGroupsDdXpath}             xpath://div[@id='control_7524420C-1E4E-49C7-AAF6-C87B97ECEFCF']/div[1]/a/span[2]/b[1]
${EPAttendeesGroupsDdSearchXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[20]/div[1]/input
${EPAttendeesGroupsSelectXpath}         xpath://a[@id='eae4c1ab-bcaf-4655-aaed-be8e30f052f4_anchor']/i[1]
${EPActionsTabID}                       id:tab_FCF38CD2-F704-4235-9688-E4DFEEDD771A
${EPActionAddXpath}                     xpath://div[@id='control_52657B39-E580-49F5-88CB-D30DCB545A7B']//div[@id='btnAddNew']
${EPActionsPFlowID}                     id:btnProcessFlow_form_C7B74A9B-D0CC-4925-832E-F08CD2272A95
${EPActionsTaskTypeDdXpath}             xpath://div[@id='control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9']//li
${EPActionsTaskTypeSelectID}            id:e9d2affa-98c8-4722-8cc6-9e0988e82d89_anchor
${EPTypeOfActionDdXpath}                xpath://div[@id='control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE']/div[1]/a/span[2]/b[1]
${EPTypeOfActionSelectID}               id:2006cc14-2025-4073-97e4-fca83aa8a2c4_anchor
${EPActionDescrTxtAreaXpath}            xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea
${EPActionEntityDdXpath}                xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']//li
${EPActionEntitySearchXpath}            xpath:/html/body/div/div[3]/div/div[2]/div[29]/div/input
${EPActionEntityResultID}               id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${EPActionEntityDdXpandXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/i
${EPActionEntitySelectID}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/ul/li[1]/a
${EPACtionsRespPersonDdXpath}           id:control_7854D003-23E6-4A2E-AF2E-357C965FA684
${EPResponsiblePersonSearch2Xpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[30]/div[1]/input
${EPResponsiblePerson2SelectID}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[30]/ul[1]/ul/li/a
${EPActionAgencyDdXpath}                xpath://div[@id='control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9']//li
${EPActionAgencySelectID}               id:3c1ab516-b2db-4a40-a20b-8ae8ed908bab_anchor
${EPActionTaskPriorityDdXpath}          xpath://div[@id='control_64D59225-1029-4ABE-9EB3-C41FAAD8859B']//li
${EPActionTaskPrioritySelectID}         id:2430484a-80f1-48d6-9367-4d71b479151a_anchor
${EPActionDueDateFieldXpath}            xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${EPActionsSaveBtnXpath}                xpath://div[@id='btnSave_form_C7B74A9B-D0CC-4925-832E-F08CD2272A95']/div[3]

#****************************************** Relationship Based Safety Module ******************************************
${RBSXpath}                             xpath://div[@id='section_bc0848b9-f86c-403a-b3a8-aedf9d70b12b']/label
${RBSAddBtnID}                          id:btnActAddNew
${RBSProcessFlowID}                     id:btnProcessFlow_form_6E7B288D-285E-4D74-976E-B6CC1B96292E
${RBSBusinessUnitDdXpath}               xpath://div[@id='control_7F840C09-6302-464F-B274-355C33FE2232']//li
${RBSBusinessUnitDdXpandXpath}          xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${RBSBusinessUnitDdXpand2Xpath}         xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
${RBSBusinessUnitDdXpand3Xpath}         xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
${RBSBusinessUnitDdXpand4Xpath}         xpath://li[@id='25742496-c98d-431e-96c8-18619861422e']/i
${RBSBusinessUnitSelectID}              id:54f00015-2059-48c0-9d06-c9dd52d482e9_anchor
${RBSLinkProjectTckBoxXpath}            xpath://div[@id='control_EFCD8FEC-4BC8-4C30-B069-EF11E5C24984']/div[1]/div
${RBSProjectDdXpath}                    xpath://div[@id='control_F4A6B712-F04F-4551-8B46-7492F68A0446']//li
${RBSProjectSelectID}                   id:25712230-8559-4a80-808a-99f532c3e766_anchor
${RBSFuncLocationDdXpath}               xpath://div[@id='control_BF859336-093E-46D1-A05C-C2DE5E9ADE45']//li
${RBSFuncLocationSearchXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[7]/div[1]/input
${RBSFuncLocationSelectionID}           id:c90467d6-40cb-45e8-97ba-367fb080e969_anchor
${RBSSpecificLocFieldXpath}             xpath://div[@id='control_135DBB93-87A6-4343-96C4-0173B6F29BE1']//input
${RBSDateObservedXpath}                 xpath://div[@id='control_97C36EE8-316C-42F2-8569-ADD0C4FD823D']//input
${RBSTimeObservedXpath}                 xpath://div[@id='control_573100B6-D270-4B06-AB9E-F8421E30DD70']//input
${RBSTypeOfObsDdXpath}                  xpath://*[@id="4bbd85e1-b837-4c02-ab94-c57a3fafa276"]/i
${RBSTypeOfObsSelectID}                 id:c32993b9-5a6f-43e1-8681-375936d6628a_anchor
${RBSObservationFieldXpath}             xpath://div[@id='control_1A740402-4144-4BF5-82E0-73179A5C894E']//textarea
${RBSInteractionFieldXpath}             xpath://div[@id='control_363EA516-6C46-4B0E-A9DF-FC6727D09374']//textarea
${RBSPersonObservingDdXpath}            xpath://div[@id='control_4CFEEB48-2002-4677-BA4E-27EAE8C4105F']//li
${RBSPersonObservingDdSearchXpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[11]/div[1]/input
${RBSPersonObservingSelectID}           id:d7596aca-b2f3-457e-9580-6cde8067a21d_anchor
${RBSObsGroupDdXpath}                   xpath://div[@id='control_C6497CCE-9BB5-4693-A00D-CC92870A8DF2']//li
${RBSObsGroupSelectID}                  id:a2b98c42-432c-4018-a0e9-28df601ea709_anchor
${RBSSaveBtnID}                         id:btnSave_form_6E7B288D-285E-4D74-976E-B6CC1B96292E
${RBSTypeOfObsDdXpandXpath}             xpath://li[@id='4bbd85e1-b837-4c02-ab94-c57a3fafa276']/i
${RBSTypeOfObsSelect2ID}                id:d20d3ad3-e745-4d6b-84a8-a12687164cc3_anchor
${RBSQuestionairStartBtnID}             id:btnChecklist_form_6E7B288D-285E-4D74-976E-B6CC1B96292E
${RBSQuestion1Xpath}                    xpath://div[@id='control_818815EF-91A4-4363-A255-20F18FCFFE4A']//input
${RBSQuestion2Xpath}                    xpath://div[@id='control_59A8AE55-DAF2-4B66-B9A3-89A673ECFCD4']//input
${RBSQuestion3Xpath}                    xpath://div[@id='control_C083A7C0-A0FD-40DB-BBFA-42F5C0400B05']//input
${RBSQuestion4Xpath}                    xpath://div[@id='control_90E6813E-CA45-480B-AE08-FF36298C7860']//input
${RBSQuestionaireFinishBtnXpath}        xpath://*[@id="btnSave_checklist_6E7B288D-285E-4D74-976E-B6CC1B96292E"]
${RBSActionsAddBtnXpath}                xpath://div[@id='control_8E84CB39-DEEE-4819-832F-E4A10339C343']//div[@id='btnAddNew']/div
${RBSActionsPFlowID}                    id:btnProcessFlow_form_4477F482-07A2-4919-82A8-1D3F8EE36CE2
${RBSActionsTaskTypeDdXpath}            xpath://div[@id='control_0EF43D36-B4D4-4A20-8C24-2EFA6E65EAA9']//li
${RBSActionsTaskTypeSelectID}           id:e9d2affa-98c8-4722-8cc6-9e0988e82d89_anchor
${RBSActionsTypeOfActionDdXpath}        xpath://*[@id="control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE"]/div[1]/a/span[1]/ul/li
${RBSActionsTypeOfActionSelectID}       id:2006cc14-2025-4073-97e4-fca83aa8a2c4_anchor
${RBSActionsDescrFieldXpath}            xpath://*[@id="control_1255F613-A69C-476A-8B05-4B87E5CA009F"]/div[1]/div/textarea
${RBSActionsEntityDdXpath}              xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']//li
${RBSActionsEntityDdXpandXpath}         xpath:/html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/i
${RBSActionsEntitySelectID}             id:db7ecfdb-9ea3-4bbe-8842-7526c5965f64_anchor
${RBSActionsRespPersonDdXpath}          xpath://div[@id='control_7854D003-23E6-4A2E-AF2E-357C965FA684']//li
${RBSActionsRespPersonSearchXpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[30]/div[1]/input
${RBSActionsRespPersonSelectID}         id:ae1b92ea-dadc-4410-8e3d-5f386e265da9_anchor
${RBSActionsAgencyDdXpath}              xpath://div[@id='control_5B580F56-394D-4695-8AB2-C2CB9AAE9EB9']//li
${RBSActionsAgencySelectID}             id:3c1ab516-b2db-4a40-a20b-8ae8ed908bab_anchor
${RBSActionsTaskPriorityDdXpath}        xpath://div[@id='control_64D59225-1029-4ABE-9EB3-C41FAAD8859B']//li
${RBSActionsTaskPrioritySelectID}       id:2430484a-80f1-48d6-9367-4d71b479151a_anchor
${RBSActionsDueDateFieldXpath}          xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${RBSActionsSaveBtnID}                  id:btnSave_form_4477F482-07A2-4919-82A8-1D3F8EE36CE2

#********************************************** Inspection Scheduler Module ********************************************
${InspectionSchedulerXpath}             xpath://*[@id="section_eb301df5-f6b5-46a1-98f7-735365480e0f"]
${ISAddBtnID}                           id:btnActAddNew
${ISProcessFlowID}                      id:btnProcessFlow_form_10C56277-BF3D-4C75-BE8A-F6F46BB33480
${ISBusinessUnitDdXpath}                xpath://div[@id='control_BFE2139A-F39D-4F4E-BD6D-572B68546C05']//li
${ISBusinessUnitDdXpandXpath}           xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${ISBusinessUnitDdXpand2Xpath}          xpath://li[@id='b7710db3-0f46-4d9e-a5a8-725640256348']/i
${ISBusinessUnitDdXpand3Xpath}          xpath://li[@id='81882223-cc16-41f0-877d-493ba9741689']/i
${ISBusinessUnitDdXpand4Xpath}          xpath://li[@id='5765410a-6b85-4388-8d67-acf35f245139']/i
${ISBusinessUnitSelectID}               id:9bc2a04c-d086-4575-b099-2e421702ca31_anchor
${ISFuncLocationDdXpath}                xpath://div[@id='control_0325B29B-8410-4B30-80B5-783BA7D28499']//li
${ISFuncLocationSelectionID}            id:b09eca48-2e0a-470b-99b0-9085ff9c65a0_anchor
${ISInspTypeDdXpath}                    xpath://div[@id='control_C7BC891B-0559-4895-B1D4-FFF3B498BE59']//li
${ISInspTypeSelectID}                   id:7a4ad174-f1e1-4b0f-bce0-a906510b8da8_anchor
${ISInspTypeSelect2ID}                  id:3d0ad8f9-c719-4f17-bd06-c928e24a7e65_anchor
${ISChecklistToBeDoneDdXpath}           xpath://div[@id='control_7A04BA0A-2785-41C7-95C8-C83E902BF783']/div[1]/a/span[2]/b[1]
${ISChecklistToBeDoneSelectXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[1]/a/i[1]
${ISNameOfInspectionDdXpath}            xpath://div[@id='control_F1F3CF3D-7BFE-44CA-A915-A6281CB0466C']//input
${ISPurposeFieldXpath}                  xpath://div[@id='control_472E85CF-6E0B-4FB7-8C85-35C280D6F4EF']//textarea
${ISSaveBtnID}                          id:btnSave_form_10C56277-BF3D-4C75-BE8A-F6F46BB33480
${ISRecurrenceAddBtnXpath}              xpath://div[@id='control_1FC82892-73AC-41B3-A7F5-2D8CC21EA42F']//div[@id='btnAddNew']
${ISRecurrencePFlowID}                  id:btnProcessFlow_form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB
${ISRRespPersonDdXpath}                 xpath://div[@id='control_01B1845E-0081-4304-B0C6-239D8B2B144A']//li
${ISRRespPersonDdSearchXpath}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[15]/div[1]/input
${ISRRespPersonDdSelectID}              id:b8ad5f90-d582-46c4-b186-d99649824acd_anchor
${ISROwnerDdXpath}                      xpath:/html/body/div[1]/div[3]/div/div[2]/div[12]/div[4]/div[9]/div[1]/a/span[1]/ul/li
${ISROwnerDdSearchXpath}                xpath/html/body/div[1]/div[3]/div/div[2]/div[17]/div[1]/input
${ISROwnerSelectID}                     xpath://*[@id="b8ad5f90-d582-46c4-b186-d99649824acd_anchor"]
${ISRTeamDdXpath}                       xpath://div[@id='control_8F14A7C7-310A-4836-8190-B9DCD966C7F2']/div[1]/a/span[2]/b[1]
${ISRTeamDdSearchXpath}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[17]/div[1]/input
${ISRTeamSelectXpath}                   xpath:/html/body/div[1]/div[3]/div/div[2]/div[17]/ul[1]/ul/li[5]/a/i[1]
${ISRStartDatXpath}                     xpath://div[@id='control_0F04A24A-49B8-4229-84E1-3816AF826DD7']//input
${ISRFrequencyDdXpath}                  xpath://div[@id='control_1FD95F7C-2974-4DFD-BAE6-8693FA639CFA']//li
${ISRFrequencySelectID}                 id:77a9b954-cb1c-4fa2-ab2e-7af3673fbbd0_anchor
${ISRLinkDoXpath}                       xpath://div[@id='control_8A69BC72-E7D9-4137-81C5-33067251AC97']/div[1]/div[1]/div[2]/b[2]
${ISRUrlFieldID}                        id:urlValue
${ISRTitleFieldID}                      id:urlTitle
${ISRUrlAddBtnID}                       id:btnConfirmYes
${ISRSaveBtnXpath}                      xpath://*[@id="btnSave_form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB"]/div[3]
${ISRCloseBtnXpath}                     xpath://div[@id='form_C8563EE3-091D-4C7B-B946-1C0B2C0B86EB']/div[1]/i[2]
${ISRRecordXpath}                       xpath://*[@id="grid"]/div[3]/table/tbody/tr/td[5]
${ISRActiveDdXpath}                     xpath://div[@id='control_085C9EBC-20A8-464F-A128-1D13C086EE6D']/div[1]/a/span[2]/b[1]
${ISRActiveSelectID}                    id:396a9071-2420-4f72-a986-171091d0c3ba_anchor

#************************************************* Commitments Register Module ******************************************
${CommitmentsRegisterXpath}             id:section_a3e2930f-4a3a-45ed-ab3e-155047e05831
${CommitmentsRegisterAddButtonID}       id:btnActAddNew
${BusinessUnitLabelXpath}               xpath://div[.='Business unit']
${CommBusinessUnitDdID}                 xpath://*[@id="control_433CDAF3-4AA4-4996-BEEA-9043E9D7E1AD"]/div[1]/a/span[1]/ul/li
${SearchBusinessUnitXpath}              xpath://*[@id="select3_f558cb2f"]/div[1]/input
${CommBusinessUnitDdExpandXpath}        xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${CommBusinessUnitDdExpand2Xpath}       xpath://li[@id='b7710db3-0f46-4d9e-a5a8-725640256348']/i
${CommBusinessUnitDdExpand3Xpath}       xpath://li[@id='81882223-cc16-41f0-877d-493ba9741689']/i
${CommBusinessUnitDdSelectID}           id:5765410a-6b85-4388-8d67-acf35f245139_anchor
${FunctionalLocationDdID}               id:control_D3AF1650-B305-44CF-8463-1B003793EB72
${FunctionalLocationDdExpandXpath}      xpath://li[@id='7ef24235-636f-4368-9bc6-d9bcbe1de6ef']/i
${FunctionalLocationDdSelectID}         id:6b1ecaa6-b90a-4f75-9653-914a1a672cd1_anchor
${CommitmentRegisteritleXpath}          xpath://div[@id='control_804F813A-B603-4ED8-A416-3571D2146714']//input
${CommitmentRegisterOwnerDdID}          id:control_189B6C8F-E360-4339-A9B7-BF2C517A69E0
${SearchRegisterOwnerXpath}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[6]/div/input
${SearchUserResultXpath}                xpath://a[.='AutoTest User']
${SaveToContinueButtonXpath}            xpath://div[.='Save to continue']
${CommSupportingDocID}                  id:tab_6BA55006-A40C-4CF5-8608-A167C083A40F
${CommSupportingDocLinkXpath}           xpath://b[@class='linkbox-link']
${CommSupportingDocLinkFieldID}         id:urlValue
${CommSupportingDocTileFieldID}         id:urlTitle
${CommSupportingDocAddBtnID}            id:btnConfirmYes
${CommitmentsTabID}                     id:tab_6C9A58EA-1C99-4D55-BC4A-9FBCDD833A0F
${CommitmentAddButtonID}                id:btnAddNew
${CommOriginId}                         id:1653151a-2b00-4a3e-ac98-bf4851bf086a
${CommCategoryDdID}                     id:control_052B3A60-874C-4F7A-88EA-E2019BA50262
${CommCategoryOptionID}                 id:20ccc1fc-e18b-4f0f-b68e-437f49261966_anchor
${CommTitleXpath}                       xpath://div[@id='control_06D6617B-3C38-4008-A3E5-00043F9E3202']//input
${CommNatureDdID}                       id:control_77A36D3E-D562-4D3E-9363-0B77E0D94DAF
${CommNatureOptionID}                   id:50b9678f-2601-41ef-ba05-660db010acb9_anchor
${CommOwnerDdID}                        id:control_AED68E6D-3039-4916-8599-E42B7A7C9EE1
${CommOwnerSearchXpath}                 xpath:/html/body/div[1]/div[3]/div/div[2]/div[26]/div/input
${CommOwnerSearchResultID}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[26]/ul
${CommApproverDdID}                     id:control_B5A54D2B-72E4-4C3D-AFC8-E6DFE3029AAE
${CommApproverSearchXpath}              xpath:/html/body/div[1]/div[3]/div/div[2]/div[27]/div/input
${CommApproverSearchResultID}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[27]/ul
${CommConditionSaveButtonID}            id:btnSave_form_7C062343-94C0-4691-9D16-7E07735C641C
${CommFormID}                           id:form_7C062343-94C0-4691-9D16-7E07735C641C
${CommPreviousPageXpath}                id:nav_DCB70D8A-B79E-4968-9607-29115B4FCDC2
${PermitCondtionAndCommTabID}           id:tab_6ED1A6C4-370E-48A1-AED9-B7EDD864F2C5 
${CommGridRefreshLinkXpath}             xpath://div[@instanceid='7C062343-94C0-4691-9D16-7E07735C641C']/div[4]/a[@class='k-pager-refresh k-link']
${CommRegisterSelectRecordXpath}        xpath://div[@title='Commitments Register']
${CommProgressFieldXpath}               xpath://div[@id='control_04EB8BA9-C8F2-403D-8CA5-461C0389C3FF']
${CommProgressPercentageOptionID}       id:71cd4ff2-91d6-4907-b54a-dc8a23b4d23a_anchor
${CommStatusDdFieldID}                  id:cd7c8ab0-601e-4686-89a4-ee566ecb57c6
${RecordNumberFieldXpath}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[1]/div[2]/div[1]
${CommConditionSearchIconLinkXpath}     xpath://div[@id='form_7C062343-94C0-4691-9D16-7E07735C641C']/div/i[@class='home icon search']
${CommRecordSearchFieldXpath}           xpath://tr[@module_definition_name='record_number']/td[@class='sel']/input
${CommSearchFilterButtonID}             id:btnActApplyFilter
${CommSearchFilterRecordXpath}          xpath://div[@title='AutoTest User']
${CommSearchIconLinkXpath}              xpath://div[@id='form_DCB70D8A-B79E-4968-9607-29115B4FCDC2']/div/i[@class='home icon search']
${CommSaveButtonID}                     id:btnSave_form_DCB70D8A-B79E-4968-9607-29115B4FCDC2
${CommSearchFilterRecordXpath2}         xpath://div[@title='AutoTest User']

#************************************************* Compliance Assessment Module ******************************************
${PermitManagementXpath}                xpath://div[@id='section_8ddfdec2-1f11-4f9b-ad31-d9ae8997af66']/label
${ComplianceAssessmentXpath}            xpath://*[@id="section_ebd821d2-c988-4b17-991b-69dc837c421d"]/label
${ComplianceAssessmentAddButtonID}      id:btnActAddNew
${CompAssessmentBusinessUnitID}         xpath://*[@id="control_2862357D-9B00-4C8D-B8BF-D3559597D090"]/div[1]
${CompAssessmentBusinessUnitValeID}     id:4cee9a75-7667-44e9-a0c1-77ad5092e86c_anchor
${CompAssessmentDateXpath}              xpath://div[@id='control_D2DE76A1-BFDA-4012-A762-D6F1016DAED4']//input
${CompAssessmentConductedByID}          id:control_A0380CE5-DD5B-43DB-92B3-439F5FF846AB
# ${CompConductedSearchXpath}             xpath:/html/body/div[1]/div[3]/div/div[2]/div[6]/div/input
${CompConductedSearchXpath}             xpath:/html/body/div/div[3]/div/div[2]/div[7]/div/input
${CompConductedSearchResultXpath}       id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${CompAssessmentSaveButtonID}           id:btnSave_form_37462362-6F37-4C31-9AF6-3C08C76624D5
${CompAssessmentStatusXpath}            xpath://div[@id='control_6C2108B3-90D3-4A04-ACDC-25155719EC4F']//li
${ConditionsAndCommitmentsTabID}        id:tab_37C9F26A-45B6-41AB-A5D4-0B3310CF37D1
${ConditionsAndCommitmentsBtnID}        id:btnAddNew
${ConditionsCommitmentsTitleDdID}       id:control_FC9F0C32-1FE3-4FD7-B436-73CECDBB6DAB
# ${ConditionsCommTitleOptionXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[31]/ul/ul/li[2]/a
${ConditionsCommTitleOptionXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li[1]/ul/li[1]/ul/li[1]/a
${ConditionsCommTitleExpandXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li[1]/i
${ConditionsCommTitleExpand2Xpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li[1]/ul/li[1]/i
${ConitionCommAssessmentStatusDdID}     control_EF75B584-1865-402A-BE02-6F209B455671
# ${ConitionCommAssessmentStatusXpath}    xpath:/html/body/div[1]/div[3]/div/div[2]/div[32]/ul/ul/li[.='In Progress']/a
${ConitionCommAssessmentStatusXpath}    xpath:/html/body/div[1]/div[3]/div/div[2]/div[37]/ul[1]/ul/li[2]/a
${ConditionCommAssessmentTypeID}        id:control_91F02959-B886-43E7-A53F-5D8638FEF4E2
${ConditionCommTypeValXpath}            xpath://a[@id='12c7c110-d20d-47a6-bdef-dc3a05a2de47_anchor']/i
${ConditionCommAssessmentCatDdID}       id:control_06FE0326-2E17-4A0E-B0EA-BD35B2A2460A
${ConditionCommAssessmentCatValID}      xpath://a[.='Administrative']
${ConditionCommAssessmentDescXpath}     xpath://div[@id='control_AB3B0307-5AA1-4631-87AF-1C17A988F1CB']//textarea
${ConditionCommAssessmentSaveBtnID}     id:btnSave_form_C31131AD-DC8B-4750-8F01-3656548E1A75
${CondCommAssessmentStatusValXpath}     xpath://div[@id='control_EF75B584-1865-402A-BE02-6F209B455671']//li
${CondCommAssessmentFindingTabXpath}    xpath://div[.='Findings']
${CondCommSupportingDocsTabXpath}       xpath://div[.='Supporting Documents']
${CondCommComplianceStatusID}           id:control_C8DD8FCC-24ED-4040-A6C5-E0D3BF35917E
${CondCommComplianceStatusValXpath}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[40]/ul[1]/ul/li[1]/a
${CondCommComplianceTextXpath}          xpath://div[@id='control_CF6B546F-026E-40EC-B687-36C5D38E3232']//textarea
${CondCommComplianceReviewedXpath}      xpath://div[@id='control_E6DA0F9B-7C9F-46EC-AFE5-BA94BD28E315']
${CondCommFindingsAddBtnXpath}          xpath://div[@id='control_781DE377-85AC-44EC-829E-4BE2AD5AD082']//div[@id='btnAddNew']
${CondCommFindingsDescXpath}            xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']//textarea
${CondCommFindsingsOwnerDdID}           id:control_434D9128-5EBC-4E25-9836-72A2C4451733
${CondCommFindingsOwnerSearchXpath}     xpath:/html/body/div/div[3]/div/div[2]/div[50]/div/input
${CondCommFindingsOwnerValueXpath}      xpath:/html/body/div/div[3]/div/div[2]/div[50]/ul/ul/li/a[.='AutoTest User']
${CondCommFindingsClassDdID}            id:control_7689E71C-DC7E-41C1-9124-C6312596E956
${CondCommFindingsClassValID}           id:37e3a345-8b6a-41b8-ad8e-6a9561148b31_anchor
${ConCommFindingsSaveArrowXpath}        xpath://div[@id='btnSave_form_C5F26152-30ED-47D5-9261-3CFCDDF0E911']/div/div
${CondCommFindingsSaveCloseID}          id:btnSaveClose_form_C5F26152-30ED-47D5-9261-3CFCDDF0E911
${CondCommSupportingDocID}              id:tab_7A466251-7859-4AB3-960A-E03B5D1E2F6F
${CondCommSupportingDocLinkXpath}       xpath://b[@class='linkbox-link']
${CondCommSupportingDocLinkFieldID}     id:urlValue
${CondCommSupportingDocTileFieldID}     id:urlTitle
${CondCommSupportingDocAddBtnID}        id:btnConfirmYes

#************************************************* Audit Management Module ******************************************
${AuditManagement1Xpath}                xpath:(//label[.='Audit Management'])[1]
${AuditManagement2Xpath}                xpath:(//label[.='Audit Management'])[2]
${AuditManagementAddButtonID}           id:btnActAddNew
${SearchID}                             id:btnActApplyFilter
${ViewFilterBtn}                        xpath://div[@id='btnActFilter']
${AuditManagementBussinesUnitDdID}      id:control_B1ED7656-E00D-4A2E-B3FF-93E068F7D531
${AuditManagementAuditTabXpath}         xpath://div[.='Audit Details']
${AuditManagementSuppDocsTabXpath}      xpath://div[.='Supporting Documents']
# ${AuditManagementBussUnitSrchXpath}     xpath:/html/body/div/div[3]/div/div[2]/div[15]/div/input
${AuditManagementPF}                    xpath://div[@id='btnProcessFlow_form_1B0044DE-2C55-488C-9850-75C417EED9C8']
${AuditManagementPFLogging}             xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Logging Audit']
${AuditManagementPFPlanned}             xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned']
${AuditManagementPFScheduled}           xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Scheduled']
${AuditManagementPFInProgres}           xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='In Progress or Overdue']
${AuditManagementPFAwaitVerify}         xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Awaiting Verification']
${AuditManagementPFCompleted}           xpath:(//div[@id='divProcess_1B0044DE-2C55-488C-9850-75C417EED9C8'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Completed']
${AuditManagementRiskDiscDD}            xpath://div[@id='control_369D8C8A-6A21-4978-B231-58CFD6728491']//span[2]/b[1]
${AuditManagementRiskDiscSelectAll}     xpath://div[@id='control_369D8C8A-6A21-4978-B231-58CFD6728491']//span[2]/b[2]
${AuditManagementBussUnitSrchXpath}     xpath:(//div[@class='select3-search']//input[@placeholder='Type to search'])[2]
${AuditMngBussUnitDdExpandXpath}        xpath://a[text()='Anglo American Group']/../i
${AuditMngBussUnitDdExpand2Xpath}       xpath://a[text()='Bulk Commodities & Other Minerals']/../i
${AuditMngBussUnitDdExpand3Xpath}       xpath://a[text()='Kumba']/../i
${AuditMngBussUnitDdSelectID}           xpath://a[text()='Sishen Mine']
${AuditMngLinkProjectCheckID}           xpath://div[@id='control_4A79FD7F-CD2B-4E66-AF12-B25FDC205CB1']//div[@class='c-chk']/div
${AuditMngProjectDdID}                  xpath://div[@id='control_6380EE87-B589-48A4-BE47-2B255AA00E5C']//span[2]/b[1]
${AuditMngProjectOptionID}              xpath://a[text()='Baseline 18/03/2021 - do not use']
${AuditMngFuncLocationDdID}             id:control_40E9FB65-C2EA-45A7-8497-24D8EA2CC6AE
${AuditMngFuncLocResultDdID}            xpath://a[text()='MIS | Sishen']
${AuditManagementTitleXpath}            xpath://div[@id='control_FEB3D889-9079-4781-943C-D2CA02A5A5F4']//input
${AuditScope}                           xpath://div[@id='control_9C956F79-A9C9-470F-975D-4923F2DB6E7A']//textarea
${AuditManagementAuditTypeID}           id:control_2C70ED4C-D256-4B45-B76F-7E916644A513
${AuditMngAuditTypeSupplierXpath}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='Supplier']/i[1])
${AuditMngAuditTypeInternalXpath}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='Internal']/i[1])
${AuditMngAuditTypeExternalXpath}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='External']/i[1])
${AuditMngProcessActivityID}            xpath://div[@id='control_6B5F3505-F436-4ED1-B8B1-38D8DB086FC2']//span[2]/b[1]
${AuditMngProcessSearchXpath}           xpath:(//input[@placeholder='Type and enter to search'])[2]
${AuditMngProcessResultXpath}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='Exploration'][1])
${AuditMngProcessDdExpandXpath}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Exploration']/../i[1])
${AuditMngProcessDdSelectXpath}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Exploration']/i[1])[2]
${AuitMngStakeholderDdID}               id:control_5E74E964-4873-4B1D-8162-4EE4532A3FE8
${AuditMngPStakeholderSearchXpath}      xpath:(//input[@placeholder='Type and enter to search'])[1]
${AuditMngStakeholderResultID}          xpath:(//div[contains(@class, 'transition visible')]//a[text()='Resonant Automation'])[1]
${AuitMngTemplateDdID}                  id:control_2C3B9625-8F0F-44C8-8CB9-8C6600FB57E0
${AuitMngTemplateOptionExpandXpath}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='Kumba Iron Ore']/../i)[1]
${AuitMngTemplateOptionResultID}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='Contractor Management Standard Self-Assessment Checklist'])[1]
${AuditMngManagerDdID}                  xpath://div[@id='control_8F83D7C1-3D82-47CE-8A8A-BCB3A0A5248E']//span[2]/b[1]
${AuditMngManagerSearchXpath}           xpath:(//input[@placeholder='Type and enter to search'])[3]
${AuditMngManagerSearchResultXpath}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='1 Administrator'])[1]
${AuditMngAuditeeDdID}                  xpath://div[@id='control_CCD4D19C-9ADA-49A2-9824-9BFD60753453']//span[2]/b[1]
${AuditMngAuditeeSearchXpath}           xpath:(//input[@placeholder='Type and enter to search'])[4]
${AuditMngAuditeeSearchResultXpath}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditMngAuditStartDateXpath}          xpath://div[@id='control_C58B4570-0BCC-4016-955F-BC39F5A7CBD9']/div/span/span/input
${AuditMngAuditEndDateXpath}            xpath://div[@id='control_155B5250-AFF6-4EE7-A2B2-200427F133C8']/div/span/span/input
${AuditIntroduction}                    xpath://div[@id='control_9AAF2CD3-5F45-4560-962B-1E4A39280565']//textarea
${AuditObjective}                       xpath://div[@id='control_EE073962-0DB4-4FD6-B88F-95B13A10D358']//textarea
${AuditMngSaveContButtonXpath}          xpath://div[.='Save to continue']
${AuditMngTeamTabXpath}                 xpath://li/div[.='Audit Team']
${AuditMngEventsTabXpath}               xpath://li/div[.='Events']
${AuditMngProposeNewDateID}             id:control_700E32B0-1735-45D2-BAC4-DD98C85091DF
${AuditMngScheduleApprovedID}           id:control_5467B726-978A-457D-BE3C-6A1BCAA9DDAD
${AuditMngStatusDdXpath}                xpath://div[@id='control_E8EBE770-3C9A-4EB6-93A4-35BF3D60C7EF']//li
${AuditMngSupportingDocLinkXpath}       xpath://b[@class='linkbox-link']
${AuditMngSupportingDocLinkFieldID}     id:urlValue
${AuditMngSupportingDocTileFieldID}     id:urlTitle
${AuditMngSupportingDocAddBtnID}        id:btnConfirmYes
${AuditMngSaveSupportingDocBtnID}       id:control_C72885A0-F630-4CA8-A884-EAF790645D5A
${AuitMngSaveButtonID}                  id:btnSave_form_1B0044DE-2C55-488C-9850-75C417EED9C8
${AuditMngDetailsTabXpath}              xpath://div[.='Audit Details']
${AuditMngScheduleApprovedXpath}        xpath://div[@id='control_5467B726-978A-457D-BE3C-6A1BCAA9DDAD']
${AuditMngApprovedByXpath}              xpath://div[@id='control_90184175-2CC0-4182-A5B8-57542A33786F']//li
${AuditMngDateApprovedXpath}            xpath://div[@id='control_3B2C50D6-337E-447F-BE17-A0A877B94130']//input
${AuditMngStartAuditID}                 id:control_A024BB31-1AA2-4637-9E45-4AF551634E02
${AuditMngGoToSearchPageXpath}          xpath://i[@class='home icon search']
${AuditMngSubmitPlanBtnID}              id:control_BC2D3B83-36C0-4596-ACD0-899571582DB8
${AuditRecordSearchFieldXpath}          xpath://tr[@module_definition_name='record_number']/td[@class='sel']/input
${AuditSearchFilterButtonID}            id:btnActApplyFilter
${AuditSearchFilterRecordXpath}         xpath://div[@title='AutoTest User']
${AuditProposeNewDatesXpath}            xpath://div[@id='control_700E32B0-1735-45D2-BAC4-DD98C85091DF']
${AuditProposedDatesPanelDateXpath}     xpath://span[.='New Proposed Dates']
${AuditSuggestedStartDateXpath}         xpath://div[@id='control_4AA4E37C-AAA9-4C34-87A9-F70E6CCA1EEC']/div/span/span/input
${AuditSuggestedEndDateXpath}           xpath://div[@id='control_5CB8F6B6-2F53-4102-9340-CE64C72E37CD']/div/span/span/input
${AuditProposedDatesCommentsXpath}      xpath://div[@id='control_BC062ECD-9E04-40C3-8EF4-0B4007B9DEB0']/div/div/textarea
${AuditTeamAddRecordBtnXpath}           xpath://div[@id='control_8634EC1E-2840-40A4-9426-7555DC876807']//div[@id='btnAddNew']
${AuditTeamFullNameDdID}                xpath://div[@id='control_E0535A21-FBC8-4F90-B767-B9C02D121842']//span[2]/b[1]
${AuditTeamSrchXpath}                   xpath:(//input[@placeholder='Type and enter to search'])[7]
${AuditTeamSearchResultXpath}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditTeamExperienceDdID}              xpath://div[@id='control_A1BF9E59-A685-4589-A3B6-9519333C11D1']//span[2]/b[1]
${AuditTeamExperienceOptionXpath}       xpath:(//div[contains(@class, 'transition visible')]//a[text()='Audit team leader / Lead auditor'])[1]
${AuditTeamSaveBtnXpath}                xpath://div[@id='control_8634EC1E-2840-40A4-9426-7555DC876807']//div[@id='btnSaveAll']
${AuditManagementEventsTabXpath}        xpath://div[.='Events']
${AuditMngEventsContentGridXpath}       xpath://div[@id='control_E2DA37B7-70A9-4AE4-959F-14FC8AF0F364']/div/div[2]/div[2]/div/div[3]/table/tbody/tr
${AuditMngStartAuditBtnID}              id:control_A024BB31-1AA2-4637-9E45-4AF551634E02
${AuditMngConductorDdID}                id:control_DC3EE96D-3BB3-4B26-8D65-33EA527EFA79
${AuditMngConductorSearchXpath}         xpath:(//input[@placeholder='Type and enter to search'])[6]
${AuditMngConductorSrchResultXpath}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditMngReqVerificationBtnXpath}      id:control_AFB7FD68-58DE-4E99-9CB8-80475DD346FA
${AuditManagementFindingsTabXpath}      xpath://li[@id='tab_28113C52-C055-4AAC-82D6-E05232AA7086']//div[.='Findings']
${AuditManagementStartBtnID}            id:btnChecklist_form_1B0044DE-2C55-488C-9850-75C417EED9C8
#${AuditManagementFindingsTabXpath}      xpath://div[.='Surface Traffic Management Self Assessment']
${AuitMngQ1DdID}                        id:control_67368191-90DC-4203-A6EE-CCFA87F1A0D5
${AuditMngQ1OptionXpath}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='Compliant'])[1]
${AuditMngChecklistSaveXpath}           xpath:(//div[@class='actionBar']//div[.='Save current section'])[1]
${AuditMngChecklistCloseBtnXpath}       xpath://div[@id='form_checklist_1B0044DE-2C55-488C-9850-75C417EED9C8']/div/i[@class='close icon cross']
${AuditManagmentContinueBtnID}          xpath://div[@id='btnChecklist_form_1B0044DE-2C55-488C-9850-75C417EED9C8']
${AuditManagmentFinishBtnID}            xpath://*[@id="btnSave_checklist_1B0044DE-2C55-488C-9850-75C417EED9C8"]/div[text()='Finish']
${AuitMngQ2DdID}                        id:control_5CF5E55E-DE26-4437-8637-42644F9945B8
${AuditMngQ2OptionXpath}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='Compliant'])[1]
${AuditMngQ2CrossHairID}                id:control_minimized_submodule_5CF5E55E-DE26-4437-8637-42644F9945B8
${AuditMngFindingFormID}                id:form_sub_d369b141-1e74-4146-b85e-bf33fa861b7e
${AuditMngFindingAddBtnXpath}           xpath://div[@id='control_38C64463-952D-4E0F-BBDD-9B9B87DE03F5']/div/div/div/div[@id='btnAddNew']
${AuitMngFindingDescXpath}              xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']//textarea
${AuitMngFindingOwnerDdID}              id:control_434D9128-5EBC-4E25-9836-72A2C4451733
${AuditMngFindingOwnerSearchXpath}      xpath:(//input[@placeholder='Type and enter to search'])[7]
${AuditMngFindingOwnerSrchRsltXpath}    xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuitMngFindingClassDdID}              id:control_7689E71C-DC7E-41C1-9124-C6312596E956
${AuditMngFindingClassOptionXpath}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Observation'])[1]
${AuditMngFindingSaveContBtnID}         id:control_E0B5417B-8F24-4E1D-A4DB-8C68192F6F7B
${AuditMngFindingWhyAnalysis}           xpath://div[@id='control_4FC2B3AE-0A41-4D90-8C36-88DCD7802812']//span[text()='Why Analysis']
${AuditMngFindingIndFactorsDD}          xpath://div[@id='control_CDCCCDFB-B2ED-4F45-8B21-54358FAC0FB3']//span[2]/b[1]
${AuditMngFindingIndFactorsSelect}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Supervision or Inspections – Inadequate or non-existent'])//i[1]
${AuditMngFindingIndFactorsDesc}        xpath://div[@id='control_B0C4CB46-6EF6-43B0-B739-6AD8110C1A1A']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${AuditMngFindingWorkFactorsDD}         xpath://div[@id='control_7CACA862-8EE8-424E-9BFB-FCD58D175434']//span[2]/b[1]
${AuditMngFindingWorkFactorsLbl}        xpath://div[@id='control_3A4A4306-FD7E-4B41-AD40-848516065AEE']
${AuditMngFindingWorkFactorsSelect}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='Tools, Materials, or Equipment – Inadequate, not available, not maintained'])//i[1]
${AuditMngFindingWorkFactorsDesc}       xpath://div[@id='control_7CADBA7E-8CC1-408D-ADD8-3B224565131C']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${AuditMngFindingOrgFactorsDD}          xpath://div[@id='control_CD4EA32A-8E60-4164-AF57-6A2DB5335F70']//span[2]/b[1]
${AuditMngFindingOrgFactorsSelect}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Management of Change: Inadequate or non-existent'])//i[1]
${AuditMngFindingOrgFactorsDesc}        xpath://div[@id='control_C279E65E-2CA4-49CA-8455-F162FDD1D630']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${AuditMngFindingInlineEdit}            xpath://div[@id='control_C313CB91-30D1-4C52-A657-8A23FCE29C35']//div[@id='grid']/div[4]/div/div[2]/div[1]/div/div
${AuditMngFindingActionsAddBtnXpath}    xpath://div[@id='control_C313CB91-30D1-4C52-A657-8A23FCE29C35']/div/div/div[2]/div
${AuditMngFindingActionTypeDdID}        id:control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE
${AuditMngFindingActionTypeID}          xpath:(//div[contains(@class, 'transition visible')]//a[text()='Corrective'])[1]
${AuitMngFindingActionDescXpath}        xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea
${AuitMngFindingActionEnityXpath}       id:control_34D02E21-7837-484C-844E-BCC8CC077837
${AuditFindingActEntityOptionXpath}     xpath:/html/body/div/div[3]/div/div[2]/div[417]/ul/ul/li/ul/li/a
${AuditActionEntityExpandXpath}         xpath:(//a[text()='Anglo American Group']/../i)[2]
${AuditActionEntityExpand2Xpath}        xpath:(//a[text()='Bulk Commodities & Other Minerals']/../i)[3]
${AuditActionEntityExpand3Xpath}        xpath:(//a[text()='Kumba']/../i)[2]
${AuditActionEntitySelectXpath}         xpath:(//a[text()='Sishen Mine'])[2]
${AuditActionRespDdID}                  id:control_7854D003-23E6-4A2E-AF2E-357C965FA684
${AuditActionRespSearchXpath}           xpath:(//input[@placeholder='Type and enter to search'])[11]
${AuditActionRespSearchResultXpath}     xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditActionDueDateXpath}              xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${AuditActionRecurDD}                   xpath://div[@id='control_2EA9211B-54AC-4846-8A26-58606645D84A']//span[2]/b[1]
${AuditActionRecurNo}                   xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])[1]
${AuditActionSaveButtonID}              id:btnSave_form_C3D85A7C-5A22-4F19-ACB2-9F155247E6DF
${AuditActionVerificationID}            id:control_9837FA24-F3EE-4463-8BD4-8F1D6038885F
${AuditActionVerificationXpath}         xpath:(//input[@placeholder='Type and enter to search'])[14]
${AuditActionVerifyResultXpath}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Automated User'])[1]
${AuditActionCloseButtonXpath}          xpath://*[@id="form_C3D85A7C-5A22-4F19-ACB2-9F155247E6DF"]/div[1]/i[2]
${AuditMngNavLinkID}                    id:nav_1B0044DE-2C55-488C-9850-75C417EED9C8
${AuditMngFindingRecordXpath}           xpath://div[@id='control_38C64463-952D-4E0F-BBDD-9B9B87DE03F5']//div[@id='grid']/div[3]/table/tbody/tr/td[4]
${AuditFindingDescXpath}                xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']//textarea
${AuditFindingOwnerDdID}                id:control_434D9128-5EBC-4E25-9836-72A2C4451733
${AuditFindingOwnerSearchXpath}         xpath:(//input[@placeholder='Type and enter to search'])[7]
${AuditFindingOwnerResultXpath}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditFindingClassificationDdID}       id:control_7689E71C-DC7E-41C1-9124-C6312596E956
${AuditFindingClassOptionXpath}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Major Non-conformance'])[1]
${AuditFindingSaveButtonID}             id:btnSave_form_D0DC2467-E0D2-4AB2-BC47-B8987BA93E91
${AuditMngVerificationTabXpath}         xpath://div[.='Verification']
${AuditMngVerificationAddBtnXpath}      xpath://div[@id='control_EDE28D9B-722E-4786-8CCB-FFA228880432']//div[@id='btnAddNew']
${AuditVerifyAuditorTypeDdID}           id:control_F8F35C1B-6B3C-4885-9834-C64C5DDA4555
${AuditVerifyAuditorTypeOptionID}       xpath:(//a[text()='Audit manager'][1])[2]
${AuditVerifyAuditorDdID}               id:control_DEA38CFE-258E-4507-BE92-180D8536EF89
${AuditVerifyAuditorSearchXpath}        xpath:(//input[@placeholder='Type and enter to search'])[11]
${AuditVerifyAuditorResultXpath}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='AutoTest User'])[1]
${AuditVerifyDdID}                      id:control_AC075E37-7F8F-4DEC-8DF0-02DC8D70BDFB
${AuditVerifyYesOptionID}               xpath:(//div[contains(@class, 'transition visible')]//a[text()='Yes'])[1]
${AuditVerifyCommentsXpath}             xpath://div[@id='control_5FC74CF8-0BE4-459D-9599-A35927F43D28']//textarea
${AuditVerifySaveChevronXpath}          xpath://div[@id='btnSave_form_2A91B334-A8CC-4FD6-8D7D-01BC35649F02']/div/div
${AuditVerifySaveAndCloseXpath}         xpath://div[@id='btnSave_form_2A91B334-A8CC-4FD6-8D7D-01BC35649F02']//div[@id='btnSaveClose_form_2A91B334-A8CC-4FD6-8D7D-01BC35649F02']
${AuditVerifyNoOptionID}                xpath:(//div[contains(@class, 'transition visible')]//a[text()='No'])[1]
${AuditMngSearchIconpXpath}             xpath://div[@id="form_1B0044DE-2C55-488C-9850-75C417EED9C8"]/div/i
${RecordSaved}                          xpath://*[@id="txtHeader"]
${RecordSaved2}                         xpath:(//*[@id="txtHeader"])[2]

#************************************************* Audit Universe Module ******************************************
${MaintenanceModuleSectionID}           id:section_81c24ddb-1c3a-4a10-8801-5269e0c83fdf
${AuditUniverseXpath}                   xpath://label[.='Audit Universe']
${AuditUniverseAddButtonID}             id:btnActAddNew
${AuditUniverseProtocolXpath}           xpath://div[@id='control_46564859-8BA5-47D0-9760-D561A2E0A967']//input
${AuditUniverseBusinessUnitID}          id:control_449BE675-4E59-4D73-BC5C-3299FA3FE0C3
${AuditUniverseBusinessUnitXpath}       xpath://a[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c_anchor']/i
${AuditUniverseAnswerSetID}             id:control_46AE15C5-B873-488A-96D8-367ACE2710B9
${AuditUniverseAnswerSetOptionID}       id:77c98dca-1524-4656-b3f0-fe13e00b27c4_anchor
${AuditUniverseSaveContinueID}          id:control_F69F5925-C427-4B1B-9E13-A83E6B853D61
${AuditUniverseAuditSectionID}          id:control_E39BD092-2700-49A8-A5FD-A3F8E0BA7BBF
${AuditUniverseAuditSectionAddXpath}    xpath://div[@id='control_E39BD092-2700-49A8-A5FD-A3F8E0BA7BBF']//div[@id='btnAddNew']
${AuditUniverseAuditSectionTxtXpath}    xpath://div[@id='control_749F6F4D-4191-45EA-95D8-F0A2EDD78EEF']//input
${AuditUniverseSectionNumberXpath}      xpath://div[@id='control_253EAFC4-01A1-4E06-AFF6-CE6B9FA5A871']//input
${AuditUniverseSectionSaveContID}       id:control_936C65AF-07A4-44F4-8EA0-FAABD493498C
${AuditSectionQuestiontID}              id:control_9E888120-B641-4217-8588-DFFE3F677ADC
${AuditQuestionAddXpath}                xpath://div[@id='control_9E888120-B641-4217-8588-DFFE3F677ADC']//div[@id='btnAddNew']
${AuditQuestionOrderNumbXpath}          xpath://div[@id='control_5C1F05A6-CF05-4E3A-B37B-A49EA143DCEF']//input
${AuditQuestionQuestionXpath}           xpath://div[@id='control_B2B209A2-9C7E-451E-A827-E1F6F92E5D6F']//textarea
${AuditSectionSaveID}                   id:btnSave_form_0AC1816F-DEBD-42C7-8856-0A562190DAFB
${AuditUniverseNavLinkID}               id:nav_62D4AF52-271E-4D57-9BA4-6A270249FF36
${AuditUniverseBussUnitExpandXpath}     xpath:/html/body/div/div[3]/div/div[2]/div[4]/ul/ul/li/i
${AuditUniverseBusinessUnit2Xpath}      xpath://a[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca_anchor']/i
${AuditUniverseSaveBtnID}               id:btnSave_form_62D4AF52-271E-4D57-9BA4-6A270249FF36
${AuditSectionRecordLinkXpath}          xpath://div[@id='grid']/div[3]/table/tbody/tr

#************************************************* Audit Launcher Module ******************************************
${AuditLauncherXpath}                   xpath://label[.='Audit Launcher']
${AuditLauncherAddButtonID}             id:btnActAddNew
${AuditLauncherTitleXpath}              xpath://div[@id='control_943240DF-0969-4E87-AD90-82E551CB83D9']//input
${AuditLauncherTypeDdID}                id:control_5C95D703-3A67-4504-A750-5A42ACF2BB45
${AuditLauncherTypeSupplierXpath}       xpath://a[@id='ea834cc8-7078-4953-bc1d-42cece32b348_anchor']/i
${AuditLauncherTypeInternalXpath}       xpath://a[@id='daab6ab6-eef3-4edd-875b-560db3920e7d_anchor']/i
${AuditLauncherTypeExternalXpath}       xpath://a[@id='1835dc88-6ee6-4369-a7f8-4b386d4d90d6_anchor']/i
${AuditLauncherStakeholderDdID}         id:control_FEE9106A-7C32-4851-A411-3144C22F1BB0
${AuditLauncherStakeholderSrchXpath}    xpath:/html/body/div/div[3]/div/div[2]/div[7]/div/input
${AuditLauncherStakeholderOptionID}     id:06727c60-6124-4bb5-b665-3edbee5f1bcc_anchor
${AuditLauncherProtocolDdID}            id:control_26723EAD-22F7-4667-88E2-976D2837A65B
${AuditLauncherProtocolExpandXpath}     xpath://li[@id="989a0f53-8c6f-475b-bf67-fe82e316412e"]/i
${AuditLauncherProtocolOptionID}        id:825d680d-9ae9-4bb6-8511-71b04829c3df_anchor
${AuditLauncherSaveBtnID}               id:btnSave_form_9EF95016-693B-4B41-B38E-0EC8263B7BAD
${AuditLauncherSiteManagementID}        id:control_C8D70385-809C-42CC-8910-89CB393A9D2E
${AuditLauncherSiteMngAddBtnXpath}      xpath://div[@id='control_C8D70385-809C-42CC-8910-89CB393A9D2E']//div[@id='btnAddNew']
${AuditSiteMngBussinesUnitID}           id:control_D5809F7A-0FDC-402D-B817-FA211DE08FCF
${AuditSiteMngBussinesUnitSrchXpath}    xpath:/html/body/div[13]/div[1]/input
${AuditSiteMngBussUnitExpand1Xpath}     xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${AuditSiteMngBussUnitExpand2Xpath}     xpath://li[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed']/i
${AuditSiteMngBussUnitExpand3Xpath}     xpath://li[@id='8be51516-20a1-43c5-a28e-aef05604dd07']/i
${AuditSiteMngBussinesUnitOptionID}     id:f58bd3b8-14fe-4b94-9ec6-95e9e0cb1cb7_anchor
${AuditSiteMngFuncLocationDdID}         id:control_C7954A1C-A463-48DA-A4CA-CB6DAF9D7A6F
${AuditSiteMngFuncLocationOptionID}     id:37bb3a5e-09ea-41af-8331-26dea29c792d_anchor
${AuditSiteMngAuitMngDdID}              id:control_ABCF030E-AD94-4F60-A087-51ED3B88C8A9
${AuditSiteMngAuditMngSearchXpath}      xpath:/html/body/div[16]/div/input
${AuditSiteMngAuditMngSearchReultID}    id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${AuditSiteMngYearDdID}                 id:control_355082E3-35BA-4500-B83E-A601DEAA992F
${AuditSiteMngYearOptionXpath}          xpath://a[.='2021']
${AuditSiteMngSaveBtnXpath}             xpath://div[@id='control_C8D70385-809C-42CC-8910-89CB393A9D2E']//div[@id='btnSaveAll']
${AuditLaunchSrchNumberXpath}           xpath://div[@id='searchOptions']/div[3]/table/tbody/tr[2]/td[5]/input
${AuditLaunchSrchBtnID}                 id:btnActApplyFilter
${AuditLaunchSrchResultXpath}           xpath://div[@id='grid']/div[3]/table/tbody/tr
${AuditSiteMngYearOption2Xpath}          xpath://a[.='2022']

#************************************************* Audit Template Module ******************************************
${AuditTemplateXpath}                   xpath://label[.='Create Audit Template']
${AuditTemplateAddButtonID}             id:btnActAddNew
${AuditTemplateBussinessUnitID}         id:control_85A16315-2588-465C-BB7D-7A8EBA7D3C85
${AuditTemplateBussUnitExpand1Xpath}    xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${AuditTemplateBussUnitExpand2Xpath}    xpath://li[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed']/i
${AuditTemplateBussUnitExpand3Xpath}    xpath://li[@id='8be51516-20a1-43c5-a28e-aef05604dd07']/i
${AuditTemplateBussinesUnitOptionID}    id:f58bd3b8-14fe-4b94-9ec6-95e9e0cb1cb7_anchor
${AuditTemplateTypeDdID}                id:control_53D1B5B2-076A-41F4-9C67-F0D63EBED59A
${AuditTemplateTypeOptionID}            id:a8803ef2-3dc2-49dd-a360-cece63bd212c_anchor
${AuditTemplateTypeValXpath}            xpath://div[@id='control_53D1B5B2-076A-41F4-9C67-F0D63EBED59A']//li
${AuditTemplateNameXpath}               xpath://div[@id="control_650C2B60-ABE5-4970-9C86-643085C86A36"]/div/div/input
${AuditTemplateFormID}                  id:control_367C7728-DA52-40F0-B493-F4787C2ADE19
${AuditTemplateFormOptionID}            id:9e46d55b-5176-4222-9816-1d0c06217652_anchor
${AuditTemplateChecklistID}             id:control_F8B0B815-0C30-4DD6-B474-A0B3DECFB3B1
${AuditTemplateChklistItemXpath}        xpath://a[.='Auto Testing'][1]/i
${AuditTemplateSaveButtonID}            id:btnSave_form_CE3EB317-F71C-49D7-9E90-0FC9C780A3C1
${AuditTemplateArchiveXpath}            xpath://div[@id='control_87FE544E-6E0A-49D2-A69E-4E39E5FC5297']/div/div
${AuditTemplateCreateButtonID}          id:control_2122BB11-2097-4AD8-BD2B-6B13162E741A
${AuditTemplateSearchFieldXpath}        xpath://div[@id='searchOptions']/div[3]/table/tbody/tr[2]/td[5]/input
${AuditTemplateSearchButtonID}          id:btnActApplyFilter
${AuditTemplateSearchResultXpath}       xpath://div[@id='grid']/div[3]/table/tbody/tr
${AuditTemplateCloseButtonXpath}        xpath://div[@id='form_CE3EB317-F71C-49D7-9E90-0FC9C780A3C1']/div/i[2]

#************************************************* Checklist Maintenance Module ******************************************
${ChecklistMaintenanceXpath}            xpath://label[.='Checklist Maintenance']
${ChecklistMaintenanceRecordXpath}      xpath://div[@id='checklist_instance_grid']//td[.='Audit Management']
# ${ChecklistMaintenanceCoverXpath}       xpath://div[@id='cover_page']/div/table/tbody/tr/td[2]/div/div
${ChecklistQuestionsTabID}              id:tab_setup_questions
${ChecklistQuesAggregationXpath}        xpath:/html/body/div/div[2]/div/div[2]/div[3]/div[4]/div/div/div/table/thead/tr/th[2]/select
${ChecklistQuesAggrOptionXpath}         xpath:/html/body/div/div[2]/div/div[2]/div[3]/div[4]/div/div/div/table/thead/tr/th[2]/select/option
${ChecklistMaintenanceSaveXpath}        xpath://div[@id='form_a8803ef2-3dc2-49dd-a360-cece63bd212c']//div[@id='btnSave']

#************************************************* Ad Hoc Non Compliance Module ******************************************
${InspectionObsvManegXpath}             xpath://label[.='Inspection and Observation Management']
${AdHocNonCompXpath}                    xpath://label[.='Ad-Hoc Non-Compliance Intervention']
${AdHocNonCompAddButtonID}              id:btnActAddNew
${AdHocNonCompBussinessUnitDdID}        id:control_935AB1D2-0C5A-4277-8ADD-790F414D76E6
${AdNonCompBussUnitExpand1Xpath}        xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${AdNonCompBussUnitExpand2Xpath}        xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
${AdNonCompBussUnitExpand3Xpath}        xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
${AdNonCompBussinesUnitOptionID}        id:2cca9eb8-9078-4a8e-8882-4406e2f66d96_anchor
${AdHocNonCompFuncLocationDdID}         id:control_FA1D6CD9-718A-49B5-80FE-D87F692FCDA9
${AdNonCompFuncLocationOptionID}        id:df2e4b0f-09ef-416f-9997-f1b32f187b39_anchor
${AdNonCompFuncLocationSearchXpath}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[4]/div[1]/input
${AdNonCompFuncLocationSaveID}          id:btnSave_form_2D5AF480-CF73-4CC6-81CB-4EA140EBEE29
${AdNonCompInterventionGridID}          id:control_8EA5E8FA-14C0-485C-A236-A6954B5DA2D6
${AdNonCompInterventionAddBtnXpath}     xpath://div[@id='control_8EA5E8FA-14C0-485C-A236-A6954B5DA2D6']//div[@id='btnAddNew']
${AdNonCompInterventionDateXpath}       xpath://div[@id='control_E81D5D30-D0CF-4B4D-A45B-9D6A2759166A']//input
${NonCompInterReportedDateXpath}        xpath://div[@id='control_817B1336-983B-4C72-BAD5-304A992D37A1']//input
${NonCompInterReportedByDdID}           id:control_7CC7802D-F601-479A-A368-EA7E27A2B502
${NonCompInterReportedBySrchXpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[11]/div[1]/input
${NonCompInterReportedByResultXpath}    xpath://a[.='Andrew Fletcher']
${NonCompInterIssuedToDdID}             id:control_8A50209C-3EDB-40C6-A225-6EB5DA2AE0DF
${NonCompInterIssuedToSrchXpath}        xpath:/html/body/div[1]/div[3]/div/div[2]/div[12]/div[1]/input
${NonCompInterIssuedToOptionID}         id:b8ad5f90-d582-46c4-b186-d99649824acd_anchor
${NonCompInterRespPersonDdID}           id:control_F36DD606-5017-4C7B-9E0E-B4F354F7E45B
${NonCompInterRespPersonSrchXpath}      xpath:/html/body/div[1]/div[3]/div/div[2]/div[13]/div[1]/input
${NonCompInterRespPersonResultXpath}    xpath:/html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li/a
${NonCompInterTypeDdID}                 id:control_C92CA60D-7027-4F48-B9B4-60ABFDA93A62
${NonCompInterTypeOptionID}             id:2c837e23-629a-45c6-9282-8b55cc58fcea_anchor
${NonCompInterStoppageDdID}             id:control_FDBF77F4-AEAF-4F79-B2E2-7E4DB11A1DE5
${NonCompInterStoppageOptionID}         id:47277526-2e16-4555-87c7-790a70112491_anchor
${NonCompInterWrkStoppageDdID}          id:control_89EDFE37-2C85-45CD-9C73-338374164EF0
${NonCompInterWrkStoppageOptionID}      id:800dced0-9193-41d3-a96b-dac82a9cd727_anchor
${NonCompInterWrkStopReasonXpath}       xpath://div[@id='control_BFA70286-6BD9-4063-ABA8-82FE45B96A6A']/div/div/textarea
${NonCompInterClassificationDdID}       id:control_0870BCBF-A0B7-40B2-A18F-D088477B890C
${NonCompInterClassOptionID}            id:b683510b-c2ff-44a6-8226-43022ab62944_anchor
${NonCompInterStoppageDueDdID}          id:control_F3E89F54-2B95-4D1F-9AB4-25A3A4B0BEBC
${NonCompInterStopDueOptionXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li[1]/a/i[1]
${NonCompInterStopOutcomeDdID}          id:control_AB93D552-65AF-4AB1-AB2B-612D4C2F78DF
${NonCompInterStopOutcomeOptionID}      id:e613b787-8202-4995-a7a1-729f96884a54_anchor
${NonCompInterventionSaveID}            id:btnSave_form_BEF2B3D0-F159-4348-8E3B-8F0ABCFD006B
${NonCompInterventionActionGridID}      id:control_65B0C328-45FB-4802-9B5C-5489519241C3

#************************************************* Stakeholder Individual Module ******************************************
${SocialSustainabilityXpath}            xpath://label[.='Social Sustainability']
${StakeholderIndividualXpath}           xpath://label[.='Stakeholder Individual']
${StakeholderIndividualAddButtonID}     id:btnActAddNew
${StakeholderIndividualFNameXpath}      xpath://div[@id='control_E186B9E5-4102-409D-8F57-7355938C09D9']//input
${StakeholderIndividualLNameXpath}      xpath://div[@id='control_A9D1A3E8-C561-452A-A1F4-7BCB496B365F']//input
${StakeholderIndividualTitleDdID}       id:control_28C03054-D663-431B-9F65-38BE54617019
${StakeIndividualTitleOptionID}         id:87a74c11-bd39-4b28-83e3-2364ed5dca59_anchor
${StakeholderIndividualCatDdID}         id:control_F1357856-7A84-4716-9B1D-077C87CC8591
${StakeIndividualCatOptionXpath}        xpath://a[@id='9b5b69a5-bafd-46f6-98ff-4207afb3e242_anchor']/i
${StakeIndividualCatOption2Xpath}       xpath://a[@id='e9e07dee-88b2-47bb-bfe5-4d1b7ae6b637_anchor']/i
${StakeholderIndividualOwnerDdID}       id:control_2A0EA9D1-04B4-4092-AD71-0CA6ED2D9C4B
${StakeholderIndOwnerSrchXpath}         xpath:/html/body/div/div[3]/div/div[2]/div[9]/div/input
${StakeholderIndOwnerResultXpath}       xpath://a[@id='cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor']
${StakeholderIndividualBUDdID}          id:control_4CFB2165-708B-4D55-9988-9CDCB5487291
${StakeholderIndBUExpand1Xpath}         xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${StakeholderIndBUExpand2Xpath}         xpath://li[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed']/i
${StakeholderIndBUExpand3Xpath}         xpath://li[@id='8be51516-20a1-43c5-a28e-aef05604dd07']/i
${StakeholderIndBUOptionID}             xpath://li[@id='f58bd3b8-14fe-4b94-9ec6-95e9e0cb1cb7']/a/i
${StakeholderIndSaveBtnID}              id:btnSave_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD
${StakeholderIndSocialStatusGridID}     id:control_8BDD72E9-E054-413A-A0DF-F357AAE8C7B2
${StakeholderIndDetailsTabID}           id:tab_DA528E34-BBB5-4777-A826-D546DBBB3A69
${StakeholderIndAnalysisTabID}          id:tab_3F5193FE-FB15-460C-9AD5-208966AC8E83
${StakeholderIndRelTabID}               id:tab_80C001EC-AB1F-4DA8-9B60-D1195CBF4D3B
${StakeholderIndRelGrpTabID}            id:tab_B82C2B7B-17B4-489B-A8EB-B3C93477CBBE
${StakeholderIndEngageTabID}            id:tab_CF5F4EDE-1F5A-487F-9505-56097D794D34
${StakeholderIndActionsTabID}           id:tab_CF5F4EDE-1F5A-487F-9505-56097D794D34
${StakeholderIndSuppDocTabID}           id:tab_E586E46D-E795-427B-BB39-D791854E2817
${StakeholderIndCommitmentsTabID}       id:tab_EDBD083D-736C-48FA-BE2B-0E6F86800AC0
${StakeholderIndRelGrievTabID}          id:tab_1315A2E7-3411-4E1F-8424-CD79254AC639
${StakeholderRightArrowTabXpath}        xpath://div[@id='control_38AB48FE-5C8D-401B-948C-9985EF810CED']/div[9]/div/div[2]
${StakeholderLeftArrowTabXpath}         xpath://div[@id='control_38AB48FE-5C8D-401B-948C-9985EF810CED']/div[9]/div/div
${StakeholderIndSuppDocLinkXpath}       xpath://b[@class='linkbox-link']
${StakeholderIndSuppDocLinkFieldID}     id:urlValue
${StakeholderIndSuppDocTileFieldID}     id:urlTitle
${StakeholderIndSuppDocAddBtnID}        id:btnConfirmYes
${StakeholderIndDetailsXpath}           xpath://div[@id='control_DE0171C4-DDEA-47BD-A5D5-F4DF639EC9E2']/div/div/input
${StakeholderDtlsContactXpath}          xpath://div[@id='control_E47C7BB6-4A97-41C7-9E5D-C3C6FDA1B25C']/div/div/input
${StakeholderDtlsStrtAddressXpath}      xpath://div[@id='control_A02F0A7C-C785-431C-8D0C-921A485C8C97']/div/div/textarea
${StakeholderDtlsPostalXpath}           xpath://div[@id='control_F8B6B6D6-F042-40C2-8A54-08D8745DB284']/div/div/input
${StakeholderDtlsGeoLocDdID}            id:control_B9F0F229-C6DB-440C-8E07-5EF10C11442E
${StakeholderDtlsGeoLocOptionID}        id:d9f6238d-da41-472e-a3da-85daa5d02516_anchor
${StakeholderDtlsDoNotContactXpath}     xpath://div[@id='control_75AD2A23-263F-4AE2-9F25-2EB4289FABE3']/div/div
${StakeholderDtlsAltContactDdXpath}     id:control_EF9ED37D-3A57-4C98-9B4C-706C651662D8
# ${StakehlrDtlsAltContactSrchXpath}      xpath:/html/body/div/div[3]/div/div[2]/div[12]/div/input
# ${StakehlrDtlsAltContactResultXpath}    xpath:/html/body/div/div[3]/div/div[2]/div[12]/ul/ul/li/a
${StakeholderDtlsContactNumbID}         id:control_53EA1874-F86E-4399-938E-327B1C909030
${StakeholderDtlsEmailAddID}            id:control_F8B44B7B-6FB2-4190-BD96-0D52ADD596F3
${SDAnalysisImpactRatingDdID}           id:control_31C7E767-EBB3-4298-91F8-6D2BB2087E27
${SDAnalysisImpactRatingOptionID}       id:07b838b5-4fd9-4650-848b-2013eccdbc05_anchor
${SDAnalysisInterestRatingDdID}         id:control_1925A4AA-1738-4B62-AEBE-52B8F6C31096
${SDAnalysisIntrstRatingOptXpath}       xpath:/html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li[3]/a
${SDAnalysisGuidelinesPanelXpath}       xpath://span[.='Guidelines']
${SDAnalysisGuidelinesTextXpath}        xpath://div[.='Impact / Interest rating']
${SDAnalysisIssueAssessPanelXpath}      xpath://span[.='Topic/Issue Assessment']
${SDAnalysisIssueAssessAddBtnXpath}     xpath://div[@id='control_8FAC1D82-1B08-4953-9147-C9FD2CBDB738']//div[@id='btnAddNew']
${SDAnalysisIssueDdID}                  id:control_DECCD753-8245-48AE-9160-4E5F237C119A
${SDAnalysisIssueOptionID}              id:814b07fb-9411-4556-838f-f8d3784f3e96_anchor
${SDAnalysisImpactDdID}                 id:control_63C66781-07ED-4EB2-8A2F-CAED92ED118C
${SDAnalysisImpactOptionXpath}          xpath:/html/body/div[72]/ul/ul/li[3]/a
${SDAnalysisInterestDdID}               id:control_46284CB6-8E0D-4AF6-BD22-0AF4AA6E7759
${SDAnalysisInterestOptionXpath}        xpath:/html/body/div[73]/ul/ul/li[3]/a
${SHRelationshipsGridID}                id:control_32F8198B-15EA-4936-8A36-E7D8F25335E3
${SHRelationshipsAddBtnXpath}           xpath://div[@id='control_32F8198B-15EA-4936-8A36-E7D8F25335E3']//div[@id='btnAddNew']
${SHRelationshipsStkldrNameID}          id:control_5F245AC7-D951-4043-BC9F-75A1DDEBA4F8
${SHRelationshipNameSrchXpath}          xpath:/html/body/div[78]/div/input
${SHRelationshipNameResultXpath}        xpath:/html/body/div[78]/ul/ul/li/a
${SHRelationshipsTypeDdID}              id:control_F2DF7289-3CBA-4ED1-8937-8C347D349930
${SHRelationshipsTypeOptionID}          id:55323c9e-1535-4f2a-a1c1-eb1947f23aca_anchor
${SHRelationshipsCreateNewBtnXpath}     xpath://div[@id="control_D10E3324-E38A-4A81-950B-08BFDFFC49DD"]/div/div
${SHRelatedGrpsGridID}                  id:control_EE0F548B-BD30-4478-B62D-05A394FE49A3
${SHRelatedGrpsAddBtnXpath}             xpath://div[@id='control_EE0F548B-BD30-4478-B62D-05A394FE49A3']//div[@id='btnAddNew']
${SHRelatedGrpsNameID}                  id:control_9CC0D6E7-9FCE-48E5-B28D-C1BCDB97281D
${SHRelatedGrpsNameSrchXpath}           xpath:/html/body/div[82]/div[1]/input
${SHRelatedGrpsNameResultXpath}         xpath:/html/body/div[82]/ul/ul/li/a
${SHRelatedGrpsPositionDdID}            id:control_6BE27956-6CE1-4F30-BB68-785A230BA898
${SHRelatedGrpsPositionOptionID}        id:e2750dcd-6b43-44e6-90a5-a5390a3963be_anchor
${SHRelatedGrpsCreateNewBtnXpath}       xpath://div[@id='control_56D40AB4-4E0F-4BBF-8A9B-15A4D0E8AD25']/div/div
${SHGroupNameXpath}                     xpath://div[@id='control_6B36E56B-4BD2-4A16-AD58-94FE1883EFE2']//input
${SHGroupCategoriesDdID}                id:control_BDB3E74D-818E-4A51-8443-3F30BA7A472A
${SHGroupCategoriesOptionXpath}         xpath://a[@id='9b5b69a5-bafd-46f6-98ff-4207afb3e242_anchor']/i
${SHGroupDescriptionXpath}              xpath://div[@id='control_4AEFCBE1-7C06-4528-BB6B-CFD298C47AA1']//textarea
${SHGroupApplicableBUDdID}              id:control_931D1181-0EA6-4EBF-BAA9-B497F5793EC0
${SHGroupApplicableBUExpand1Xpath}      xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${SHGroupApplicableBUOptionXpath}       xpath://a[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed_anchor']/i
${SHGroupSaveBtnID}                     id:btnSave_form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E
${SHGroupContactPhoneXpath}             xpath://div[@id='control_F58CA39A-8E24-4A56-987E-5B84412F0A9C']/div/div/input
${SHGroupContactEmailXpath}             xpath://div[@id='control_E95B004E-1283-4AD5-85C0-2AA11196F34D']/div/div/input
${SHGroupStreetAddressXpath}            xpath://div[@id='control_C30F3943-2351-490A-A865-7D2337A1F7C5']/div/div/textarea
${SHGrouppostalCodeXpath}               xpath://div[@id='control_99DCFFAC-34D1-4291-9154-5B3B7DC59D1B']/div/div/input
${SHGroupLocationDdID}                  id:control_B64B2E96-473B-4207-8FCE-C7DAB53F8834
${SHGroupLocationOptionID}              id:d9f6238d-da41-472e-a3da-85daa5d02516_anchor
${SHEngagementsGridID}                  id:control_C877A3E8-E3A4-4AF5-8A48-20E27BEA0FDE
${SHPreviousEngagementsAddBtnXpath}     xpath://div[@id='control_B7FD90BD-B7B7-45E8-9010-0F3DA43D264D']/div/div
${SHPreviousEngagementsTitleXpath}      xpath://div[@id='control_B0DFFFFF-66B3-4CB4-B4E5-23C8E0010864']/div/div/input
${SHPreviousEngagementsDateXpath}       xpath://div[@id='control_C6060E39-99D5-417B-90CF-09077C971E5D']/div/span/span/input
${SHPreviousEngagementsBUDdID}          id:control_16C9A7FC-3091-4E0D-9B1A-709C8F0AC8B5
${SHPrevEngagementsBUExpand1Xpath}      xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${SHPrevEngagementsBUExpand2Xpath}      xpath://li[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed']/i
${SHPrevEngagementsBUExpand3Xpath}      xpath://li[@id='8be51516-20a1-43c5-a28e-aef05604dd07']/i
${SHPrevEngagementsBUOptionID}          xpath://a[@id='f58bd3b8-14fe-4b94-9ec6-95e9e0cb1cb7_anchor']
${SHPrevEngagementsFuncDdID}            id:control_0FF334FE-CE57-49BF-BA69-9BE5DA3447CB
${SHPrevEngagementsFuncOptionXpath}     xpath://a[@id='2d1d20e4-fd80-4437-9681-fe055fb28cf2_anchor']/i
${SHPrevEngagementsMethodDdID}          id:control_4A471537-8229-4E54-A86C-DCEB99BA24D0
${SHPrevEngagementMethodOptionXpath}    xpath://a[@id='7956269d-1421-4acf-8539-c5ecaee58212_anchor']
${SHPrevEngagementRespPersonDdID}       id:control_213251A2-010A-4BBF-A65A-A1FC8C6F7033
${SHPrevEngageRespPersonSrchXpath}      xpath:/html/body/div/div[3]/div/div[2]/div[15]/div/input
${SHPrevEngageRespPersonResultXpath}    xpath:/html/body/div/div[3]/div/div[2]/div[15]/ul/ul/li/a
${SHPrevEngageTopicDdID}                id:control_2D1B5E8D-BBF2-448A-9765-F03FA8C31019
${SHPrevEngageTopicOptionXpath}         xpath://a[@id='814b07fb-9411-4556-838f-f8d3784f3e96_anchor']/i
${SHPrevEngageDescriptonXpath}          xpath://div[@id='control_1C19AE65-23A1-4ADC-A631-D9273FC0CE9F']/div/div/textarea
${SHPrevEngageGeoLocDdID}               id:control_F703A144-D0B6-4D4D-B5E2-D4E186427A43
${SHPrevEngageGeoLocOptionXpath}        xpath://a[@id='d9f6238d-da41-472e-a3da-85daa5d02516_anchor']
${SHPrevEngageSaveBtnID}                id:btnSave_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC
${SHEngagePlanTabID}                    xpath://div[.='Engagement Plan']
${SHEngagePlanAddBtnID}                 id:control_9AE170B5-C31D-4C0C-AAAD-EDC0EB7E230E
${SHEngagePlanBUDdID}                   id:control_8BE367EF-E449-4165-BC05-74385ECBF771
${SHEngagePlanBUDdExpandXpath}          xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${SHEngagePlanBUDdExpand2Xpath}         xpath://li[@id='7b0159f1-23bb-4579-ae4a-86a751efc2ca']/i
${SHEngagePlanBUDdExpand3Xpath}         xpath://li[@id='e0c53028-7283-4577-acd8-4f6d681f1b62']/i
${SHEngagePlanBUDdSelectID}             id:01c13f84-4e67-4a72-99fd-347a8d9b2c32_anchor
${SHEngagePlanTitleXpath}               xpath://div[@id='control_185410E8-D077-4DE6-8958-5772CA36E091']/div/div/input
${SHEngagePlanStartDateXpath}           xpath://div[@id='control_90276DFA-A2DD-4A38-8D96-E84491597886']/div/span/span/input
${SHEngagePlanFrequencyDdID}            id:control_E457C6F1-F44C-4B21-8089-E7153700AFB4
${SHEngagePlanFrequencyOptionID}        id:77a9b954-cb1c-4fa2-ab2e-7af3673fbbd0_anchor
${SHEngagePlanPurposeID}                id:control_36951962-3063-4DA2-9846-ED7137AFC783
${SHEngagePlanPurposeOptionXpath}       xpath://a[@id='2d1d20e4-fd80-4437-9681-fe055fb28cf2_anchor']/i
${SHEngagePlanResponsiblePrsnDdID}      id:control_C2B7C6FA-10FC-4593-BD27-6869D1790758
${SHEngagePlanRespPrsnSrchXpath}        xpath:/html/body/div/div[3]/div/div[2]/div[15]/div/input
${SHEngagePlanRespPrsnResultID}         id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${SHEngagePlanSaveBtnID}                id:btnSave_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F
${SHCommitmentsBtnAddXpath}             xpath://div[@id='control_E679A8FB-562A-4E40-8531-3A1EF7DBC7CA']/div/div
${SHCommitmentsBUDdID}                  id:control_21A07758-2945-467A-92CF-F571AE83FEFA
${SHCommitmentsBUDdExpandXpath}         xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${SHCommitmentsBUDdExpand2Xpath}        xpath://li[@id='293b3cba-d99b-4ce7-bfaf-7a91b31297ed']/i
${SHCommitmentsBUDdExpand3Xpath}        xpath://li[@id='8be51516-20a1-43c5-a28e-aef05604dd07']/i
${SHCommitmentsBUDdSelectID}            id:f58bd3b8-14fe-4b94-9ec6-95e9e0cb1cb7_anchor
${SHCommitmetsFuncLocationDdID}         id:control_D3AF1650-B305-44CF-8463-1B003793EB72
${SHCommitmetsFuncLocationOptionID}     id:37bb3a5e-09ea-41af-8331-26dea29c792d_anchor
${SHCommitmentsRegTitleXpath}           xpath://div[@id='control_804F813A-B603-4ED8-A416-3571D2146714']/div/div/input
${SHCommitmentsRegOwnerDdID}            id:control_189B6C8F-E360-4339-A9B7-BF2C517A69E0
${SHCommitmentsRegOwnerSrchXpath}       xpath:/html/body/div/div[3]/div/div[2]/div[6]/div/input
${SHCommitmentsRegOwnerRsltID}          id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${SHCommitmentsSaveBtnID}               id:btnSave_form_DCB70D8A-B79E-4968-9607-29115B4FCDC2
${SHGrievancesGridID}                   id:control_26334270-5896-4852-918D-D508124D8B2D
${SHActionsAddBtnXpath}                 xpath://div[@id='control_9C28A74C-46A0-4CA4-9378-F196C193BD8A']//div[@id='btnAddNew']
${SHActionsTypeDdID}                    id:control_F1D9D484-9182-4B8C-95F9-AFFB440EB3CE
${SHActionsTypeOptionID}                id:2006cc14-2025-4073-97e4-fca83aa8a2c4_anchor
${SHActionsDescriptionXpath}            xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']/div/div/textarea
${SHActionsEntityDdID}                  id:control_34D02E21-7837-484C-844E-BCC8CC077837
${SHActionsEntityExpandXpath}           xpath:/html/body/div/div[3]/div/div[2]/div[38]/ul/ul/li/i
${SHActionsEntityExpand2Xpath}          xpath:/html/body/div/div[3]/div/div[2]/div[38]/ul/ul/li/ul/li[2]/i
${SHActionsEntityExpand3Xpath}          xpath:/html/body/div/div[3]/div/div[2]/div[38]/ul/ul/li/ul/li[2]/ul/li/i
${SHActionsEntitySelectXpath}           xpath:/html/body/div/div[3]/div/div[2]/div[38]/ul/ul/li/ul/li[2]/ul/li/ul/li/a
${SHActionsRespPersonDdID}              id:control_7854D003-23E6-4A2E-AF2E-357C965FA684
${SHActionsRespPersonSrchXpath}         xpath:/html/body/div/div[3]/div/div[2]/div[39]/div/input
${SHActionsRespPersonRsltXpath}         xpath:/html/body/div/div[3]/div/div[2]/div[39]/ul/ul/li[2]/a
${SHActionsDueDateXpath}                xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']/div/span/span/input
${SHActionsSaveArrowBtnXpath}           xpath://div[@id='btnSave_form_3FA76381-27A7-4E29-B2EF-9BE41116F069']/div/div
${SHActionsSaveAndCloseBtnID}           id:btnSaveClose_form_3FA76381-27A7-4E29-B2EF-9BE41116F069
${SHIndividualKnownAsXpath}             xpath://div[@id='control_BED0557B-BBC2-46C1-B571-BE60A267F0EA']/div/div/input

#************************************************* Waste Management Module ******************************************
${EnvironmentSustainabilityXpath}       xpath://label[.='Environmental Sustainability']
${WasteMonitoringXpath}                 xpath://label[.='Waste Monitoring']
${WMAddBtnID}                           id:btnActAddNew
${WMBusinessUnitDdID}                   id:control_CC87C754-881C-42E6-8614-60C1D7F57AA0
${WMBusinessUnitExpandXpath}            xpath://li[@id='4cee9a75-7667-44e9-a0c1-77ad5092e86c']/i
${WMBusinessUnitExpand2Xpath}           xpath://li[@id='fb93eb86-7cff-4f7e-95ae-48817f24f052']/i
${WMBusinessUnitExpand3Xpath}           xpath://li[@id='826e8170-0375-48c4-9aaf-af59e8e8aeba']/i
${WMBusinessUnitSelectID}               id:25742496-c98d-431e-96c8-18619861422e_anchor
${WMResponsiblePersonDdID}              id:control_F8D7427C-5BDE-4D08-A7C1-30AAE60523CE
${WMResponsiblePersonSearchXpath}       xpath:/html/body/div/div[3]/div/div[2]/div[5]/div/input
${WMResponsiblePersonResultID}          id:cbe087ad-bd0e-4e8b-8997-60a9b5b0ef37_anchor
${WMMonitoringPointDdID}                id:control_82663F92-D119-4E95-AB6B-2EE1D02F3018
${WMMonitoringPointOptionID}            id:8ea40896-d317-432f-8f94-b07fb8c277cf_anchor
${WMMonthDdID}                          id:control_67409BD4-10C9-4E1C-A36B-561013F547AF
${WMMonthOptionID}                      id:5628d422-556b-4b87-b05d-c0f76c4aa26f_anchor
${WMYearDdID}                           id:control_C5AEE85A-8D13-463A-895E-44674EDFE1A3
${WMYearOptionID}                       id:92142c9d-bc98-4f19-84c2-dc6541dba7dd_anchor
${WMEnviromentalPermitsDdID}            id:control_6F32DB5B-51E0-451B-B189-9F71EF417144
${WMLinkToProjectsDdID}                 id:control_4BEEF414-709D-4138-9EE9-E70566B99A9F
${WMSaveBtnID}                          id:btnSave_form_ED7B523E-78C7-4769-9057-C861DB4B3268
${WMEnviromentalPermitsChkXpath}        xpath://div[@id='control_6D14C265-3BB6-48EE-8DEF-A63263A94F59']/div/div
${WMLinkToProjectsChkXpath}             xpath://div[@id='control_F6CB015F-81DB-485A-8BA4-81419109A73B']/div/div
${WMMeasurementssPanelXpath}            xpath://div[@id='control_91968B92-92B0-4629-B50F-A7D3157D9C3F']/div[9]/div/span
${WMMeasurementsAddBtnXpath}            xpath://div[@id='control_95FA633D-2148-4CA4-84EE-7A576E2F7567']//div[@id='btnAddNew']
${WMMeasurementsItemDdID}               id:control_CCCED4FC-2C23-473D-B1AF-59F8D14328EA
${WMMeasurementsItemSearchXpath}        xpath:/html/body/div[18]/div/input
${WMMeasurementsItemExpandXpath}        xpath://li[@id='99fbfd7c-0ff7-423c-b1ef-2fa48809b1f4']/i
${WMMeasurementsItemExpand2Xpath}       xpath://li[@id='acfbd8f2-cc4e-46ad-9855-30efa2d12b3c']/i
${WMMeasurementsItemOptionID}           id:e02aec51-3612-4436-8645-93d6ca5bcaa2_anchor
${WMMeasurementsNumbXpath}              xpath://div[@id='control_2A14D887-040D-4C94-ACFC-6C803F0D5B74']//input
${WMMeasurementsTakenByDdID}            id:control_3748AC64-90AA-4946-AB1B-36E80A2EB5D0
${WMMeasurementsTakenBySearchXpath}     xpath:/html/body/div[20]/div/input
${WMMeasurementsTakenByResultXpath}     xpath:/html/body/div[20]/ul/ul/li/a
${WMMeasurementsActivityDdID}           id:control_BEECF9BE-7235-4CC5-A16C-BD53F00F6842
${WMMeasurementsActivityOptionID}       id:c826bc32-c071-4ef7-ab0e-806624dd4d6a_anchor
${WMMeasurementsCommentsXpath}          xpath://div[@id='control_BA604F69-0E8B-4735-A532-F667ED4BEAAB']/div/div/textarea
${WMMeasurementsRecActExpandXpath}      xpath://li[@id='d2d9acf1-e041-46d2-a765-69c6547ff0c4']/i
${WMMeasurementsRecActOptionID}         id:cf6c94b5-9066-4562-a968-ec4130c7fcd8_anchor
${WMMeasurementsLinkToDocXpath}         xpath://div[@id='control_54D4275D-39C8-468E-BA77-13ECCB4FEDF6']/div/div/div[2]/b[2]
${WMMeasurementsURLFieldID}             id:urlValue
${WMMeasurementsURLTileFieldID}         id:urlTitle
${WMMeasurementsURLAddBtnID}            id:btnConfirmYes
${WMFindingsPanelXpath}                 xpath://div[@id='control_58A9E1F6-48EB-4844-BF8C-FB9CE3F4267A']/div[9]/div/span
${WMFindingsAddBtnXpath}                xpath://div[@id='control_414AC343-A505-4F62-9CC4-49856FC7FC21']//div[@id='btnAddNew']
${WMFindingsDescriptionXpath}           xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']/div/div/textarea
${WMFindingsOwnerDdID}                  id:control_434D9128-5EBC-4E25-9836-72A2C4451733
${WMFindingsOwnerSearchXpath}           xpath:/html/body/div/div[3]/div/div[2]/div[20]/div/input
${WMFindingsOwnerResultXpath}           xpath:/html/body/div/div[3]/div/div[2]/div[20]/ul/ul/li[2]/a
${WMFindingsClassificationDdID}         id:control_7689E71C-DC7E-41C1-9124-C6312596E956
${WMFindingsClassificationOptionID}     id:37e3a345-8b6a-41b8-ad8e-6a9561148b31_anchor
${WMFindingsSaveAndCloseArrowXpath}     xpath://div[@id='btnSave_form_6F352166-D6BB-4AF3-B90E-6B8A72FCDF7A']/div/div
${WMFindingsSaveAndCloseBtnID}          id:btnSaveClose_form_6F352166-D6BB-4AF3-B90E-6B8A72FCDF7A
${WMYearOption2ID}                      id:47b9a834-9ac8-4f53-8e30-821d346a6891_anchor