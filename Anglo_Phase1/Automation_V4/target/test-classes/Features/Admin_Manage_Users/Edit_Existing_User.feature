@EditExistingUser

Feature: Load Existing User


  Scenario Outline: Navigate to Manage Users

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


  Scenario Outline: Load an existing User

    When I click on the <ExistingUserTagType> with the text <ExistingUserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I enter <EditSurnameXpath> using xpath <EditSurnameValue>
    And I wait for the element to be saved
    And I wait for the element to be saved
      ###############Existing User Loads with empty Security settings###############
    When I click the <SecurityTabID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <LevelTAgType> with the text <LevelText>
    And I wait for the element to be saved
    And I wait for the element to be saved
#      When I click on the <ViewTAgType> with the text <ViewText>
    When I click on an element <ViewXpath> with xpath
    When I click on an element <ChangeUserGroupXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
      #####################Save User###################
    When I click the <ProfileTabID> Button with ID
    And I wait for the element to be saved
    When I click the <SaveBtnID> Button with ID



    Examples:
      | ExistingUserTagType | ExistingUserText | EditSurnameXpath                                             | EditSurnameValue | UserSecurityTagType | UserSecurityText | ChangeUserGroupXpath                                                                                                | SecurityTabID | ViewTAgType | ViewText | LevelTAgType | LevelText | ViewID                                      | ProfileTabID | SaveBtnID   | ViewXpath                                                                                                      |
      | a                   | Add Edit         | //*[@id="userDetails"]/div/table/tbody/tr[4]/td[2]/div/input | Edit             | a                   | User security    | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[2]/div/div[5]/div[2]/ul/li[2]/a/i[1] | securityTab   | a           | HR       | a            | Metrix    | 4dee5e53-25af-470d-9be5-7c0b3ea3bee3_anchor | profileTab   | btnSaveUser | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/a |

