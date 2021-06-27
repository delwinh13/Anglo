@CreateModuleChecklistSecurity

Feature: Create Module Checklist Instance For Apply Security

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
    When I click on the <DataSourcesTagType> with the text <DataSourcesText>
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | DataSourcesTagType | DataSourcesText | Sidebarlink               |
      | div                | System Manager  | /html/body/div/div[1]/a/i |
#
################################## checklist module #############################
  Scenario Outline:Linking checklist module template to a instance and module source
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I wait for the element to be saved
#    And I switch to an iframe
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <AddSystemObjectID> Button with ID
    When I click the <AddSystemObjectID> AddButton with ID and rename node <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ProcessXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click on the <ProcessTagType> with the text <ProcessText>
    When I click on the <ProcessTagType> with the text <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved
#    Then I click on an element <InstanceXpath> with xpath
    When I click on the <InstanceTagtype> with the text <InstanceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <InstanceNameXpath> with xpath
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
    When I click on the <ModuleControlTagType> with the text <ModuleControlText>

#    Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
#    When I click on the <MouleControlTagType> with the text <MouleControlText>

#    Then I click on an element <LevelXpath> with xpath
#    When I click on the <LevelTagType> with the text <LevelText>
#
#    Then I click on an element <ViewDrpdwnXpath> with xpath
#    When I click on the <ViewTagType> with the text <ViewText>


    Then I click on an element <ChecklistDataSourceDrpdwnXpath> with xpath
    When I click on the <ChecklistDataSourceTagType> with the text <ChecklistDataSourceText>

    Then I click on an element <DataBindingDrpdwnXpath> with xpath
    Then I click on an element <DataSourceDrpdwnXpath> with xpath
    When I click on the <DataSourceTagType> with the text <DataSourceText>

#    Then I click on an element <SecurityDropDownXpath> with xpath
#
#    Then I click on the <RecordPermissionTagType> with the text <RecordPermissionText>
#    And I wait for the element to be saved
#    Then I click on the <RecordPermissionNameTagType> with the text <RecordPermissionNameText>
#    Then I click on an element <RecordPermissionProcessFlowXpath> with xpath
#    And I wait for the element to be saved
#    Then I click on an element <RecordPermissionUserSourceXpath> with xpath
#    And I wait for the element to be saved
#    Then I click on an element <RecordPermissionUserSource2Xpath> with xpath
#
#    Then I click on an element <RecordPermissionDataSourceXpath> with xpath
#    Then I click on the <RecordPermissionDataSourceTagType> with the text <RecordPermissionDataSourceText>
#    Then I click on an element <RecordPermissionDataSource2Xpath> with xpath

    When I click the <SaveBtnID> Button with ID

    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible


    Examples:
      | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | instanceNameID | SolutionTagType | SolutionText | AddSystemObjectID  | ProcessTagType | ProcessText     | InstanceTagtype | InstanceText        | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext        | DefualtLevelandViewDrpdwnXpath                                  | MouleControlTagType | MouleControlText | LevelXpath                                                         | LevelTagType | LevelText | ViewDrpdwnXpath                                                    | ViewTagType | ViewText | SaveBtnID            | ProcessXpath                                                                                         | ChecklistDataSourceDrpdwnXpath                                                                                                           | ChecklistDataSourceTagType | ChecklistDataSourceText | ModuleControlTagType | ModuleControlText    | DataBindingDrpdwnXpath                                                                                   | DataSourceDrpdwnXpath                                                                                                                   | DataSourceTagType | DataSourceText         | ModuleControlTagType | ModuleControlText    | InstanceNameXpath                                                                                                         | RenameNode                    | SecurityDropDownXpath                                                                                    | RecordPermissionTagType | RecordPermissionText | RecordPermissionNameTagType | RecordPermissionNameText      | RecordPermissionProcessFlowXpath                                                | RecordPermissionUserSourceXpath                                                                               | RecordPermissionUserSource2Xpath    |RecordPermissionDataSourceXpath|RecordPermissionDataSourceTagType|RecordPermissionDataSourceText|RecordPermissionDataSource2Xpath|
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | instanceName   | a               | Automation   | btnAddSystemObject | a              | [ New process ] | a               | Unassigned instance | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | AutomationChecklistModule | //*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li | a                   | Module control   | //*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li | a            | Level     | //*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li | a           | View     | btnSaveSystemManager | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[12]/div/div/div[1]/a/span[2]/b[1] | a                          | Data source             | a                    | All levels and views | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/span/span[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/div/div[1]/div/div[1]/div[1]/a/span[2]/b[1] | a                 | ModuleSourceAutomation | a                    | All levels and views | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[1]/div/label/input | ChecklistModuleSourceSecurity | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[8]/span/span[2] | span                    | addRecordRule        | input                       | ChecklistModuleSourceSecurity | /html/body/div[1]/div[2]/div[17]/div/div/table/tbody/tr[3]/td[3]/div/div[1]/div | /html/body/div[1]/div[2]/div[17]/div/div/div[3]/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div/a/span[2]/b[1]] | /html/body/div[31]/ul[1]/ul/li[4]/a |/html/body/div[1]/div[2]/div[17]/div/div/div[3]/div[2]/div[1]/table/tbody/tr[4]/td[2]/div/div/a/span[2]/b[1]|input|Automation|/html/body/div[33]/ul[1]/ul/li[65]/a|

