@AddModuleData
Feature: Manage Data Sources

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


  Scenario Outline: Navigate to Data Sources

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UserManagerTag | UserManText          | Sidebarlink               |
      | div            | Data Sources Manager | /html/body/div/div[1]/a/i |


##    ####Manage data sources (Module) Lite
  Scenario Outline:Add new module data source (Module) Lite

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

    Examples:
      | AddSourceBtnID | SourceNameID  | SourceNameValue      | SourceTypeDrpdwnID | DrpdownValue | AddBtnID                             |
      | btnAdd         | sourceAddName | DataSourceAutomation | sourceAddType      | Module       | manageDataSources_AddPopup_AddSource |

  Scenario Outline: Expand processes
    When I click on the <DataSourceTagType> with the text <DataSourceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <DataSourceTagType> with the text <DataSourceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ProcesseXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ExpandProcessXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <InstanceXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ExpandProcessXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
#  Then I click on an element <TextFieldXpath> with xpath
#    When I click the <TextFieldName> Button with Name
    When I click a dropdown with xpath <TextFieldXpath> and select value <TextFieldText>
#    When I click on the <TextFieldTagType> with the text <TextFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <ValueFieldXpath> and select value <ValueFieldText>
#    Then I click on an element <ValueFieldXpath> with xpath
#    When I click the <ValueFieldName> Button with Name
#    When I click on the <ValueFieldTagType> with the text <ValueFieldText>
    And I wait for the element to be saved
    When I click the <SaveBtn> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | DataSourceTagType | DataSourceText       | ProcesseXpath                                                                                           | InstanceXpath                                                                                                      | ExpandProcessXpath                                                                                      | TextFieldText | ValueFieldText | SaveBtn | TextFieldXpath                                                                                                        | ValueFieldXpath                                                                                                    |
      | a                 | DataSourceAutomation | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[3]/a | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[3]/ul/li/a/i[1] | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[3]/i | floor         | coordinate     | btnSave | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[1]/div[3]/div[2]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[1]/div[3]/div[4]/select |

  Scenario Outline: Add new module hierarchy  data source
#Comment Need to create a hierarchy instance first
    When I click on the <UserManagerTag> with the text <UserManText>
#    And I wait for the element to be saved
#    And I switch to an iframe
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
    When I click the <AddSourceBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <SourceNameID> with ID <SourceNameValue>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <SourceTypeDrpdwnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <AddBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserManagerTag | UserManText          | AddSourceBtnID | SourceNameID  | SourceNameValue     | SourceTypeDrpdwnID | DrpdownValue | AddBtnID                             |
      | div            | Data Sources Manager | btnAddSource   | sourceAddName | HierarchyDataSource | sourceAddType      | Module       | manageDataSources_AddPopup_AddSource |

  Scenario Outline: Expand the hierarchical process

    #Need to create a hierarchical Process
    When I click on the <DataSourceTagType> with the text <DataSourceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <Expand1ProcessXpath> with xpath
    And I wait for the element to be saved
    Then I click on an element <Instance1Xpath> with xpath
    And I wait for the element to be saved
    Then I click on an element <Expand2ProcessXpath> with xpath
    And I wait for the element to be saved
    Then I click on an element <Instance2Xpath> with xpath
    And I wait for the element to be saved
    Then I click on an element <Expand3ProcessXpath> with xpath
    And I wait for the element to be saved
    Then I click on an element <Instance3Xpath> with xpath
    And I wait for the element to be saved
    When I click a dropdown with xpath <TextField3Xpath> and select value <TextFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <TextField2Xpath> and select value <TextFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <TextFieldXpath> and select value <TextFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <ValueField3Xpath> and select value <ValueFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <ValueField2Xpath> and select value <ValueFieldText>
    And I wait for the element to be saved
    When I click a dropdown with xpath <ValueFieldXpath> and select value <ValueFieldText>
    And I wait for the element to be saved
    When I click the <SaveBtn> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:

      | DataSourceTagType | DataSourceText      | Expand3ProcessXpath                                                                                                    | Expand2ProcessXpath                                                                                              | Expand1ProcessXpath                                                                                     | SaveBtn | TextFieldXpath                                                                                                     | ValueFieldXpath                                                                                                    | TextField2Xpath                                                                                                    | ValueField2Xpath                                                                                                   | TextField3Xpath                                                                                                    | ValueField3Xpath                                                                                                   | TextFieldText | ValueFieldText  |  Instance1Xpath                                                                                                        | Instance2Xpath                                                                                                              | Instance3Xpath                                                                                                                    | SearchFieldID | SearchFieldText     |
      | a                 | HierarchyDataSource | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/ul/li[2]/ul/li/i | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/ul/li[2]/i | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/i | btnSave | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[1]/div[3]/div[2]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[1]/div[3]/div[4]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[2]/div[3]/div[2]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[2]/div[3]/div[4]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[3]/div[3]/div[2]/select | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[3]/div[1]/div[3]/div[3]/div[4]/select | Calendar 1    | Textbox 1       |  /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/ul/li[2]/a/i[1] | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/ul/li[2]/ul/li/a/i[1] | /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[2]/ul/li[2]/ul/li/ul/li/a/i[1] | txtSearch     | HierarchyDataSource |


  Scenario Outline: Delete new data source
    When I click on the <DataSourceTagType> with the text <DataSourceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <DeleteBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    When I click the <YesConfirmBtnID> Button with ID
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <DataSource2TagType> with the text <DataSource2Text>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <DeleteBtnID> Button with ID
    And Switch back to default content
    When I click the <YesConfirmBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserManagerTag | UserManText          | DataSourceTagType | DataSourceText       | DataSource2TagType | DataSource2Text     | DeleteBtnID     | YesConfirmBtnID | SearchFieldID | SearchString |
      | div            | Data Sources Manager | a                 | DataSourceAutomation | a                  | HierarchyDataSource | btnDeleteSource | btnConfirmYes   | txtSearch     | Data         |

