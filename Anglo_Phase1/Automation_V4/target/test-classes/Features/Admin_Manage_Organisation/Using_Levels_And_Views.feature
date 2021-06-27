@UsingLevelsAndViews

Feature: Using  Levels and Views

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
#      | AutomationUser | txtUsername | Password1!             | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |


  Scenario Outline: Using Levels and views Module Control (System Manager) adding  new Solution

#    And Switch back to default content
#    And I wait for the element to be saved
#    Then I click on an element <Sidebarlink> with xpath
#    And I wait for the element to be saved
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be visible
#      When I click the <AddSolutionIconID> Button with ID

    Examples:
      | SystemManagerTag | SystemManagerText | Sidebarlink               |
      | div              | System Manager    | /html/body/div/div[1]/a/i |


  Scenario Outline: Create a new solution

    When I click the <AddNewSolutionBtnID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And Switch back to default content
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click on the <NewSolutionTagType> with the text <NewSolutionText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click the <DeleteSolutionBtnID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And Switch back to default content
    When I click the <ConfirmYesBtn> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible


    Examples:
      | AddNewSolutionBtnID | SystemManagerTag | SystemManagerText | NewSolutionTagType | NewSolutionText | DeleteSolutionBtnID | ConfirmYesBtn |
      | btnAddNew           | div              | System Manager    | a                  | [ New solution ] | btnDeleteSolution   | btnConfirmYes |


  Scenario Outline:Module Control(System Manager)
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <AddSystemObjectID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ProcessXpath> with xpath
    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be saved
    And I wait for the element to be saved


    When I click on the <InstanceTagtype> with the text <InstanceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <instanceNameID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Then I click on an element <ModuleTemplateXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <ModuleTemplateDrpdwnXpath> with xpath
    When I click on the <ModuleTemplateTagType> with the text <ModuleTemplatetext>

    Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
    When I click on the <MouleControlTagType> with the text <MouleControlText>

    Then I click on an element <LevelXpath> with xpath
    When I click on the <LevelTagType> with the text <LevelText>

    Then I click on an element <ViewDrpdwnXpath> with xpath
    When I click on the <ViewTagType> with the text <ViewText>
#    And I click on an element <ChecklistDatasourceXpath> with xpath
#    Then I click on the <DatasourceTagType> with the text <DatasourceText>
    When I click the <SaveBtnID> Button with ID

    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | instanceNameID | SolutionTagType | SolutionText | AddSystemObjectID  | ProcessTagType | ProcessText     | InstanceTagtype | InstanceText        | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext | DefualtLevelandViewDrpdwnXpath                                  | MouleControlTagType | MouleControlText | LevelXpath                                                         | LevelTagType | LevelText | ViewDrpdwnXpath                                                    | ViewTagType | ViewText | SaveBtnID            | ProcessXpath                                                                                         |ChecklistDatasourceXpath|DatasourceTagType|DatasourceText|
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | instanceName | a               | Automation   | btnAddSystemObject | a              | [ New process ] | a               | Unassigned instance | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | A1                 | //*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li | a                   | Module control   | //*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li | a            | Level     | //*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li | a           | View     | btnSaveSystemManager | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[12]/div/div/div[1]/a/span[1]/ul/li | a |Data source|


  Scenario Outline: Specify Level and View (System Manager)


      #############Navigating to system Manager#################
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I switch to an iframe
    And I wait for the element to be visible

      ###############Selecting Solution and existing Process############
    When I click on the <SolutionTagType> with the text <SolutionText>
    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

################Selecting a module control from Instance View################
    When I click on the <SubModuleControlTagtype> with the text <SubModuleControlText>
    And I wait for the element to be visible
    And I wait for the element to be visible

      #################Select Module Template############################

    Then I click on an element <ModuleTemplateXpath> with xpath
    Then I click on an element <ModuleTemplateDrpdwnXpath> with xpath
    When I click on the <ModuleTemplateTagType> with the text <ModuleTemplatetext>

########################Select Default Level and view#############################
    Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
    When I click on the <DefaultLevelandViewTagType> with the text <DefaultLevelandViewText>

####################Selecting a Level#########################
    Then I click on an element <LevelXpath> with xpath
    Then I click on an element <MetrixCheckboxXpath> with xpath

      ####################Selecting a View#########################
    Then I click on an element <ViewDrpdwnXpath> with xpath
    Then I click on an element <QualityCheckboxXpath> with xpath
    When I click the <SaveBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be saved


    Examples:

      | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | SolutionTagType | SolutionText | ProcessTagType | ProcessText     | SubModuleControlTagtype | SubModuleControlText | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext | DefualtLevelandViewDrpdwnXpath                                                                                                    | DefaultLevelandViewTagType | DefaultLevelandViewText | LevelXpath                                                                                                                                   | MetrixCheckboxXpath                     | ViewDrpdwnXpath                                                                                                                              | QualityCheckboxXpath                    | SaveBtnID            |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | a               | Automation   | a              | [ New process ] | a                       | Sub-module control 1 | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | B1                 | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[9]/div/div/a/span[1]/ul/li | a                          | Specify                 | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[10]/div[1]/div/div[1]/a/span[1]/ul/li | /html/body/div[4]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[10]/div[2]/div/div[1]/a/span[1]/ul/li | /html/body/div[5]/ul[1]/ul/li[4]/a/i[1] | btnSaveSystemManager |


  Scenario Outline: Deleting the System Object

    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be saved
    When I click the <DeleteBtnID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And Switch back to default content
    When I click the <ConfirmYesBtn> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Examples:
      | ProcessTagType | ProcessText     | DeleteBtnID           | ConfirmYesBtn |
      | a              | [ New process ] | btnDeleteSystemObject | btnConfirmYes |
#
