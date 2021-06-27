@ResetPassword
Feature: Reset Password Login

  Scenario Outline: Reset User Password (User Login)
    Given I have launched the browser
    When I click on the <ResetPasswordBtnTag> with the text <ResetPasswordBtnText>
    When I enter <ForgotUsernameID> with ID <ForgotUsernameValue>
    When I enter <ForgotEmailID> with ID <ForgotEmailValue>
    When I click the <ForgotSubmitBtnID> Button with ID

    Examples:
      |ResetPasswordBtnTag|ResetPasswordBtnText|ForgotUsernameID  |ForgotUsernameValue|ForgotEmailID |ForgotEmailValue|ForgotSubmitBtnID|
      |a                  |Reset password      |txtForgotUsername |DaisyTest          |txtForgotEmail|Daisy@gmail.com |btnForgotSubmit|