@CreateChecklistQuestionsSecurity

Feature: Creating Checklist Questions for Apply Security

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
      | UsernameValue  | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | AutomationUser | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |


  Scenario Outline: Navigate to the System Manager

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click on the <ManageSystemTagType> with the text <ManageSystemText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved

    Examples:
      | ManageSystemTagType | ManageSystemText  | Sidebarlink               |
      | div                 | Manage Checklists | /html/body/div/div[1]/a/i |

######################################################UserDefined###################################################################
  Scenario Outline: Adding questions against the UserDefined module source

    Then I click on an element <ChecklistModuleXpath> with xpath
#    And I click on the <ChecklistModuleTagType> with the text <ChecklistModuleText>
    And I wait for the element to be visible
#    And I click on the <ChecklisttypeTagtype> with the text <ChecklisttypeText>
    Then I click on an element <ChecklistXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <QuestionsTabID> Button with ID
    When I click on an element <QuestionsTabXpath> with xpath
    And I wait for the element to be visible
    When I click the <SupportingInfoID> Button with ID
    And I wait for the element to be visible
#    Then I click on an element <SupportingInformationControlTypes> with xpath
    And I wait for the element to be visible
    Then I click on an element <SupportingInformationControlXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I click on the <SupportingInformationControlTypesTagType> with the text <SupportingInformationControlTypesText>
    And I wait for the element to be visible
    Then I click on an element <AddSectionXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <AddGroupsXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <SectionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ControlTypeDropdownXpath> with xpath
    And I wait for the element to be visible
    Then I click on the <ControlTypeTag> with the text <ControlTypeText>
    And I wait for the element to be visible
    Then I click on an element <ApplyAnswer> with xpath
    And I wait for the element to be visible
    Then I click on an element <SaveBtnXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
