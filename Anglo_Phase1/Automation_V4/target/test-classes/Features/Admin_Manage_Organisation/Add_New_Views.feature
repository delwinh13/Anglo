@AddNewView
Feature: Add New View


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
#      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
#      | AutomationUser | txtUsername | Password1!             | txtPassword | btnLoginSubmit |
#  Scenario Outline: Navigating to Manage Organisation
#
#    And Switch back to default content
#    And I wait for the element to be saved
#    Then I click on an element <Sidebarlink> with xpath
#    And I wait for the element to be saved
#    When I click on the <OrgManTag> with the text <OrgManText>
#    And I wait for the element to be saved
#    And I switch to an iframe
#    And I wait for the element to be visible
#
#    Examples:
#      | OrgManTag | OrgManText           | Sidebarlink               |
#      | div       | Organisation Manager | /html/body/div/div[1]/a/i |


  Scenario Outline: Add new view and naming the view

    When I click the <LevelNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <AddViewTagType> with the text <AddViewText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be saved
###########Naming the new added view###############
    When I click the <LevelNodeID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be visible
    And I wait for the element to be saved
    Then I click on an element <OkXpath> with xpath
    And I switch to an iframe
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I enter <ViewFieldXpath> using xpath <ViewName>
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | LevelNodeID     | AddViewTagType | AddViewText | ViewName            | ViewFieldXpath                                                                                         | OkXpath                                                        | LevelNodeID     |
      | rootnode_anchor | div            | Add view    | New view Automation | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/table[2]/tbody/tr[7]/td[1]/div/input | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div | rootnode_anchor |

  Scenario Outline: Renaming or editing the new added view

#    When I click on the <OrgManTag> with the text <OrgManText>
#    And I wait for the element to be saved
#    And I switch to an iframe
#    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <LevelNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I enter <ViewFieldXpath> using xpath <EditViewName>

    Examples:
      | OrgManTag | OrgManText           | LevelNodeID     | ViewFieldXpath                                                                                         | EditViewName |
      | div       | Organisation Manager | rootnode_anchor | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/table[2]/tbody/tr[7]/td[1]/div/input | Edit         |

  Scenario Outline:  Assign views to an existing Level

    When I click on the <LevelTagType> with the text <LevelText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <Checkbox1Xpath> with xpath
    And I wait for the element to be saved

      #Then I click on an element <Checkbox2Xpath> with xpath

  ################Uncheck the view checkbox###################
    Then I click on an element <Checkbox1Xpath> with xpath
    And I wait for the element to be saved

    Examples:
      | LevelTagType | LevelText           | Checkbox1Xpath                                                                                              |
      | a            | Hierarchy Automation | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[3]/table/tbody/tr[8]/td[2]/div/label/span |


  Scenario Outline:Delete New Added View

###############Deleting View so that we can be able to create a view with the same name next we run the script##################
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click the <LevelNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be visible
    Then I click on an element <DeleteViewXpath> with xpath
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    When I click the <ConfirmBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | LevelNodeID     | DeleteViewXpath                                                                                     | ConfirmBtnID  |
      | rootnode_anchor | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/table[2]/tbody/tr[7]/td[2]/div[1] | btnConfirmYes |
