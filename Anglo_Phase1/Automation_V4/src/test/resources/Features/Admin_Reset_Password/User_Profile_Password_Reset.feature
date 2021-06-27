@UserProfilePasswordReset

Feature: User Profile Password Reset

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue  | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | AutomationUser | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |

  Scenario Outline: Navigate to Manage Users

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <UserProfileTag> with the text <UserProfileText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | Sidebarlink               | UserProfileTag | UserProfileText |
      | /html/body/div/div[1]/a/i | div            | Profile         |


  Scenario Outline: Reset User Password (NO) (Profile)

    When I click the <ResetPasswordID> Button with ID
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I click the <NoConfirmBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <ResetPasswordID> Button with ID
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I enter <CurrentPasswordID> with ID <CurrentPasswordValue>
    And I wait for the element to be saved
    When I enter <newPasswordID> with ID <newPasswordValue>
    And I wait for the element to be saved
    When I enter <confirmPasswordID> with ID <confirmPasswordValue>
    And I wait for the element to be saved
    When I click the <SaveBtnID> Button with ID



    Examples:
      | UserProfileTag | UserProfileText | Sidebarlink               | ResetPasswordID   | CurrentPasswordID | CurrentPasswordValue | newPasswordID | newPasswordValue | confirmPasswordID | confirmPasswordValue | SaveBtnID       | NoConfirmBtnID    |
      | div            | Profile         | /html/body/div/div[1]/a/i | btnChangePassword | currentPassword   | Password1!           | newPassword   | Password1!       | confirmPassword   | Password1!           | btnPasswordSave | btnPasswordCancel |

  Scenario Outline: Reset User Password and logout (Profile)

    When I click the <ResetPasswordID> Button with ID
    And Switch back to default content
#    When I click the <YesConfirmBtnID> Button with ID
    When I enter <CurrentPasswordID> with ID <CurrentPasswordValue>
    And I wait for the element to be saved
    When I enter <newPasswordID> with ID <newPasswordValue>
    And I wait for the element to be saved
    When I enter <confirmPasswordID> with ID <confirmPasswordValue>
    When I click the <SaveBtnID> Button with ID
    And Switch back to default content
    When I click on the <LogoutTagType> with the text <LogoutText>


    Examples:
      | ResetPasswordID   | CurrentPasswordID | CurrentPasswordValue | newPasswordID | newPasswordValue | confirmPasswordID | confirmPasswordValue | SaveBtnID       | LogoutTagType | LogoutText |
      | btnChangePassword | currentPassword   | Password1!           | newPassword   | Password1!       | confirmPassword   | confirmPasswordValue | btnPasswordSave | div           | Logout     |


  Scenario Outline:Log in

#    Given I have launched the browser
    When I click on the <SignInTagType> with the text <SigninText>
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <NewPasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    Then I validate that an element is loaded using ID <HomepageFormID>
    Examples:
      | UsernameValue  | UsernameID  | NewPasswordValue | PasswordID  | ButtonID       | HomepageFormID | SignInTagType | SigninText    |
      | AutomationUser | txtUsername | Password1!       | txtPassword | btnLoginSubmit | divPage        | div           | Sign in again |