#    Then I click on an element <PlusIconXpath> with xpath

    Examples:
      | ChecklistModuleXpath                                                                    | ChecklistModuleTagType | ChecklistModuleText       | ChecklisttypeTagtype | ChecklisttypeText | ChecklistXpath                                                                           | AddQuestionXpath                                                                                        | SupportingInfoID            | AddGroupsXpath                                                                               | SaveBtnXpath                                                 | SupportingInformationControlXpath                                                     | SupportingInformationControlTypes                                                                                            | SupportingInformationControlTypesTagType | SupportingInformationControlTypesText | QuestionsTabXpath                                        | AddSectionXpath                                                                    | SectionXpath                                                                      | ControlTypeDropdownXpath                                                                                                        | ControlTypeTag | ControlTypeText  | ApplyAnswer                                                                                                                  |
      | /html/body/div[1]/div[2]/div/div[1]/div[3]/div[3]/div[2]/div[3]/table/tbody/tr[5]/td[1] | td                     | AutomationChecklistModule | td                   | Checklist         | /html/body/div[1]/div[2]/div/div[2]/div[2]/div[3]/div[3]/div[2]/div[3]/table/tbody/tr/td | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/div/div/div/div/span[3] | btnAddSupportingInformation | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/span/span[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[3]/table/tbody/tr | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table/tbody/tr[4]/td[2]/select | option                                   | Checkbox                              | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/div/span[2] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li/span | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[1]/td[2]/select | option         | Textbox nvarchar | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[2]/td/button |

########################################################################CheckList#########################################################
  Scenario Outline: Adding questions against the checklist source

    Then I click on an element <ChecklistModuleXpath> with xpath
#    And I click on the <ChecklistModuleTagType> with the text <ChecklistModuleText>
    And I wait for the element to be visible
#    And I click on the <ChecklisttypeTagtype> with the text <ChecklisttypeText>
    Then I click on an element <ChecklistXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
#    When I click the <QuestionsTabID> Button with ID
    When I click on an element <QuestionsTabXpath> with xpath
    And I wait for the element to be visible
    When I click the <SupportingInfoID> Button with ID
    And I wait for the element to be visible
#    Then I click on an element <SupportingInformationControlTypes> with xpath
    And I wait for the element to be visible
    Then I click on an element <SupportingInformationControlXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I click on the <SupportingInformationControlTypesTagType> with the text <SupportingInformationControlTypesText>
    And I wait for the element to be visible
    Then I click on an element <AddSectionXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <AddGroupsXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <AddQuestionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <SectionXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ControlTypeDropdownXpath> with xpath
    And I wait for the element to be visible
    Then I click on the <ControlTypeTag> with the text <ControlTypeText>
    And I wait for the element to be visible
    Then I click on an element <ApplyAnswer> with xpath
    And I wait for the element to be visible
    Then I click on an element <SaveBtnXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
#    Then I click on an element <PlusIconXpath> with xpath

    Examples:
      | ChecklistModuleXpath                                                                    | ChecklistModuleTagType | ChecklistModuleText       | ChecklisttypeTagtype | ChecklisttypeText | ChecklistXpath                                                                           | AddQuestionXpath                                                                                        | SupportingInfoID            | AddGroupsXpath                                                                               | SaveBtnXpath                                                 | SupportingInformationControlXpath                                                     | SupportingInformationControlTypes                                                                                            | SupportingInformationControlTypesTagType | SupportingInformationControlTypesText | QuestionsTabXpath                                        | AddSectionXpath                                                                    | SectionXpath                                                                      | ControlTypeDropdownXpath                                                                                                        | ControlTypeTag | ControlTypeText  | ApplyAnswer                                                                                                                  |
      | /html/body/div[1]/div[2]/div/div[1]/div[3]/div[3]/div[2]/div[3]/table/tbody/tr[2]/td[1] | td                     | AutomationChecklistModule | td                   | Checklist         | /html/body/div[1]/div[2]/div/div[2]/div[2]/div[3]/div[3]/div[2]/div[3]/table/tbody/tr/td | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/div/div/div/div/span[3] | btnAddSupportingInformation | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/span/span[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[3]/table/tbody/tr | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table/tbody/tr[4]/td[2]/select | option                                   | Checkbox                              | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/div/span[2] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li/span | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[1]/td[2]/select | option         | Textbox nvarchar | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[2]/td/button |

##############################################################################CheckList Module##################################################
#  Scenario Outline: Adding questions against the module source checklist
#
#    Then I click on an element <ChecklistModuleXpath> with xpath
##    And I click on the <ChecklistModuleTagType> with the text <ChecklistModuleText>
#    And I wait for the element to be visible
#    And I click on the <ChecklisttypeTagtype> with the text <ChecklisttypeText>
#    And I wait for the element to be visible
#    And I wait for the element to be saved
#    And I wait for the element to be saved
##    When I click the <QuestionsTabID> Button with ID
#    When I click on an element <QuestionsTabXpath> with xpath
#    And I wait for the element to be visible
#    When I click the <SupportingInfoID> Button with ID
#    And I wait for the element to be visible
##    Then I click on an element <SupportingInformationControlTypes> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <SupportingInformationControlXpath> with xpath
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I click on the <SupportingInformationControlTypesTagType> with the text <SupportingInformationControlTypesText>
#    And I wait for the element to be visible
#    Then I click on an element <AddSectionXpath> with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
##    Then I click on an element <AddQuestionXpath> with xpath
##    And I wait for the element to be visible
##    Then I click on an element <AddQuestionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <AddGroupsXpath> with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <AddQuestionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <SectionXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <ControlTypeDropdownXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on the <ControlTypeTag> with the text <ControlTypeText>
#    And I wait for the element to be visible
#    Then I click on an element <ApplyAnswer> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <SaveBtnXpath> with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
##    Then I click on an element <PlusIconXpath> with xpath
#
#    Examples:
#      | ChecklistModuleXpath                                                                    | ChecklistModuleTagType | ChecklistModuleText       | ChecklisttypeTagtype | ChecklisttypeText | QuestionsTabID      | AddQuestionXpath                                                                                        | SupportingInfoID            | AddGroupsXpath                                                                               | SaveBtnXpath                                                 | SupportingInformationControlXpath                                                     | SupportingInformationControlTypes                                                                                            | SupportingInformationControlTypesTagType | SupportingInformationControlTypesText | QuestionsTabXpath                                        | AddSectionXpath                                                                    | SectionXpath                                                                      | ControlTypeDropdownXpath                                                                                                        | ControlTypeTag | ControlTypeText  | ApplyAnswer                                                                                                                  |
#      | /html/body/div[1]/div[2]/div/div[1]/div[3]/div[3]/div[2]/div[3]/table/tbody/tr[1]/td[1] | td                     | AutomationChecklistModule | td                   | Checklist         | tab_setup_questions | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/div/div/div/div/span[3] | btnAddSupportingInformation | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li[1]/span/span[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[1]/div | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[3]/table/tbody/tr | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table/tbody/tr[4]/td[2]/select | option                                   | Checkbox                              | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[2]/div[3] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/div/span[2] | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[1]/div[4]/ul/li/span | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[1]/td[2]/select | option         | Textbox nvarchar | /html/body/div[1]/div[2]/div/div[2]/div[3]/div[4]/div[1]/div[3]/div/div/div/div[3]/div[1]/div/table[2]/tbody/tr[2]/td/button |

  Scenario: Close browser
    And I close the browser