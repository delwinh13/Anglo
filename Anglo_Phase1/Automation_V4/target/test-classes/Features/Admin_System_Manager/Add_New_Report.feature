@AddNewReport

Feature: Add New Report

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | Isometrixsystem | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |


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


  Scenario Outline: Add a new report
    When I click on the <SolutionTagType> with the text <SolutionText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <ProcessTagType> with the text <ProcessText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <InstanceTagType> with the text <InstanceText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <AddReportXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <ReportNameID> with ID <ReportNameValue>
    When I enter <ReportDescriptionID> with ID <ReportDescriptionValue>
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <ExpandControlsXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I drag <A1ControlXpath> and drop <ReportStructureXpath>an element with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I click the <SaveBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And Switch back to default content
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <OkXpath> with xpath
    Then I switch to an iframe
    And I wait for the element to be visible
    Then I click on an element <BackBtnXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | SolutionTagType | SolutionText   | ProcessTagType | ProcessText   | InstanceXpath                                                                              | AddReportXpath                                                                                           | A1ControlXpath                                                               | ReportStructureXpath                                                                       | InstanceTagType | InstanceText | ExpandControlsXpath                                                   | ReportNameID         | ReportNameValue   | ReportDescriptionID         | ReportDescriptionValue | SaveBtnID | OkXpath                                                    | BackBtnXpath                                   |
      | a               | kopanoSolution | a              | Kopanoprocess | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[3]/div[2]/ul/li/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[7]/span/span[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/ul/li[1]/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div[3]/ul/li/ul/li/a/i | a               | A1           | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/a/i | report_template_name | Automation Report | report_template_description | Automation             | btnSave   | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2] | /html/body/div[1]/div[2]/div[1]/div[2]/div/div |
#
#  Scenario Outline: Navigate to the Solution
#
#    When I click on the <SolutionTagType> with the text <SolutionText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    When I click on the <ProcessTagType> with the text <ProcessText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    When I click on the <InstanceTagType> with the text <InstanceText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#
#
#    Examples:
#      | SolutionTagType | SolutionText   | ProcessTagType | ProcessText   | InstanceXpath                                                                              | AddReportXpath                                                                                           | A1ControlXpath                                                               | ReportStructureXpath                                                                       | InstanceTagType | InstanceText | ExpandControlsXpath                                                   | ReportNameID         | ReportNameValue   | ReportDescriptionID         | ReportDescriptionValue | SaveBtnID | OkXpath                                                    | BackBtnXpath                                   |
#      | a               | ReportSolution | a              | Kopanoprocess | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[1]/div/div[3]/div[2]/ul/li/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[7]/span/span[2] | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/ul/li[1]/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div[3]/ul/li/ul/li/a/i | a               | A1           | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/a/i | report_template_name | Automation Report | report_template_description | Automation             | btnSave   | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2] | /html/body/div[1]/div[2]/div[1]/div[2]/div/div |
#

#  Scenario Outline:Edit Existing Report
#
#    Then I click on an element <ExpandReportsXpath> with xpath
#    And I wait for the element to be visible
#     Then I click on the <ReportTagType> with the text <ReportText>
#    And I wait for the element to be visible
#    Then I click on an element <EditReportXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <ExpandControlsXpath> with xpath
#    And I wait for the element to be visible
#    Then I drag <ReportControlXpath> and drop <ReportStructureXpath>an element with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#
#    Examples:
#      | ExpandReportsXpath                                                                                       | EditReportXpath                                                                                                | ReportControlXpath                                                           | ReportStructureXpath                                                                       |ReportTagType|ReportText|ExpandControlsXpath|
#      | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[7]/span/span[4] | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[7]/ul/li/span/span[4] | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/ul/li[7]/a | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div[3]/ul/li/ul/li/a/i |a|Automation Report|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li/a/i|

  Scenario Outline: View Existing report

    Then I click on an element <GlobalSearchXpath> with xpath
    And I wait for the element to be visible
    And I enter <GlobalSearchID> with ID <GlobalSearchValue>
    And I wait for the element to be visible
    When I click on the <ModuleTagType> with the text <ModuleText>
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <ViewReportBtnXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <ReportXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And Switch back to default content
    Then I click on an element <ContinueXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | GlobalSearchXpath                        | GlobalSearchID  | GlobalSearchValue | ModuleTagType | ModuleText             | ViewReportBtnXpath                                            | ReportXpath                                                              | ContinueXpath                                              |
      | /html/body/div/div[1]/div[3]/div[2]/a[2] | txtGlobalSearch | A1                | div           | Permissions Automation | /html/body/div[1]/div[3]/div/div[1]/div[2]/div[2]/div[4]/span | /html/body/div[1]/div[3]/div/div[2]/div[2]/div/div/div[2]/div[2]/span[3] | /html/body/div/div[4]/div/div/div[3]/div/div/div[2]/div[2] |