*** Variables ***
#************************************************* Common Variables ****************************************************
${BROWSER}             Chrome
${URL}                 https://project-anglo.isometrix.net/login.aspx?signin=1
${Error Message Text}  Validation: Please enter value
${Password Value}      Admin123
${Username Value}      AutoTest

#************************************************* Common Elements ****************************************************
${LoadingBarXpath}      xpath://div[@class='k-loading-color']

#************************************************* Landing Page *******************************************************
${ECO2Manbtn}                 xpath://*[@id="section_ab4a049c-98c4-43d1-a5fc-5633e73d20c9"]

#************************************************* Production Data *******************************************************
${ProductionDatabtn}          id:section_dffc979b-2853-4c4b-ab80-9ec96ea85821
${ProductionDataheading}      class:Production data
${Addbtn}                     id:btnActAddNew
${ProcessFlowbtn}             xpath://*[@id="btnProcessFlow_form_DFE45300-55BA-4BCD-BBE8-245BC1ED23FF"]/span
${Pin}                        xpath://*[@id="divFlow_form_DFE45300-55BA-4BCD-BBE8-245BC1ED23FF"]/div[1]/i
${BusinessType}               xpath://*[@id="control_2EFE3990-9EB5-4B41-BEB7-8FCF2D4CAAAE"]/div[1]/a/span[1]/ul/li
${BusinessTypeBaseMetals}     xpath://*[@id="293b3cba-d99b-4ce7-bfaf-7a91b31297ed"]/i
${BaseMetalsChile}            xpath://*[@id="510153ee-d42b-4fac-9c36-198a40169a40"]/i
${BaseMetalsCollahuasi}       xpath://*[@id="510153ee-d42b-4fac-9c36-198a40169a40_anchor"]
${EnergyandCarbon}            id:1275bd1b-345f-4310-aec1-233dabf34f62_anchor
${MonitoringType}             id:1275bd1b-345f-4310-aec1-233dabf34f62
${Monthdrpdwn}                xpath://*[@id="control_7D8DFC19-F194-4E69-8A12-192151A5ABB8"]/div[1]/a/span[2]/b[1]
${FebMonthdrpdwn}             xpath://*[@id="914fe18b-9b10-46b9-b8b6-9bf99d02e3b9_anchor"]
${AprilMonthdrpdwn}           xpath://*[@id="2a550d6b-d099-4140-aacf-ca233c8f1532_anchor"]
${Yeardrpdwn}                 xpath://*[@id="control_64D7DA8B-FB24-4E72-8F4C-7732C413FC6E"]/div[1]/a/span[2]/b[1]
${2017Yeardrpdwn}             xpath://*[@id="cf7e8ba0-4e56-4715-b99d-af406fdfd989_anchor"]
${FullTimeEmployeetxtbx}      xpath://*[@id="control_261F9471-FCF2-4065-99D4-7D1C95A9C5B0"]/div[1]/div/input
${WaterConsumedtxtbx}         xpath://*[@id="control_813D529A-035F-4D4E-90CD-5E3FF9098AAD"]/div[1]/div/input
${RockMilledtxtbx}            xpath://*[@id="control_56C20CF8-349F-4CBF-BFBC-31813AC4D21A"]/div[1]/div/input
${EnergyConsumedtxtbx}        xpath://*[@id="control_4F170096-7511-4B23-AEB9-35AC1E20B9DE"]/div[1]/div/input
${TonneMinedtxtbx}            xpath://*[@id="numberInput"]
${SaveToContinuebtn}          xpath://*[@id="control_A226FF0C-22B1-420A-93E9-09140FCAE245"]/div[1]
${EditAddbtn}                 xpath://*[@id="btnAddNew"]
${ProductIndicatorslct}       xpath://*[@id="control_7DF5F45A-592F-49AA-BC19-FB5BEEEDBD50"]/div[1]/a/span[1]/ul/li
${Aggregatesdrpdwn}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='Baseline'])[1]
${QtyofMineralProducedtxtbx}  xpath://*[@id="control_43F621A6-855C-4C64-BD66-A1DBB3422172"]/div[1]/div/input
${QtyofMineralUOMtxtbx}       xpath://*[@id="control_DCC0F180-B135-4038-9A5B-0C3BA5AEB9B1"]/div[1]/a/span[1]/ul/li
${UOMEnergyandCardbon}        xpath://*[@id="717d6ad3-4177-4a4e-b827-ac006c717a4c_anchor"]
${Savebtn}                    xpath://*[@id="formWrapper_0"]/td[1]/div[1]
${ProductionDataSavebtn}      xpath://*[@id="btnSave_form_DFE45300-55BA-4BCD-BBE8-245BC1ED23FF"]/div[3]
${SearchBusinessUnit}         xpath://*[@id="searchOptions"]/div[3]/table/tbody/tr[3]/td[5]/div[1]/a/span[1]/ul/li
${SearchBusinessUnitexpnd}    xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${BaseMetalschkbx}            xpath://*[@id="293b3cba-d99b-4ce7-bfaf-7a91b31297ed_anchor"]/i[1]
${SearchBusinessUnitexpnd}    xpath://*[@id="4cee9a75-7667-44e9-a0c1-77ad5092e86c"]/i
${FilterSearchbtn}            id:btnActApplyFilter
${View}                       xpath://*[@id="grid_DFE45300-55BA-4BCD-BBE8-245BC1ED23FF_context"]
${RecordSaved}                xpath://*[@id="txtHeader"]