################################## Checklist source #############################
  Scenario Outline: Linking checklist module template to a instance and checklist source For Apply Security
    Then Switch back to default content
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <AddSystemObjectID> Button with ID
    When I click the <AddSystemObjectID> AddButton with ID and rename node <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ProcessXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click on the <ProcessTagType> with the text <ProcessText>
    When I click on the <ProcessTagType> with the text <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved

    When I click on the <InstanceTagtype> with the text <InstanceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <instanceNameID> Button with ID
    Then I click on an element <InstanceNameXpath> with xpath
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
    When I click on the <ModuleControlTagType> with the text <ModuleControlText>

#    Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
#    When I click on the <MouleControlTagType> with the text <MouleControlText>
#
#    Then I click on an element <LevelXpath> with xpath
#    When I click on the <LevelTagType> with the text <LevelText>
#
#    Then I click on an element <ViewDrpdwnXpath> with xpath
#    When I click on the <ViewTagType> with the text <ViewText>


    Then I click on an element <ChecklistDataSourceDrpdwnXpath> with xpath
    When I click on the <ChecklistDataSourceTagType> with the text <ChecklistDataSourceText>

    Then I click on an element <DataBindingDrpdwnXpath> with xpath
    Then I click on an element <DataSourceDrpdwnXpath> with xpath
    When I click on the <DataSourceTagType> with the text <DataSourceText>

    When I click the <SaveBtnID> Button with ID

    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | instanceNameID | SolutionTagType | SolutionText | AddSystemObjectID  | ProcessTagType | ProcessText     | InstanceTagtype | InstanceText        | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext        | DefualtLevelandViewDrpdwnXpath                                  | MouleControlTagType | MouleControlText | LevelXpath                                                         | LevelTagType | LevelText | ViewDrpdwnXpath                                                    | ViewTagType | ViewText | SaveBtnID            | ProcessXpath                                                                                         | ChecklistDataSourceDrpdwnXpath                                                                                                           | ChecklistDataSourceTagType | ChecklistDataSourceText | DataBindingDrpdwnXpath                                                                                   | DataSourceDrpdwnXpath                                                                                                                    | DataSourceTagType | DataSourceText           | ModuleControlTagType | ModuleControlText    | ModuleTemplatesXpath                                                                                 | DeleteModuleTemplateID | ConfirmDeleteYesBtnXpath                                   | InstanceNameXpath                                                                                                         | RenameNode              |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | instanceNameID | a               | Automation   | btnAddSystemObject | a              | [ New process ] | a               | Unassigned instance | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | AutomationChecklistModule | //*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li | a                   | Module control   | //*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li | a            | Level     | //*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li | a           | View     | btnSaveSystemManager | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[12]/div/div/div[1]/a/span[2]/b[1] | a                          | Checklist data source   | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/span/span[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/div/div[1]/div/div[1]/div[1]/a/span[1]/ul/li | a                 | ChecklistModuleAuomation | a                    | All levels and views | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[4]/div | btnDeleteSystemObject  | /html/body/div/div[4]/div/div/div[3]/div/div/div[2]/div[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[1]/div/label/input | ChecklistSourceSecurity |

    ################################# user defined Checklist #############################
  Scenario Outline: Linking checklist module template to a instance and user defined source For Apply Security
    Then Switch back to default content
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <SystemManagerTag> with the text <SystemManagerText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <AddSystemObjectID> Button with ID
    When I click the <AddSystemObjectID> AddButton with ID and rename node <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ProcessXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click on the <ProcessTagType> with the text <ProcessText>
    When I click on the <ProcessTagType> with the text <RenameNode>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <InstanceXpath> with xpath
    #When I click on the <InstanceTagtype> with the text <InstanceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <instanceNameID> Button with ID
    Then I click on an element <InstanceNameXpath> with xpath
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
    When I click on the <ModuleControlTagType> with the text <ModuleControlText>

