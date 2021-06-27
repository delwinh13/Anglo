@ManageUsersPasswordReset
Feature: Manage Users Password Reset

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | AutomationUser | txtUsername | Password1!             | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |

  Scenario Outline: Navigate to Manage Users

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserManagerTag | UserManText          | Sidebarlink               |
      | div            | Users Manager | /html/body/div/div[1]/a/i |


        #####################Reset Password Manage Users####################
  Scenario Outline: Reset User Password (Selecting NO Option) (Manage Users)

     When I click on the <ExistingUserTagType> with the text <ExistingUserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <ResetPasswordID> Button with ID
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I click the <ConfirmNoBtn> Button with ID
    And I wait for the element to be saved
    And I switch to an iframe


    Examples:
      | Sidebarlink               | UserManagerTag | UserManText   | ExistingUserTagType | ExistingUserText | ResetPasswordID  | ConfirmNoBtn |
      | /html/body/div/div[1]/a/i | div            | Users Manager | a                   | Add Edit         | btnResetPassword | btnConfirmNo |


  Scenario Outline: Reset User Password (Selecting YES Option) (Manage Users)

    When I click the <ResetPasswordID> Button with ID
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I click the <ConfirmNoBtn> Button with ID
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    When I click the <ResetPasswordID> Button with ID
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I click on the <ConfirmBtnTag> with the text <confirmBtnText>
    And I wait for the element to be saved

    Examples:
      | ResetPasswordID  | ConfirmBtnTag | confirmBtnText | ConfirmNoBtn |
      | btnResetPassword | div           | Yes            | btnConfirmYes |

#    Scenario Outline:Access Reset password link (User Mail Box)
#  #Need to get port Number
#
#      Examples: