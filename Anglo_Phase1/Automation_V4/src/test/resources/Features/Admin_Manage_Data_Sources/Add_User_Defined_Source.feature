@AddUserDefinedSource

Feature: Add New User Defined Source


  Scenario Outline: Navigate to Data Sources

#    Then I click on an element <Sidebarlink> with xpath
#    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserManagerTag | UserManText          | Sidebarlink               |
      | div            | Data Sources Manager | /html/body/div/div[1]/a/i |

  Scenario Outline: Add user defined source
    When I click the <AddSourceBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameID> with ID <SourceNameValue>
    When I click the <SourceTypeDrpdwnID> Button with ID
    And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
    When I click the <AddBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

      ##############Adding First Node##########################
    When I click the <AddNewSourceNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameFieldID> with ID <SourceName>
    And I wait for the element to be saved
    And I wait for the element to be saved
####################Adding Second Node########################
    When I click the <AddNewSourceNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameFieldID> with ID <SourceName2>
    And I wait for the element to be saved
    And I wait for the element to be saved
#########################Adding third Node###################
    When I click the <AddNewSourceNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameFieldID> with ID <SourceName3>
    And I wait for the element to be saved
    And I wait for the element to be saved
#########################Adding fourth Node###################
    When I click the <AddNewSourceNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameFieldID> with ID <SourceName4>
    And I wait for the element to be saved
    And I wait for the element to be saved
#########################Adding FitfthNode###################
    When I click the <AddNewSourceNodeID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameFieldID> with ID <SourceName5>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <BtnSaveID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | AddSourceBtnID | SourceNameID  | SourceNameValue       | SourceTypeDrpdwnID | DrpdownValue | AddBtnID                             | AddNewSourceNodeID | SourceNameFieldID                | SourceName | SourceName2 | SourceName3 | SourceName4 | SourceName5 | BtnSaveID |
      | btnAdd         | sourceAddName | UserDefinedAutomation | sourceAddType      | User Defined | manageDataSources_AddPopup_AddSource | btnAddSourceItem   | sourceItemName    AutomationUser | 2          | 3           | 4           | 5           | btnSave     |           |


  Scenario Outline: Edit User Defined Source

###################Rename in Details/properties scetion#################
    Then I click on an element <SourceXpath> with xpath
    When I enter <SourceNameFieldID> with ID <EditSourceName>
    When I click the <BtnSaveID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
        #######################Rename Using right click###################Challenge Text box disappears
#        Then I perform a right click function using xpath <SourceXpath>
#        When I click on the <EditSourceNameTag> with the text <EditSourceNameText>
#        And I wait for the element to be saved


    Examples:
      | SourceXpath                                                                                          | SourceNameFieldID | EditSourceName | EditSourceNameTag | EditSourceNameText | BtnSaveID |
      | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li/a | sourceItemName    | Edit1          | a                 | Rename             | btnSave   |


  Scenario Outline: Delete user defined source
    Then I perform a right click function using xpath <SourceXpath>
    When I click on the <DeleteTag> with the text <DeleteText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

      ################delete User defined source###############
    And I wait for the element to be saved
    When I click the <DeleteBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <ConfirmDeleteBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <ConfirmDeleteBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | ConfirmDeleteBtnID | SourceXpath                                                                                          | DeleteTag | DeleteText | DeleteBtnID     | SaveBtnID |
      | btnConfirmYes      | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li/a | a         | Delete     | btnDeleteSource | btnSave   |




