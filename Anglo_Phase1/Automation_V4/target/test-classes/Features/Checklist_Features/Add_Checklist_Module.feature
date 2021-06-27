@AddChecklistModule

Feature: Add Checklist Module Template

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue  | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue |
      | AutomationUser | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   |


  Scenario Outline: Navigate to the System Manager


    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <ManageSystemTagType> with the text <ManageSystemText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved

    Examples:
      | ManageSystemTagType | ManageSystemText | Sidebarlink               |
      | div                 | System Manager   | /html/body/div/div[1]/a/i |

###########################checklist module#######################################
  Scenario Outline: Make a module a checklist module

#    Then I perform a right click function using xpath <AllSolutionsXpath>
    When I click on the <SolutionTagType> with the text <SolutionText>
    Then I click on an element <ModuleTemplateXpath> with xpath
    And I wait for the element to be visible
    When I click the <AddModuleTemplateID> Button with ID

         ######  Navigate to settings tab ######
    When I click the <SettingsTabID> Button with ID
    And I enter <ModuleNameID> with ID <ModuleNameValue>
    When I click the <ChecklistModuleDrpdwnXpath> Button with ID
    Then I click on an element <YesXpath> with xpath
    When I click the <DocumentControlID> Button with ID

    Examples:
      | ModuleTemplateXpath                                                                                  | SolutionTagType | SolutionText | ModuleChecklistID | AddModuleTemplateID | SettingsTabID | YesXpath                                                                                    | DocumentControlID | ModuleNameID | ModuleNameValue           | SearchSettingsTabID | AddSearchOption1Xpath                                      | ChecklistModuleDrpdwnXpath | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2ID |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[4]/div | a               | Automation   | moduleCheckList   | btnAddSystemObject  | tab_settings  | /html/body/div[1]/div[5]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[2]/div/select/option[1] | documentcontrol   | moduleName   | AutomationChecklistModule | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | moduleCheckList            | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | resultOption_1          |


  Scenario Outline: Add checklist dropdown

   ########Navigate to Layout Tab#####################

    When I click the <LayoutTabID> Button with ID
    Then I right click on element using ID  <GridLayoutID>
    When I click on the <ChecklistDrpDwnTagType> with the text <ChecklistDrpDwnText>

##############Creating search options (Option1)###########################
    When I click the <SettingsTabID> Button with ID
    When I click the <SearchSettingsTabID> Button with ID
    Then I click on an element <AddSearchOption1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <SearchOptionsDrpdwn1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click on the <SearchOptionTagtype> with the text <SearchOptionText>
    And I wait for the element to be visible

     ##############Creating search options (Option2)###########################
    Then I click on an element <AddSearchResultsOption2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ResultsOptionsDrpdwn2Xpath> with xpath
    And I wait for the element to be visible
    #When I click on the <ResultsOptionTagtype> with the text <ResultsOptionText>
    Then I click on an element <ResultsOptionXpath> with xpath
    And I wait for the element to be visible
    And I click the <SaveBtn> Button with ID

    Examples:
      | LayoutTabID | GridLayoutID | ChecklistDrpDwnTagType | ChecklistDrpDwnText | SearchSettingsTabID | AddSearchOption1Xpath                                      | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2Xpath                                                           | SettingsTabID | ResultsOptionTagtype | ResultsOptionText       | ResultsOptionXpath                                                                             | SaveBtn |
      | tab_layout  | grid         | Span                   | Checklist dropdown  | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Date created (Calendar) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select | tab_settings  | option               | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select/option[7] | btnSave |

##########################module Source#####################################################################
  Scenario Outline: Make a module a checklist module


#    Then I perform a right click function using xpath <AllSolutionsXpath>
    When I click on the <SolutionTagType> with the text <SolutionText>
    Then I click on an element <ModuleTemplateXpath> with xpath
    And I wait for the element to be visible
    When I click the <AddModuleTemplateID> Button with ID

         ######  Navigate to settings tab ######
    When I click the <SettingsTabID> Button with ID
    And I enter <ModuleNameID> with ID <ModuleNameValue>
    When I click the <ChecklistModuleDrpdwnXpath> Button with ID
    Then I click on an element <YesXpath> with xpath
    When I click the <DocumentControlID> Button with ID


    Examples:
      | ModuleTemplateXpath                                                                                  | SolutionTagType | SolutionText | ModuleChecklistID | AddModuleTemplateID | SettingsTabID | YesXpath                                                                                    | DocumentControlID | ModuleNameID | ModuleNameValue           | SearchSettingsTabID | AddSearchOption1Xpath                                      | ChecklistModuleDrpdwnXpath | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2ID |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[4]/div | a               | Automation   | moduleCheckList   | btnAddSystemObject  | tab_settings  | /html/body/div[1]/div[5]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[2]/div/select/option[1] | documentcontrol   | moduleName   | AutomationModuleSource | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | moduleCheckList            | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | resultOption_1          |


  Scenario Outline: Add checklist dropdown

   ########Navigate to Layout Tab#####################

    When I click the <LayoutTabID> Button with ID
    Then I right click on element using ID  <GridLayoutID>
    When I click on the <ChecklistDrpDwnTagType> with the text <ChecklistDrpDwnText>

