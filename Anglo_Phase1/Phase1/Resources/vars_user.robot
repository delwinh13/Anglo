*** Variables ***
#************************************************* Common Variables ****************************************************
${BROWSER}             Chrome
${URL}                 https://isom-sa.angloamerican.com/
${Error Message Text}  Validation: Please enter value
${Password Value}      Admin123
${Username Value}      AutoTest

#************************************************* Common Elements ****************************************************
${LoadingBarXpath}                      xpath://div[@class='k-loading-color']
${WaitDivXpath}                         xpath://div[@id='divWait']
${WaitLoaderID}                         id:txtWait
${IsoMetrixHomeXpath}                   xpath://div[@id='divSiteName']
${iFrame}                               xpath://*[@id='ifrMain']

#************************************************* Login Page Elements *************************************************
${Usernameid}                           id:txtUsername
${Passwordid}                           id:txtPassword
${SubmitButtonid}                       id:btnLoginSubmit
${Error Message}                        xpath://*[@id="txtUsername_tt_active"]/div[2]
${Sidebarlink}                          xpath://*[@id='default-page']/body/div/div[1]/a/i

#************************************************* Users ****************************************************************
${IsoMetrixSignInBtnID}                 id:btnIsometrixSignin
${SideMenuExpandCollapseXpath}          xpath:/html/body/div/div/a
${UsersMenuLinkXpath}                   xpath://div[@title='Users']
${UsersAddBtnID}                        id:btnAddUser
${ConfirmationPopupMessageXpath}        xpath://div[@class='confirm-popup popup']
${ConfirmationPopupNoBtnID}             id:btnConfirmNo
${DefaultEmailXpath}                    xpath://div[@id='userDetails']/div/table/tbody/tr/td[2]/div/input

