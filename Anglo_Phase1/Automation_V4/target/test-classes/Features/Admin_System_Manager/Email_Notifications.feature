@EmailNotifications

Feature: Email Notifications

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | UsernameValue  | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue |
      | AutomationUser | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   |


  Scenario Outline: Navigate to Data Sources

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be visible
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be visible
    And I switch to an iframe
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | UserManagerTag | UserManText    | Sidebarlink               |
      | div            | System Manager | /html/body/div/div[1]/a/i |


  Scenario Outline: Navigate to the solution,process and instance

    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <InstanceXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
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
    Examples:
      | SolutionTagType | SolutionText   | ProcessTagType | ProcessText   | InstanceXpath                                                                              | ModuleTemplateXpath                                                                                      | SystemManagerTag | SystemManagerText | instanceNameID | SolutionTagType | SolutionText | AddSystemObjectID  | ProcessTagType | ProcessText     | InstanceTagtype | InstanceText        | ModuleTemplateDrpdwnXpath                                                                                                        | ModuleTemplateTagType | ModuleTemplatetext | DefualtLevelandViewDrpdwnXpath                                  | MouleControlTagType | MouleControlText | LevelXpath                                                         | LevelTagType | LevelText | ViewDrpdwnXpath                                                    | ViewTagType | ViewText | SaveBtnID            | ProcessXpath                                                                                         | ChecklistDatasourceXpath                                                                                                                  | DatasourceTagType | DatasourceText |
      | a               | kopanoSolution | a              | Kopanoprocess | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[3]/div[2]/ul/li/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/span/span[2] | div              | System Manager    | instanceName   | a               | Automation   | btnAddSystemObject | a              | [ New process ] | a               | Unassigned instance | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1] | a                     | A1                 | //*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li | a                   | Module control   | //*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li | a            | Level     | //*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li | a           | View     | btnSaveSystemManager | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[12]/div/div/div[1]/a/span[1]/ul/li | a                 | Data source    |


  Scenario Outline:Creating a notification Template

    And I scroll down
    Then I click on an element <AddNotificationBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I enter <TemplateNameID> with ID <TemplateValue>
    And I wait for the element to be visible
    When I enter <SubjectID> with ID <SubjectValue>
    And I wait for the element to be visible
    Then I click on an element <AddControlBtnXpath> with xpath
#      When I enter <BodyID> with ID <BodyValue>
    And I wait for the element to be visible
    Then I drag <DragElementXpath> and drop <DropElementXpath>an element with xpath
    And I wait for the element to be visible
#    And I wait for the element to be visible
    When I enter <BodyID> with ID <BodyValue>
    When I click the <SaveBtnID> Button with ID
    And I wait for the element to be visible
    Then Switch back to default content
    Then I click on an element <OkayBtn> with xpath
    Then I switch to an iframe
    Then I click on an element <BackBtn> with xpath


    Examples:
      | AddNotificationBtn                                                                                       | SubjectID               | SubjectValue            | TemplateNameID | TemplateValue      | BodyID       | BodyValue       | SaveBtnID | DragElementXpath                                                                 | DropElementXpath                                                           | OkayBtn                                                    | BackBtn                    | AddControlBtnXpath                                                    |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[5]/span/span[2] | templateSubjectLanguage | Automation Notification | templateName   | AutomationTemplate | subContainer | Automation Test | btnSave   | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li[1]/ul/li[12]/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/div[1] | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2] | /html/body/div[1]/div[1]/i | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/a/i |

  Scenario Outline: Navigating to the existing solution

    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <InstanceXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | SolutionTagType | SolutionText   | ProcessTagType | ProcessText   | InstanceXpath                                                                              |
      | a               | kopanoSolution | a              | Kopanoprocess | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[3]/div[2]/ul/li/a |


  Scenario Outline:Creating a notification Trigger

    Then I click on an element <AddNotificationTriggerBtn> with xpath
    And I wait for the element to be saved
    And I switch to email trigger Iframe
    When I enter <NotificationTriggerNameID> with ID <NotificationTriggerNameValue>
    And I wait for the element to be saved
    When I enter <NotificationTriggerDescrpID> with ID <NotificationTriggerDescrpValue>
    And I wait for the element to be saved
    Then I click on an element <EventXpath> with xpath
    When I click on the <EventTagType> with the text <EventText>
    And I wait for the element to be saved
    Then I click on an element <TemplateXpath> with xpath
    When I click on the <TemplateTagType> with the text <TemplateText>
    And I wait for the element to be saved
    Then I drag <FromXpath> and drop <FromMailboxXpath>an element with xpath
    And I wait for the element to be saved
    Then I drag <ToXpath> and drop <ToMailboxXpath>an element with xpath
    And I wait for the element to be saved
    Then I drag <DragCCXpath> and drop <DropCCMailboxXpath>an element with xpath
    And I wait for the element to be saved
    Then I drag <DragBCCXpath> and drop <DropBCCXpath>an element with xpath
    And I wait for the element to be saved
    Then I click on an element <SaveBtnXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    Then I click on an element <OkXpath> with xpath
    And I wait for the element to be visible
    Then Switch back to default content
    Then I click on an element <ConfirmationXpath> with xpath

    Examples:
      | AddNotificationTriggerBtn                                                                                | NotificationTriggerNameID | NotificationTriggerNameValue | NotificationTriggerDescrpID      | NotificationTriggerDescrpValue | EventXpath                                                        | EventTagType | EventText | TemplateXpath                                                     | TemplateTagType | TemplateText       | FromXpath                                             | FromMailboxXpath                                        | ToXpath                                                | ToMailboxXpath                                          | SaveBtnXpath                                               | OkXpath                                                    | DragCCXpath                                           | DropCCMailboxXpath                                      | DragBCCXpath                                          | DropBCCXpath                                            | ConfirmationXpath                                          |
      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[6]/span/span[2] | notification_trigger_name | AutomationNotification       | notification_trigger_description | Automation                     | /html/body/div[1]/table/tbody/tr[3]/td[2]/div/div/a/span[1]/ul/li | a            | On Add    | /html/body/div[1]/table/tbody/tr[4]/td[2]/div/div/a/span[1]/ul/li | a               | AutomationTemplate | /html/body/div[2]/div[2]/div/div[1]/div[2]/ul/li[4]/a | /html/body/div[2]/div[2]/div/div[3]/div[3]/ul/li[1]/a/i | /html/body/div[2]/div[2]/div/div[1]/div[2]/ul/li[10]/a | /html/body/div[2]/div[2]/div/div[3]/div[3]/ul/li[2]/a/i | /html/body/div[1]/div[2]/div[14]/div/div/div[2]/div[2]/div | /html/body/div[1]/div[2]/div[14]/div/div/div[2]/div[2]/div | /html/body/div[2]/div[2]/div/div[1]/div[2]/ul/li[8]/a | /html/body/div[2]/div[2]/div/div[3]/div[3]/ul/li[3]/a/i | /html/body/div[2]/div[2]/div/div[1]/div[2]/ul/li[9]/a | /html/body/div[2]/div[2]/div/div[3]/div[3]/ul/li[4]/a/i | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2] |

#Scenario Outline:Notification Email
#
#  Examples: