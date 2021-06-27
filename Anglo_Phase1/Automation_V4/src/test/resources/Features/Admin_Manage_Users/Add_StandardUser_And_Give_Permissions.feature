@AddNewUserAndGivePermissions

Feature: Add New User And Give Permissions

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | Isometrixsystem | txtUsername | Password1!             | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |


  Scenario Outline: Navigate to Manage Users

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
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


  Scenario Outline: Add a standard User

#When I click the <AddNewUserID> Button with ID
    Then I click on an element <AddUserBtnXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I enter <DefaultEmailXpath> using xpath <DefaultEmailValue>
    And I wait for the element to be saved
    And I enter <UsernameXpath> using xpath <UsernameValue>
    And I enter <FirstnameXpath> using xpath <FirstnameValue>
    And I enter <SurnameXpath> using xpath <SurnameValue>
    When I click the <SaveBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | AddUserBtnXpath                                                     | AddNewUserID | DefaultEmailXpath                                                                                                              | DefaultEmailValue                | UsernameXpath                                                | UsernameValue  | FirstnameXpath                                               | FirstnameValue | SurnameXpath                                                 | SurnameValue | SaveBtnID   |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[1]/div[4] | btnAddUser   | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[1]/div[2]/div/table/tbody/tr[1]/td[2]/div/input | edward.bobula@isometrix.com | //*[@id="userDetails"]/div/table/tbody/tr[2]/td[2]/div/input | AutomationUser | //*[@id="userDetails"]/div/table/tbody/tr[3]/td[2]/div/input | Automation     | //*[@id="userDetails"]/div/table/tbody/tr[4]/td[2]/div/input | Deactivate   | btnSaveUser |


  Scenario Outline: Give user permisions
    When I click the <UserSecurtyID> Button with ID
    When I click on the <LevelTagType> with the text <LevelText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <ViewTAgType> with the text <ViewText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <UserGroupXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UserSecurtyID | LevelTagType | LevelText | ViewTAgType | ViewText | UserGroupXpath                                                                                                 |
      | securityTab  | a            | Metrix    | a           | Quality  | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[2]/div/div[5]/div[2]/ul/li[3]/a |


#Scenario Outline: Assign User Default Interface (User Prfile)
#    #??????????????????????Question to Carlo, after Navigating to the User Profile, which user should load? new added or the user I have logged in with?
##Still a challenge because the email part is not yet investigated but we are recieving new user email notification
#When I click on the <NewUserTag> with the text <NewUserText>
#Then I click on an element <DefaultInterfaceXpath> with xpath
#When I click on the <DefaultTagType> with the text <DefaultText>
#And I click the <SaveBtnID> Button with ID
#
#Examples:
#|NewUserTag|NewUserText|DefaultInterfaceXpath|DefaultTagType|DefaultText|SaveBtnID|
#|a|AutomationUser3|//*[@id="divOptions"]/div/div[3]/div[2]/div/a/span[1]/ul/li|a|Carlo2|btnSaveUser|

#NOT DONE
  #Need to get the host name and port for Cheslin
#
#Scenario Outline: New User Email Notification
#Given I set up user email notification
#Examples: