@LoginForm

Feature: Login Form

  Scenario Outline: Negative Validation Login

    Given I have launched the browser
    And I wait for the element to be saved

      ##################Sign in with no credentials##############
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    Then I click on an element <CloseUsernameXpath> with xpath

      ####################Sign in with invalid Username###########
    When I enter <UsernameID> with ID <InvalidUsernameValue>
    When I click the <ButtonID> Button with ID
    Then I click on an element <ClosePasswordXpath> with xpath
    And I wait for the element to be visible
    When I clear a textfield with ID <UsernameID>

      #####################Sign in with invalid Password###########
    When I enter <PasswordID> with ID <InvalidPasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    Then I click on an element <CloseUsernameXpath> with xpath
    When I clear a textfield with ID <PasswordID>

      ###################Sign in with valid Username and invalid password##################
    When I enter <UsernameID> with ID <ValidUsernameValue>
    When I enter <PasswordID> with ID <InvalidPasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

      ######################Forgot forgot password link#####################################
    When I click the <ResetPasswordLinkID> Button with ID
    When I click the <ForgotBackID> Button with ID
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click the <RequestAccesslinkID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click the <LabelBackToLoginID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
#    And I close the browser
#    And I wait for the element to be visible


    Examples:
      | InvalidUsernameValue | UsernameID  | InvalidPasswordValue | PasswordID  | ButtonID       | CloseUsernameXpath                        | ClosePasswordXpath                        | DivLoginError                          | ValidUsernameValue | ResetPasswordLinkID | ForgotBackID  | RequestAccesslinkID | LabelBackToLoginID |
      | T                    | txtUsername | 2                    | txtPassword | btnLoginSubmit | //*[@id="txtUsername_tt_active"]/div[1]/a | //*[@id="txtPassword_tt_active"]/div[1]/a | //*[@id="divLogin_tt_active"]/div[1]/a | Isometrixsystem11  | resetPassword       | lblForgotBack | requestAccess       | lblAccessBack      |

  Scenario Outline: Login with Valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LogoutXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click the <SigninAgainID> Button with ID

  #####################Login again####################
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LogoutXpath> with xpath
    And I wait for the element to be visible
#    And I close the browser
#    And I wait for the element to be visible


    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | LogoutXpath                                | SigninAgainID           |
      | Isometrixsystem | txtUsername | 1             | txtPassword | btnLoginSubmit | /html/body/div/div[1]/div[3]/div[2]/a[3]/i | btnIsometrixSigninagain |


  Scenario Outline: Negative Validations - Request Access

  ##################Request Access with blank fields##################
    Given I have launched the browser
    When I click the <RequestAccessID> Button with ID
    And I wait for the element to be visible
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be visible
    Then I click on an element <CloseUsernameXpath> with xpath


  #####################Request access with Surname only##############################
    When I enter <txtsurnameID> with ID <txtsurnameValue>
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <CloseNAmeXpath> with xpath
#  When I clear a textfield with ID <txtsurnameID>

  ##########################Request access with Name and Surname Only##################
    And I wait for the element to be visible
    When I enter <txtnameID> with ID <txtnameValue>
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <CloseEmailXpath> with xpath

  #######################Request access with Name,Surname and invalid email address####################
    And I wait for the element to be visible
    When I enter <txtdefault_emailID> with ID <txtdefault_emailValue>
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <CloseReqNotesXpath> with xpath

  #######################Request access with Name,Surname,invalid email address and request notes####################
    And I wait for the element to be visible
    When I enter <txtReqNotesID> with ID <txtReqNotesValue>
    And I wait for the element to be visible
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be visible
    Then I click on an element <CloseEmailXpath> with xpath
    And I wait for the element to be visible
    When I click the <BacktoLoginID> Button with ID



    Examples:
      | SubmitRequestID | RequestAccessID | CloseUsernameXpath                       | txtsurnameID | txtsurnameValue | CloseNAmeXpath                        | txtnameID | txtnameValue | CloseEmailXpath                                | txtdefault_emailID | txtdefault_emailValue | CloseReqNotesXpath                        | txtReqNotesID | txtReqNotesValue | BacktoLoginID |
      | btnAccessSubmit | lblAccess       | //*[@id="txtsurname_tt_active"]/div[1]/a | txtsurname   | D               | //*[@id="txtname_tt_active"]/div[1]/a | txtname   | A            | //*[@id="txtdefault_email_tt_active"]/div[1]/a | txtdefault_email   | kopano                | //*[@id="txtReqNotes_tt_active"]/div[1]/a | txtReqNotes   | access           | lblAccessBack |

  Scenario Outline: Successful Access Request

    When I click the <RequestAccessID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

  #########################Clear the fields###########################
    And I clear a textfield with ID <txtsurnameID>
    And I clear a textfield with ID <txtnameID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtdefault_emailID>
    And I clear a textfield with ID <txtReqNotesID>
    And I clear a textfield with ID <txtReqNotesID>
    And I clear a textfield with ID <txtReqNotesID>
    And I clear a textfield with ID <txtReqNotesID>
    And I clear a textfield with ID <txtReqNotesID>
    And I clear a textfield with ID <txtReqNotesID>
    And I wait for the element to be saved
    #####################positive Access Request################
    When I enter <txtsurnameID> with ID <txtsurnameValue>
    And I wait for the element to be saved
    When I enter <txtnameID> with ID <txtnameValue>
    And I wait for the element to be saved
    When I enter <txtdefault_emailID> with ID <txtdefault_emailValue>
    And I wait for the element to be saved
    When I enter <txtReqNotesID> with ID <txtReqNotesValue>
    And I wait for the element to be saved
    When I click the <SubmitRequestID> Button with ID
    And I wait for the element to be saved