##############Creating search options (Option1)###########################
    When I click the <SettingsTabID> Button with ID
    When I click the <SearchSettingsTabID> Button with ID
    Then I click on an element <AddSearchOption1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <SearchOptionsDrpdwn1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click on the <SearchOptionTagtype> with the text <SearchOptionText>
    And I wait for the element to be visible

     ##############Creating search options (Option2)###########################
    Then I click on an element <AddSearchResultsOption2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ResultsOptionsDrpdwn2Xpath> with xpath
    And I wait for the element to be visible
    #When I click on the <ResultsOptionTagtype> with the text <ResultsOptionText>
    Then I click on an element <ResultsOptionXpath> with xpath
    And I wait for the element to be visible
    And I click the <SaveBtn> Button with ID

    Examples:
      | LayoutTabID | GridLayoutID | ChecklistDrpDwnTagType | ChecklistDrpDwnText | SearchSettingsTabID | AddSearchOption1Xpath                                      | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2Xpath                                                           | SettingsTabID | ResultsOptionTagtype | ResultsOptionText       | ResultsOptionXpath                                                                             | SaveBtn |
      | tab_layout  | grid         | Span                   | Checklist dropdown  | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Date created (Calendar) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select | tab_settings  | option               | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select/option[7] | btnSave |


  ######################################UserDefined#########################################################
  Scenario Outline: Make a module a checklist module


#    Then I perform a right click function using xpath <AllSolutionsXpath>
    When I click on the <SolutionTagType> with the text <SolutionText>
    Then I click on an element <ModuleTemplateXpath> with xpath
    And I wait for the element to be visible
    When I click the <AddModuleTemplateID> Button with ID

         ######  Navigate to settings tab ######
    When I click the <SettingsTabID> Button with ID
    And I enter <ModuleNameID> with ID <ModuleNameValue>
    When I click the <ChecklistModuleDrpdwnXpath> Button with ID
    Then I click on an element <YesXpath> with xpath
    When I click the <DocumentControlID> Button with ID

    Examples:
      | ModuleTemplateXpath                                                                                  | SolutionTagType | SolutionText | ModuleChecklistID | AddModuleTemplateID | SettingsTabID | YesXpath                                                                                    | DocumentControlID | ModuleNameID | ModuleNameValue           | SearchSettingsTabID | AddSearchOption1Xpath                                      | ChecklistModuleDrpdwnXpath | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2ID |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[4]/div | a               | Automation   | moduleCheckList   | btnAddSystemObject  | tab_settings  | /html/body/div[1]/div[5]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[2]/div/select/option[1] | documentcontrol   | moduleName   | AutomationUserdefinedSource | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | moduleCheckList            | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | resultOption_1          |


  Scenario Outline: Add checklist dropdown

   ########Navigate to Layout Tab#####################

    When I click the <LayoutTabID> Button with ID
    Then I right click on element using ID  <GridLayoutID>
    When I click on the <ChecklistDrpDwnTagType> with the text <ChecklistDrpDwnText>

##############Creating search options (Option1)###########################
    When I click the <SettingsTabID> Button with ID
    When I click the <SearchSettingsTabID> Button with ID
    Then I click on an element <AddSearchOption1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <SearchOptionsDrpdwn1Xpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click on the <SearchOptionTagtype> with the text <SearchOptionText>
    And I wait for the element to be visible

     ##############Creating search options (Option2)###########################
    Then I click on an element <AddSearchResultsOption2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ResultsOptionsDrpdwn2Xpath> with xpath
    And I wait for the element to be visible
    #When I click on the <ResultsOptionTagtype> with the text <ResultsOptionText>
    Then I click on an element <ResultsOptionXpath> with xpath
    And I wait for the element to be visible
    And I click the <SaveBtn> Button with ID

    Examples:
      | LayoutTabID | GridLayoutID | ChecklistDrpDwnTagType | ChecklistDrpDwnText | SearchSettingsTabID | AddSearchOption1Xpath                                      | SearchOptionsDrpdwn1Xpath                                                            | SearchOptionTagtype | SearchOptionText        | AddSearchResultsOption2Xpath                               | ResultsOptionsDrpdwn2Xpath                                                           | SettingsTabID | ResultsOptionTagtype | ResultsOptionText       | ResultsOptionXpath                                                                             | SaveBtn |
      | tab_layout  | grid         | Span                   | Checklist dropdown  | subTab_search       | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[2]/td[2]/div/select | option              | Date created (Calendar) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/div/span | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select | tab_settings  | option               | Record number (Textbox) | /html/body/div[1]/div[5]/div/div[1]/div[3]/div[3]/table/tbody/tr[2]/td[2]/div/select/option[7] | btnSave |





#  Scenario: Close browser
#    And I close the browser



