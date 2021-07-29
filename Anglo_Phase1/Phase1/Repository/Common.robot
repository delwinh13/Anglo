*** Variables ***
#************************************************* Common Variables ****************************************************
${BROWSER}             Chrome
#QA
${URL}                 https://isom-testprod.ssd.angloamerican.com/login.aspx?mixedmode=1
#PreProd
#{URL}                  https://isom-dev.angloamerican.com/login.aspx?mixedmode=1
#Phase2
#${URL}                  https://anglo-phase2.isometrix.net//default.aspx
${Error Message Text}  Validation: Please enter value
${Password Value}      Admin123
${Username Value}      AutoTest
${TYPE OF FILE}        png

#************************************************* Common Elements ****************************************************
${LoadingBarXpath}                      xpath://div[@class='k-loading-color']
${WaitDivXpath}                         xpath://div[@id='divWait']
${WaitLoaderID}                         id:txtWait
${IsoMetrixHomeXpath}                   xpath://div[@id='divSiteName']

#************************************************* Login Page Elements *************************************************
${Usernameid}                           id:txtUsername
${Passwordid}                           id:txtPassword
${SubmitButtonid}                       id:btnLoginSubmit
${Error Message}                        xpath://*[@id="txtUsername_tt_active"]/div[2]
${Sidebarlink}                          xpath://*[@id='default-page']/body/div/div[1]/a/i

#************************************************* Landing Page *******************************************************
${ECO2Manbtn}                 xpath://*[@id="section_ab4a049c-98c4-43d1-a5fc-5633e73d20c9"]
${iFrame}                     xpath://*[@id='ifrMain']
${Menu}                       xpath://*[@id="default-page"]/body/div/div[1]/a/i
${ECO2Mansidemenu}            xpath://*[@id="default-page"]/body/div/div[2]/div[15]/a/div
#************************************************* Supporting Documents ************************************************
#${iFramePopUp}                xpath://*[@id="ifrPrimaryPopupCover"]