#    And I close the browser
#    And I wait for the element to be visible
#    And I wait for the element to be visible

    Examples:
      | RequestAccessID | txtsurnameID | txtsurnameValue | txtnameID | txtnameValue | txtdefault_emailID | txtdefault_emailValue            | txtReqNotesID | txtReqNotesValue    | SubmitRequestID |
      | lblAccess       | txtsurname   | Daisy           | txtname   | Approve      | txtdefault_email   | kopano.makanatleng@isometrix.com | txtReqNotes   | Please grant access | btnAccessSubmit |


  Scenario Outline: Negative Validations - Reset Password


        ###################Reset Paswword without entering Username and Email###################
    Given I have launched the browser
    When I click the <ResetPassword> Button with ID
    And I wait for the element to be saved
    When I click the <ForgotPasswordSubmitID> Button with ID

        ###################Reset Password with Username only#####################################
    And I wait for the element to be saved
    When I enter <ForgotUsernameID> with ID <ForgotUsernameValue>
    And I wait for the element to be saved
    When I click the <ForgotPasswordSubmitID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <CloseForgotEmailXpath> with xpath

        #######################Reset Password with username and an invalid email#################
    When I enter <EmailID> with ID <EmailValue>
    And I wait for the element to be saved
    When I click the <ForgotPasswordSubmitID> Button with ID
    And I wait for the element to be saved
    Then I click on an element <CloseForgotEmailXpath> with xpath
    When I click the <BacktoLoginID> Button with ID
    And I wait for the element to be visible
#    And I close the browser

    Examples:
      | ResetPassword | ForgotUsernameID  | ForgotUsernameValue | ForgotPasswordSubmitID | CloseForgotEmailXpath                        | EmailID        | BacktoLoginID | EmailValue |
      | lblForgot     | txtForgotUsername | k                   | btnForgotSubmit        | //*[@id="txtForgotEmail_tt_active"]/div[1]/a | txtForgotEmail | lblForgotBack | D          |

  Scenario Outline: Reset User Password (User Login)
    Given I have launched the browser
    When I click on the <ResetPasswordBtnTag> with the text <ResetPasswordBtnText>
    When I enter <ForgotUsernameID> with ID <ForgotUsernameValue>
    When I enter <ForgotEmailID> with ID <ForgotEmailValue>
    When I click the <ForgotSubmitBtnID> Button with ID
#    And I close the browser

    Examples:
      | ResetPasswordBtnTag | ResetPasswordBtnText | ForgotUsernameID  | ForgotUsernameValue | ForgotEmailID  | ForgotEmailValue | ForgotSubmitBtnID |
      | a                   | Reset password       | txtForgotUsername | DaisyTest           | txtForgotEmail | Daisy@gmail.com  | btnForgotSubmit   |

  Scenario Outline: Locked Account

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <CloseErrorMsgXpath> with xpath
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <CloseErrorMsgXpath> with xpath
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <CloseErrorMsgXpath> with xpath
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <CloseErrorMsgXpath> with xpath
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <CloseErrorMsgXpath> with xpath
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <CloseErrorMsgXpath> with xpath
##    And I close the browser
##    And I wait for the element to be visible
    Examples:
      | UsernameValue | UsernameID  | PasswordValue | PasswordID  | ButtonID       | CloseErrorMsgXpath                     | DrpID       | DrpValue |
      | Daisy         | txtUsername | 4             | txtPassword | btnLoginSubmit | //*[@id="divLogin_tt_active"]/div[1]/a | businesunit | global   |

#  Scenario Outline: Unlock the locked account
#
#    Given I have launched the browser
#    When I enter <UsernameID> with ID <UsernameValue>
#    When I enter <PasswordID> with ID <PasswordValue>
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    Then I click on an element <Sidebarlink> with xpath
#    And I wait for the element to be saved
#    When I click on the <UserManagerTag> with the text <UserManText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I switch to an iframe
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#
#          #################Navigate to Manage Users#######################################
#    And I click on the <LockedUserTagType> with the text <LockedUserText>
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I click on an element <UnlockAccountCheckboxXpath> with xpath
##    Then I close the browser
#
#    Examples:
#      | UserManagerTag | UserManText   | Sidebarlink               |  | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | LockedUserText      | LockedUserTagType | UnlockAccountCheckboxXpath | ScrShtName |
#      | div            | Users Manager | /html/body/div/div[1]/a/i |  | Isometrixsystem | txtUsername | 1   | txtPassword | btnLoginSubmit | Locked KopanoLocked | a       | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[3]/div/div/div/div[3]/div[6]/div[1]   | Login      |
#
#
#  Scenario Outline: As a user I want to login with valid credentials(Demo fail)
#
#    Given I have launched the browser
#    When I enter <UsernameID> with ID <UsernameValue>
#    When I enter <PasswordID> with ID <PasswordValue>
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#
#    Examples:
#      |UsernameValue  |UsernameID |PasswordValue|PasswordID |ButtonID      |HomepageFormID|DrpID|DrpValue|ScrShtName|
#      |Isometrixsystem|txtUsername|1            |txtPassword1|btnLoginSubmit1|divPage       |businesunit|global|Login |