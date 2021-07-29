*** Variables ***

${Officeurl}                                https://www.office.com
${outlookusername}                          Kavi.Mahadeo@isometrix.com
${outlookpassword}                          Metrix@2021@
${SignInBtn}                                xpath://a[contains(text(),'Sign in')]
${EmailField}                               xpath://input[@type='email']
${EmailNext}                                xpath://input[@value='Next']
${EmailPasswordField}                       xpath://input[@type='password']
${EmailSignInBtn}                           xpath://input[@value='Sign in']
${Outlook}                                  xpath://a[@id='ShellMail_link']
${SystemMailFolder}                         xpath://span[text()='Isometrix NonProduction']
${EmailLinkBacktoRecord}                    xpath://a[@data-auth='NotApplicable']
${IsoMetrixSignInXpath}                     xpath://div[@id='divMixedMode']/div/div[2]/div[text()='ISOMETRIX SIGN IN']
${StakeGroupAddedSubject}                   xpath:(//span[contains(text(),'Non production - IsoMetrix Stakeholder Group #')][contains(text(),'has been added')])[1]
${ProjectManagementAddedSubject}            xpath:(//span[contains(text(),'Non production - IsoMetrix Project Management #')][contains(text(),'has been added')])[1]
${EngagementManagementAddedSubject}         xpath:(//span[contains(text(),'Non production - IsoMetrix Engagements #')][contains(text(),'has been added')])[1]
#${EngagementPermitManagementSubject}        xpath:(//span[contains(text(),'Non production - IsoMetrix Permits Permit title: auto test has been logged.')])[1]