#    Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
#    When I click on the <MouleControlTagType> with the text <MouleControlText>
#
#    Then I click on an element <LevelXpath> with xpath
#    When I click on the <LevelTagType> with the text <LevelText>
#
#    Then I click on an element <ViewDrpdwnXpath> with xpath
#    When I click on the <ViewTagType> with the text <ViewText>


    Then I click on an element <ChecklistDataSourceDrpdwnXpath> with xpath
    When I click on the <ChecklistDataSourceTagType> with the text <ChecklistDataSourceText>

    Then I click on an element <DataBindingDrpdwnXpath> with xpath
    Then I click on an element <DataSourceDrpdwnXpath> with xpath
    When I click on the <DataSourceTagType> with the text <DataSourceText>

    When I click the <SaveBtnID> Button with ID

    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | instanceNameID | SolutionTagType | SolutionText | AddSystemObjectID  | ProcessTagType | ProcessText     | InstanceTagtype | InstanceText        | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext        | DefualtLevelandViewDrpdwnXpath                                  | MouleControlTagType | MouleControlText | LevelXpath                                                         | LevelTagType | LevelText | ViewDrpdwnXpath                                                    | ViewTagType | ViewText | SaveBtnID            | ProcessXpath                                                                                         | InstanceXpath                                                                              | ChecklistDataSourceDrpdwnXpath                                                                                                           | ChecklistDataSourceTagType | ChecklistDataSourceText | DataBindingDrpdwnXpath                                                                                   | DataSourceDrpdwnXpath                                                                                                                   | DataSourceTagType | DataSourceText        | ModuleControlTagType | ModuleControlText    | InstanceNameXpath                                                                                                         | RenameNode                |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | instanceNameID | a               | Automation   | btnAddSystemObject | a              | [ New process ] | a               | Unassigned instance | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | AutomationChecklistModule | //*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li | a                   | Module control   | //*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li | a            | Level     | //*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li | a           | View     | btnSaveSystemManager | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[3]/div[2]/ul/li/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[12]/div/div/div[1]/a/span[2]/b[1] | a                          | Data source             | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/span/span[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[2]/div/div[1]/div/div[1]/div[1]/a/span[2]/b[1] | a                 | UserDefinedAutomation | a                    | All levels and views | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[1]/div/label/input | UserDefinedSourceSecurity |

  Scenario: Close browser
    And I close the browser
