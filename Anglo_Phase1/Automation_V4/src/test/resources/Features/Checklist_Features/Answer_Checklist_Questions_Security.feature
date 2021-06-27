@AnswerChecklistQuestionsSecurity

Feature: Answer Checklist Questions in Viewer for Apply Security


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

######################################################UserDefined###################################################################
  Scenario Outline: Answer the checklist questions for the type User Defined source for Apply Security

    ##################################Searching for a Module Template######################################
    And I wait for the element to be visible
#    Then Switch back to default content
    Then I click on an element <GlobalSearchXpath> with xpath
    And I wait for the element to be visible
    And I enter <GlobalSearchID> with ID <GlobalSearchText>
    And I wait for the element to be visible
    Then I click on an element <SearchResultsXpath> with xpath
    And I wait for the element to be visible
    Then I switch to an iframe
    And I wait for the element to be visible

    ####################Adding a record###############################
    Then I click on an element <BtnAddNewXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <DropDown> with xpath
    And I wait for the element to be visible
    Then I click on the <DropDownTagType> with the text <DropDownText>
    And I wait for the element to be visible
    Then I click on an element <BtnSaveXpath> with xpath
    And I wait for the element to be visible
    #####################Answer checklist questions ###############
    Then I click on an element <BtnStartXpath> with xpath
    And I wait for the element to be visible
    Then I enter <Answer1Xpath> using xpath <Answer1>
    And I wait for the element to be visible
    Then I enter <Answer2Xpath> using xpath <Answer2>
    And I wait for the element to be visible
    Then I click on an element <BtnFinishXpath> with xpath
    And I wait for the element to be visible

    Examples:
      | GlobalSearchXpath                        | GlobalSearchID  | GlobalSearchText      | SearchResultsXpath                                              | BtnAddNewXpath                                           | DropDown                                                                       | DropDownTagType | DropDownText | BtnSaveXpath                                                           | BtnStartXpath                                                | Answer1Xpath                                                                                                          | Answer2Xpath                                                                                                          | Answer1 | Answer2 | BtnFinishXpath                                                  |
      | /html/body/div/div[1]/div[3]/div[2]/a[2] | txtGlobalSearch | AutomationUserDefined | /html/body/div/div[7]/div/div/div[2]/ul[1]/li[2]/div[4]/span[2] | /html/body/div[1]/div[3]/div/div[1]/div[2]/div[2]/div[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[3]/div[1]/a/span[2]/b[1] | a               | Checklist    | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[3]/div[1]/div | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/input | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[5]/div/div[1]/div/input | Answer1 | Answer2 | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[2]/div[2]/div[1] |

########################################################################CheckList#########################################################
  Scenario Outline: Answer the checklist questions for the type checklist source for Apply Security

    ##################################Searching for a Module Template######################################
    And I wait for the element to be visible
    Then Switch back to default content
    Then I click on an element <GlobalSearchXpath> with xpath
    And I wait for the element to be saved
    When I clear an input using ID <GlobalSearchID>
    And I enter <GlobalSearchID> with ID <GlobalSearchText>
    And I wait for the element to be visible
    Then I click on an element <SearchResultsXpath> with xpath
    And I wait for the element to be visible
    Then I switch to an iframe
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
    ####################Adding a record###############################
    Then I click on an element <BtnAddNewXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <DropDown> with xpath
    And I wait for the element to be visible
    Then I click on the <DropDownTagType> with the text <DropDownText>
    And I wait for the element to be visible
    Then I click on an element <BtnSaveXpath> with xpath
    And I wait for the element to be visible
    And I wait for the element to be saved
    And I wait for the element to be saved
    #####################Answer checklist questions ###############
    Then I click on an element <BtnStartXpath> with xpath
    And I wait for the element to be visible
    Then I enter <Answer1Xpath> using xpath <Answer1>
    And I wait for the element to be visible
    Then I enter <Answer2Xpath> using xpath <Answer2>
    And I wait for the element to be visible
    Then I click on an element <BtnFinishXpath> with xpath
    And I wait for the element to be visible

    Examples:
      | GlobalSearchXpath                        | GlobalSearchID  | GlobalSearchText    | SearchResultsXpath                                      | BtnAddNewXpath                                           | DropDown                                                                       | DropDownTagType | DropDownText | BtnSaveXpath                                                           | BtnStartXpath                                                | Answer1Xpath                                                                                                          | Answer2Xpath                                                                                                          | Answer1 | Answer2 | BtnFinishXpath                                                  |
      | /html/body/div/div[1]/div[3]/div[2]/a[2] | txtGlobalSearch | AutomationChecklist | /html/body/div/div[7]/div/div/div[2]/ul[1]/li[2]/div[4] | /html/body/div[1]/div[3]/div/div[1]/div[2]/div[2]/div[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[3]/div[1]/a/span[2]/b[1] | a               | Checklist    | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[3]/div[1]/div | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/input | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[5]/div/div[1]/div/input | Answer1 | Answer2 | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[2]/div[2]/div[1] |

##############################################################################CheckList Module##################################################
#  Scenario Outline: Answer the checklist questions for the type Modulesource for Apply Security
#
#        ##################################Searching for a Module Template######################################
#    And I wait for the element to be visible
##    Then Switch back to default content
#    Then I click on an element <GlobalSearchXpath> with xpath
#    And I wait for the element to be visible
#    And I enter <GlobalSearchID> with ID <GlobalSearchText>
#    And I wait for the element to be visible
#    Then I click on an element <SearchResultsXpath> with xpath
#    And I wait for the element to be visible
#    Then I switch to an iframe
#    And I wait for the element to be visible
#
#    ####################Adding a record###############################
#    Then I click on an element <BtnAddNewXpath> with xpath
#    And I wait for the element to be visible
#    Then I click on an element <DropDown> with xpath
#    And I wait for the element to be visible
#    Then I click on the <DropDownTagType> with the text <DropDownText>
#    And I wait for the element to be visible
#    Then I click on an element <BtnSaveXpath> with xpath
#    And I wait for the element to be visible
#    #####################Answer checklist questions ###############
#    Then I click on an element <BtnStartXpath> with xpath
#    And I wait for the element to be visible
#    Then I enter <Answer1Xpath> using xpath <Answer1>
#    And I wait for the element to be visible
#    Then I enter <Answer2Xpath> using xpath <Answer2>
#    And I wait for the element to be visible
#    Then I click on an element <BtnFinishXpath> with xpath
#    And I wait for the element to be visible
#
#    Examples:
#      | GlobalSearchXpath                        | GlobalSearchID  | GlobalSearchText | SearchResultsXpath                               | BtnAddNewXpath                                           | DropDown                                                                       | DropDownTagType | DropDownText | BtnSaveXpath                                                           | BtnStartXpath                                                | Answer1Xpath                                                                                                          | Answer2Xpath                                                                                                          | Answer1 | Answer2 | BtnFinishXpath|
#      | /html/body/div/div[1]/div[3]/div[2]/a[2] | txtGlobalSearch | AutomationChecklist   | /html/body/div/div[7]/div/div/div[2]/ul[1]/li[2] | /html/body/div[1]/div[3]/div/div[1]/div[2]/div[2]/div[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[3]/div[1]/a/span[2]/b[1] | a               | UserDefined  | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[3]/div[1]/div | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/input | /html/body/div[1]/div[3]/div/div[2]/div[4]/div[3]/div/div[2]/div/div/div[3]/div[1]/div[2]/div[5]/div/div[1]/div/input | Answer1 | Answer2 |/html/body/div[1]/div[3]/div/div[2]/div[4]/div[2]/div[2]/div[1]|

#  Scenario: Close browser
#    And I close the browser





