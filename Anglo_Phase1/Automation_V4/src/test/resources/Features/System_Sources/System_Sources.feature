@SystemSources

Feature: System Sources

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
      | Isometrixsystem | txtUsername | 1    | txtPassword | btnLoginSubmit |


  Scenario Outline: System sources -Levels

    When I switch to an iframe
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    When I click the <SourcesID> Button with ID
    And I wait for the element to be visible
    When I click the <ModuleC1ID> Button with ID
    And I wait for the element to be visible
    Then I click the <AddButtonID> Button with ID
    And I wait for the element to be visible
    Then I click the <SystemSources> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    ###################Making Selection in standard level list single select #######################
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <Standardlevellist1Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ExpandStandardlevellist1Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ExpandStandardlevellist2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on the <Standardlevellisttagtype> with the text <Standardlevellisttext>

    ####################Making Selection in standard level list multi select dropdwon control####################
    And I wait for the element to be visible
    Then I click on an element <Standardlevellist2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ExpandsubStandardLevellistXpath> with xpath
    Then I click on an element <SubStandardLevellistValue1> with xpath
    Then I click on an element <ExpandSubStandardLevellistValue1> with xpath
    Then I click on an element <SubStandardLevellistValue2> with xpath
    Then I click on an element <StandardlevellistValue3> with xpath

    ####################Making Selection in standard level list multi select checkbox list####################
    Then I click on an element <Standardlevellistdrpdown3xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <ExpandsubStandardLevellist3Xpath> with xpath
    Then I click on an element <SubStandardLevellist3Value1> with xpath
    Then I click on an element <ExpandsubStandardLevellist3Value1> with xpath
    Then I click on an element <SubStandardLevellist3Value2> with xpath
    Then I click on an element <Standardlevellistdrpdown3Value> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible


    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddButtonID  | SystemSources                            | Standardlevellist1Xpath                                                                                                                  | ExpandStandardlevellist1Xpath                                | ExpandStandardlevellist2Xpath                                         | Standardlevellisttagtype | Standardlevellisttext            | Standardlevellist2Xpath                                                                                                                    | ExpandsubStandardLevellistXpath                              | SubStandardLevellistValue1                                        | SubStandardLevellistValue2                                                 | StandardlevellistValue3                                                          | Standardlevellistdrpdown3xpath                                                                                                            | Standardlevellistdrpdown3Value                                                                                                                                      | ExpandSubStandardLevellistValue1                                      | ExpandsubStandardLevellist3Xpath                                                                                                                | SubStandardLevellist3Value1                                                                                                                          | ExpandsubStandardLevellist3Value1                                                                                                                        | SubStandardLevellist3Value2                                                                                                                                   |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_AE95C1C7-B529-4780-8EBB-80665AF9B688 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[6]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[63]/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[63]/ul[1]/ul/li[3]/ul/li[1]/i | a                        | Customer Relationship Management | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[10]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[67]/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[67]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[67]/ul[1]/ul/li[3]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[67]/ul[1]/ul/li[3]/ul/li[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/div/ul[1]/ul/li[3]/ul/li[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[67]/ul[1]/ul/li[3]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/div/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/div/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/div/ul[1]/ul/li[3]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[14]/div[1]/div/ul[1]/ul/li[3]/ul/li[1]/a/i[1] |

  Scenario Outline: System sources -Views

    ###################Making Selection in standard View single select #######################

    And I click on an element <Standardviewlistdrpdwn1Xpath> with xpath
    Then I click on the <StandardViewlisttagtype> with the text <StandardViewlisttext>

    ####################Making Selection in standard View lists multi select dropdwon control####################
    And I wait for the element to be visible
    Then I click on an element <StandardViewlist2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardViewListMultiSelectValue1> with xpath
    Then I click on an element <StandardViewListMultiSelectValue2> with xpath
    Then I click on an element <StandardViewListMultiSelectValue3> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardViewlist2Xpath> with xpath

    ####################Making Selection in standard View multi select checkbox list####################
    Then I click on an element <StandardViewListMultiSelect3Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardViewListMultiSelectCheckboxValue1> with xpath
    Then I click on an element <StandardViewListMultiSelectCheckboxValue2> with xpath
    Then I click on an element <StandardViewListMultiSelectCheckboxValue3> with xpath
    And I wait for the element to be visible

    Examples:
      | StandardViewlisttagtype | StandardViewlisttext | Standardviewlistdrpdwn1Xpath                                                                                                             | StandardViewlist2Xpath                                                                                                                    | StandardViewListMultiSelectValue1                                 | StandardViewListMultiSelectValue2                                 | StandardViewListMultiSelectValue3                                 | StandardViewListMultiSelect3Xpath                                                                                                         | StandardViewListMultiSelectCheckboxValue1                                                                                                            | StandardViewListMultiSelectCheckboxValue2                                                                                                            | StandardViewListMultiSelectCheckboxValue3                                                                                                            |
      | a                       | Quality              | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[11]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[68]/ul[1]/ul/li[5]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[68]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[68]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[15]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[15]/div[1]/div/ul[1]/ul/li[5]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[15]/div[1]/div/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[15]/div[1]/div/ul[1]/ul/li[6]/a/i[1] |

  Scenario Outline: System sources -Users

    ###################Making Selection in standard View single select #######################

    And I click on an element <StandardUsersdrpdwn1Xpath> with xpath
    Then I click on the <StandardUsertagtype> with the text <StandardUsertext>

    ####################Making Selection in standard View  multi select dropdwon control####################
    And I wait for the element to be visible
    Then I click on an element <StandardUserMultiDrpdwn2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardUsersMultiSelectValue1> with xpath
    Then I click on an element <StandardUsersMultiSelectValue2> with xpath
    Then I click on an element <StandardUsersMultiSelectValue3> with xpath
    And I wait for the element to be visible
    Then I click on an element <CloseStandardUserXpath> with xpath

    ####################Making Selection in standard views multi select checkbox list####################
    Then I click on an element <StandardUsersMultiSelect3Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardViewListMultiSelectdrpdwnValue1> with xpath
    Then I click on an element <StandardViewListMultiSelectdrpdwnValue2> with xpath
    Then I click on an element <StandardViewListMultiSelectdrpdwnValue3> with xpath
    And I wait for the element to be visible

    Examples:
      | StandardUsertagtype | StandardUsertext | StandardUsersdrpdwn1Xpath                                                                                                           | StandardUserMultiDrpdwn2Xpath                                                                                                        | StandardUsersMultiSelectValue1                                     | StandardUsersMultiSelectValue2                                     | StandardUsersMultiSelectValue3                                     | CloseStandardUserXpath                                                                                                                    | StandardUsersMultiSelect3Xpath                                                                                                            | StandardViewListMultiSelectdrpdwnValue1                                                                                                               | StandardViewListMultiSelectdrpdwnValue2                                                                                                               | StandardViewListMultiSelectdrpdwnValue3                                                                                                               |
      | a                   | Spanish User     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[8]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[12]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[69]/ul[1]/ul/li[30]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[69]/ul[1]/ul/li[31]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[69]/ul[1]/ul/li[32]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[12]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[16]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[16]/div[1]/div/ul[1]/ul/li[30]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[16]/div[1]/div/ul[1]/ul/li[31]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[16]/div[1]/div/ul[1]/ul/li[32]/a/i[1] |


  Scenario Outline: System sources -User Groups

    ###################Making Selection in standard User groups list single select #######################
    And I click on an element <StandardUsergroupdrpdwn1Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardUsergrouptext> with xpath

    ####################Making Selection in standard User groups multi select dropdwon control####################
    And I wait for the element to be visible
    Then I click on an element <StandardUserMultiDrpdwn2Xpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardUsergroupMultiSelectValue1> with xpath
    Then I click on an element <StandardUsergroupMultiSelectValue2> with xpath
    Then I click on an element <StandardUsergroupMultiSelectValue3> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardUserMultiDrpdwn2Xpath> with xpath

    ####################Making Selection in standard User Groups multi select checkbox list####################
    Then I click on an element <CloseStandardUsergroupXpath> with xpath
    And I wait for the element to be visible
    Then I click on an element <StandardUsergroupMultiSelectdrpdwnValue1> with xpath
    Then I click on an element <StandardUsergroupMultiSelectdrpdwnValue2> with xpath
    Then I click on an element <StandardUsergroupMultiSelectdrpdwnValue3> with xpath
    Then  I click on an element <SaveBtnXpath> with xpath

    Examples:
      | StandardUsergrouptagtype | StandardUsergrouptext                                        | StandardUsergroupdrpdwn1Xpath                                                                                                       | StandardUserMultiDrpdwn2Xpath                                                                                                             | StandardUsergroupMultiSelectValue1                                | StandardUsergroupMultiSelectValue2                                | StandardUsergroupMultiSelectValue3                                 | CloseStandardUsergroupXpath                                                                                                               | StandardUsergroupMultiSelectdrpdwnValue1                                                                                                             | StandardUsergroupMultiSelectdrpdwnValue2                                                                                                             | StandardUsergroupMultiSelectdrpdwnValue3                                                                                                              | SaveBtnXpath                                                           |
      | a                        | /html/body/div[1]/div[3]/div/div[2]/div[66]/ul[1]/ul/li[3]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[9]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[13]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[70]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[70]/ul[1]/ul/li[7]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[70]/ul[1]/ul/li[10]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[17]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[17]/div[1]/div/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[17]/div[1]/div/ul[1]/ul/li[7]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div/div[9]/div[2]/div/div/div[17]/div[1]/div/ul[1]/ul/li[10]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |
