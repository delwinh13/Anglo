@AddNewLevel

Feature: Add New Level

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
      | Isometrixsystem | txtUsername | Password1!             | txtPassword | btnLoginSubmit |


  Scenario Outline: Navigating to Manage Organisation

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <OrgManTag> with the text <OrgManText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be visible

    Examples:
      | OrgManTag | OrgManText           | Sidebarlink               |
      | div       | Organisation Manager | /html/body/div/div[1]/a/i |


  Scenario Outline: Add New Level using the Icon

    When I click the <LevelsID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | AddIconID       | LevelsID        |
      | iconBtnAddLevel | rootnode_anchor |

  Scenario Outline: Add New Level using the add level button

    When I click the <LevelsID> Button with ID
    And I wait for the element to be saved
    When I click the <AddLevelButton> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

#Cannot rename because new nodes are given the same name and ID is changing everytime (we dont have an identifier)
    Examples:
      | AddLevelButton | LevelsID        |
      | btnAddLevel    | rootnode_anchor |


  Scenario Outline: Add a new level Using the right click on the Levels Group Node

    And I wait for the element to be saved
    And I wait for the element to be saved
    And I perform a right click action <LevelsBtnID>
    When I click on the <LevelElementType> with the text <LevelText>
    And I wait for the element to be visible

    Examples:
      | LevelElementType | LevelText | LevelsBtnID     |
      | a                | Add level | rootnode_anchor |


  Scenario Outline: Add a five tier heirarchy level structure

    And I wait for the element to be saved
    When I click on the <ParentLevelType> with the text <ParentLevelText>
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved
    When I click on the <Child1LevelType> with the text <Child1LevelText>
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved
    When I click on the <Child1LevelType> with the text <Child1LevelText>
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved
    When I click on the <Child2LevelType> with the text <Child2LevelText>
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved
    When I click on the <Child2LevelType> with the text <Child2LevelText>
    When I click the <AddIconID> Button with ID
    And I wait for the element to be saved



    Examples:
      | ParentLevelType | ParentLevelText      | AddIconID       | Child1LevelType | Child1LevelText | Child2LevelType | Child2LevelText |
      | a               | Hierarchy Automation | iconBtnAddLevel | a               | Kopano1         | a               | Kopano2         |

  Scenario Outline: Rename existing Level in the Details Section

    And I wait for the element to be saved
    When I click on the <RenameTagType> with the text <RenameLevelText>
    And I wait for the element to be saved
    When I enter <InputboxID> with ID <FirstLevelName>
    And I wait for the element to be saved

    Examples:
      | FirstLevelName | InputboxID   | RenameTagType | RenameLevelText |
      |AutomationUser              | txtLevelName | a             | RenameTestCase  |

#    Scenario Outline: Rename Levels Using the Right Click Rename Option
##Not working Still a challenge, unable to identify the rename textbox, text box disappears and the system automatically saves the level as New node
#      And I wait for the element to be saved
#      When I click on the <RenameRightClickTagType> with the text <RenameRightClickText>
#      And I wait for the element to be saved
#      When I click on the <RenameTagType> with the text <RenameText>
#      And I wait for the element to be saved
#      When I click the <InputboxID> Button with ID
#      And I wait for the element to be saved
#      When I enter <InputboxID> with ID <FirstLevelName>
#      And I wait for the element to be saved
#
#
#      Examples:
#        |RenameRightClickTagType|RenameRightClickText|FirstLevelName|InputboxID      |NewNodeXpath                                                           |RenameTagType|RenameText|
#        |                       ||RenameTestCase |txtLevelName |/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li[13]/a|a            |Rename|
