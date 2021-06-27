@DeactivateAndActivateUser

Feature: Deactivate and Activate User

#  Scenario Outline: As a user I want to login with valid credentials
#
#    Given I have launched the browser
#    When I enter <UsernameID> with ID <UsernameValue>
#    When I enter <PasswordID> with ID <PasswordValue>
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#
#    Examples:
#      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
#      | Isometrixsystem | txtUsername | Password1!            | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |
#
#
  Scenario Outline: Navigate to Manage Users
#
#    Then I click on an element <Sidebarlink> with xpath
#    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UserManagerTag | UserManText   | Sidebarlink               |
      | div            | Users Manager | /html/body/div/div[1]/a/i |


       #####Deactivate/Activate User######
  Scenario Outline: Deactivate  User

#      Then I click on an element <DeactivateUsersXpath> with xpath
#      And I wait for the element to be saved
#      And I wait for the element to be saved
#      And I wait for the element to be saved
    When I click on the <UserTagType> with the text <UserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <DeactivateUserBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <ConfirmNobtn> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    When I click the <DeactivateUserBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <ConfirmYesbtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <OKXpath> with xpath
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

      ###################Verify that User is deactivated############################
    When I enter <SearchFieldID> with ID <SearchFieldText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UserTagType | UserText              | DeactivateUserBtnID | ConfirmYesbtnID | ConfirmNobtn | OKXpath                                                        | SearchFieldID | SearchFieldText       |
      | a           | Automation Deactivate | btnDeleteUser       | btnConfirmYes   | btnConfirmNo | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div | txtSearch     | Automation Deactivate |

  Scenario Outline: Activate  User

    Then I click on an element <DeactivatedUsersBtnXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <UserTagType> with the text <UserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
      #change the username######################we also have to change the name variable before each run
    When I click on the <ActivateUserTag> with the text <ActivateUserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <ConfirmNobtn> Button with ID
    And I switch to an iframe
    When I click on the <ActivateUserTag> with the text <ActivateUserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <ConfirmYesbtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <OKXpath> with xpath

      #########################Deactivate User to clean up for the next run#############
    And I wait for the element to be saved
    And I switch to an iframe
    Then I click on an element <UsersXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <UserTagType> with the text <UserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <DeactivateUserBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <ConfirmYesbtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <OKXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    When I enter <SearchInputID> with ID <SearchInputValue>
#    Then I enter <SearchInputXpath> using xpath <SearchInputValue>
      #Deactivateuser
    Examples:
      | DeactivatedUsersBtnXpath                                                | ActivateUserTag | ActivateUserText | UserTagType | UserText              | ConfirmYesbtnID | ConfirmNobtn | OKXpath                                                        | UsersXpath                                                              | SearchInputID | SearchInputValue | DeactivateUserBtnID |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[2]/div | div             | Activate user    | a           | Automation Deactivate | btnConfirmYes   | btnConfirmNo | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]/div | txtSearch     | Automation Deactivate            | btnDeleteUser       |

#    Scenario Outline: Activate  User Email
#      And Activate user email
#
#      Examples:
