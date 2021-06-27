@UserDefinedSources

Feature: User Defined Sources

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    And I wait for the element to be visible
    And I wait for the element to be visible
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
      | Isometrixsystem | txtUsername | Password1!    | txtPassword | btnLoginSubmit |

  Scenario Outline: Single Level (Flat list)

    When I switch to an iframe
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleC1ID> Button with ID
    Then I wait for the element to be visible
    And I click the <AddNewBtnID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click on an element <SingleSelDrpdwnXpath> with xpath
    Then I click on the <SingleSelectDrpdwnTagType> with the text <SingleSelectDrpdwnText>
    And I click on an element <SingleSelCheckboxListXpath> with xpath
    And I click on an element <SingleSelCheckboxList> with xpath
    And I click on an element <MultiSelectDropdownXpath> with xpath
    And I click on an element <MultiSelectValue1> with xpath
    And I click on an element <MultiSelectValue2> with xpath
    And I click on an element <MultiSelectDropdownXpath> with xpath
    And I click on an element <MultiSelectCheckboxList> with xpath
    And I click on an element <MultiSelectCheckboxListValue1> with xpath
    And I click on an element <MultiSelectCheckboxListValue2> with xpath
    And I click on an element <SaveBtnXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | SingleSelDrpdwnXpath                                                                                           | SingleSelectDrpdwnTagType | SingleSelectDrpdwnText | SingleSelCheckboxListXpath                                                    | SingleSelCheckboxList                                       | MultiSelectDropdownXpath                                                      | MultiSelectValue1                                                | MultiSelectValue2                                                | SaveBtnXpath                                                        | MultiSelectCheckboxList                                                                                         | MultiSelectCheckboxListValue1                                                                                              | MultiSelectCheckboxListValue2                                                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[5]/div[1]/a/span[2]/b[1] | a                         | Test 1                 | //*[@id="control_919752A3-C6D9-48F8-8EA7-0BFF35117F7C"]/div[1]/a/span[2]/b[2] | //*[@id="332085b3-a6fe-4d39-a0ef-ea5107f61058_anchor"]/i[1] | //*[@id="control_8BE9833B-30CC-46BA-8E18-CB882B785517"]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[7]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[7]/ul[1]/ul/li[2]/a/i[1] | //*[@id="btnSave_form_7DD91832-11C2-43E4-B422-3C26E4DFC31D"]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li[4]/a/i[1] |

  Scenario Outline: Multiple Levels (Hierarchy List)

        ##########Single Select dropdown###############################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click on an element <SingleSelectDrpdwnXpath> with xpath
    And I click on an element <ExpandTest1Xpath> with xpath
    Then I click on the <Test1Tagtype> with the text <Test1Text>
        ##############Single Select Checkbox############################
    And I click on an element <SingleSelectCheckboxXpath> with xpath
    And I click on an element <ExpandSingleSelCheckboxXpath> with xpath
    And I click on an element <SingleSelCheckboxTest1Xpath> with xpath
    And I click on an element <SingleSelCheckboxTest2> with xpath
        ############Multiple Selections from Multi Select dropdown######
    And I click on an element <MultiSelectDrpdwnXpath> with xpath
    And I click on an element <ExpandMultiTest1Xpath> with xpath
    And I click on an element <Test1MultiXpath> with xpath
    And I click on an element <Test1.1MultiXpath> with xpath
    And I click on an element <ExpandMultiSelectDrodwnTes2Xpath> with xpath
    And I click on an element <MultiSelectDrodwnTest2Xpath> with xpath
    And I click on an element <MultiSelectDrodwnTest2.1Xpath> with xpath

        ####################Multi Selections in multi select checkbox##########
    And I click on an element <MultiSelectCheckboxXpath> with xpath
    And I click on an element <ExpandMultiSelectCheckboxTest2Xpath> with xpath
    And I click on an element <MultiSelectcheckboxTest2Xpath> with xpath
    And I click on an element <ExpandMultiSelectcheckboxTest2.1Xpath> with xpath
    And I click on an element <MultiSelectCheckboxTest2.1Xpath> with xpath
    And I click on an element <MultiSelectCheckboxTest2.1.1Xpath> with xpath
    And I click on an element <ExpandMutliSelectCheckboxTest2.2Xpath> with xpath
    And I click on an element <MultiCheckboxSelectCheckboxTest2.2Xpath> with xpath
    And I click on an element <MultiCheckboxSelectCheckboxTest2.2.1Xpath> with xpath
    And I click on an element <SaveBtnXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1TagType                              | AddNewBtnID  | SingleSelectDrpdwnXpath                                                                                         | ExpandTest1Xpath                                            | Test1Tagtype | Test1Text | SingleSelCheckboxTest2                                                                                                           | SingleSelCheckboxTest1Xpath                                                                                                | ExpandSingleSelCheckboxXpath                                                                                          | SingleSelectCheckboxXpath                                                                                       | MultiSelectDrpdwnXpath                                                                                          | ExpandMultiTest1Xpath                                        | Test1MultiXpath                                                   | Test1.1MultiXpath                                                       | ExpandMultiSelectDrodwnTes2Xpath                             | MultiSelectDrodwnTest2Xpath                                       | MultiSelectDrodwnTest2.1Xpath                                              | MultiSelectCheckboxXpath                                                                                        | ExpandMultiSelectCheckboxTest2Xpath                                                                                   | MultiSelectcheckboxTest2Xpath                                                                                              | ExpandMultiSelectcheckboxTest2.1Xpath                                                                                          | MultiSelectCheckboxTest2.1Xpath                                                                                                     | MultiSelectCheckboxTest2.1.1Xpath                                                                                                         | ExpandMutliSelectCheckboxTest2.2Xpath                                                                                          | MultiCheckboxSelectCheckboxTest2.2Xpath                                                                                             | MultiCheckboxSelectCheckboxTest2.2.1Xpath                                                                                                    | SaveBtnXpath                                                           |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[9]/ul[1]/ul/li[1]/i | a            | Test 1.1  | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[2]/i | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li[2]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[2]/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li[2]/ul/li[2]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Display and Select Min/Max

        #########################  Display 1.1###########################################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click on an element <Display1.1Xpath> with xpath
    Then I wait for the element to be visible
    Then I click on the <Diplay1.1TagType> with the text <Diplay1.1Text>

         ######################Display 1.2 ###############################################
    And I click on an element <Display1.2Xpath> with xpath
    And I click on an element <ExpandDisplay1.2Test1> with xpath
    Then I wait for the element to be visible
    Then I click on the <Display1.2Test1TagType> with the text <Display1.2Test1Text>

          #################Mx Display 1 Max####################################
    And I click on an element <MAxDisplay-MaxXpath> with xpath
    And I click on an element <ExpandMaxDiplayTest2Xpath> with xpath
    And I click on an element <ExpandMaxDisplay2.1Xpath> with xpath
    And I click on an element <ExpandMaxDisplay2.1.1Xpath> with xpath
    Then I click on the <MaxDisplay2.1.1Tagtype> with the text <MaxDisplay2.1.1Text>
          ################# Display 1.3 ####################################
    And I click on an element <Display1.3Xpath> with xpath
    And I click on an element <ExpandDisplayTest3Xpath> with xpath
    And I click on an element <ExpandDisplayTest3.1Xpath> with xpath
    Then I click on the <Display3.1.1Tagtype> with the text <Display3.1.1Text>
          #################Max Max Display ####################################
    And I click on an element <Max-MaxXpath> with xpath
    And I click on an element <ExpandMax-MaxTest3Xpath> with xpath
    And I click on an element <ExpandMax-MaxTest3.1Xpath> with xpath
    Then I click on the <Max-Max3.1.1Tagtype> with the text <Max-Max3.1.1Text>
    And I click on an element <SaveBtnXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1TagType                              | AddNewBtnID  | Display1.1Xpath                                                                                                 | Diplay1.1TagType | Diplay1.1Text | Display1.2Xpath                                                                                                 | ExpandDisplay1.2Test1                                        | Display1.2Test1TagType | Display1.2Test1Text | MAxDisplay-MaxXpath                                                                                             | ExpandMaxDiplayTest2Xpath                                    | ExpandMaxDisplay2.1Xpath                                              | ExpandMaxDisplay2.1.1Xpath                                                  | MaxDisplay2.1.1Tagtype | MaxDisplay2.1.1Text | Display1.3Xpath                                                                                                 | ExpandDisplayTest3Xpath                                      | ExpandDisplayTest3.1Xpath                                          | Display3.1.1Tagtype | Display3.1.1Text | SaveBtnXpath                                                           | Max-MaxXpath                                                                                                    | ExpandMax-MaxTest3Xpath                                      | ExpandMax-MaxTest3.1Xpath                                          | Max-Max3.1.1Tagtype | Max-Max3.1.1Text |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[26]/div[1]/a/span[2]/b[1] | a                | Test 1        | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[30]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/i | a                      | Test 1.1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[34]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li[2]/i | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li[2]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li[2]/ul/li[1]/ul/li/i | a                      | Test 2.1.1.1        | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[38]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[17]/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[17]/ul[1]/ul/li[3]/ul/li/i | a                   | Test 3.1         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[42]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li[3]/ul/li/i | a                   | Test 3.1.1       |

  Scenario Outline:Filter Lite

    #####################Selecting Equals to#####################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click on an element <EqualstoXpath> with xpath
    And I click on an element <ExpandEqualstoTest2Xpath> with xpath
    And I click on an element <ExpandEqualsto2.1Xpath> with xpath
    And I click on an element <ExpandEqualsto2.1.1> with xpath
    Then I click on the <EqualstoTagtype> with the text <EqualstoText>
    And I click on an element <EqualstoXpath> with xpath
    And I click on an element <ExpandEqualsto2.2Xpath> with xpath
    Then I click on the <Equalsto2.2.1Tagtype> with the text <Equalsto2.2.1Text>

    ###################Is not equals to field######################
    And I click on an element <IsNotEqualToXpath> with xpath
    And I click on an element <ExpandIsNotEqualToTest3Xpath> with xpath
    And I click on an element <ExpandIsNotEqualToTest3.1> with xpath
    Then I click on the <ExpandIsNotEqualToTest3.1.1Tagtype> with the text <ExpandIsNotEqualToTest3.1.1Text>

    ############################Contains Field######################################
    And I click on an element <ContainsFieldXpath> with xpath
    And I click on an element <ExpandsContainsTest2Xpath> with xpath
    And I click on an element <ExpandContainsTest2.1Xpath> with xpath
    And I click on an element <ExpandContains2.1.1Xpath> with xpath
    Then I click on the <ExpandContains2.1.1.1TagType> with the text <ExpandContains2.1.1.1Text>
    And I click on an element <ContainsFieldXpath> with xpath
    And I click on an element <ExpandContainsTest2.2Xpath> with xpath
    Then I click on an element <ExpandContainsTest2.2.1Text> with xpath

    #################################Does not contain field#######################################
    And I click on an element <DoesNotContainXpath> with xpath
    And I click on an element <ExpandDoesNotContainTest3Xpath> with xpath
    And I click on an element <ExpandDoesNotContainTest3.1Xpath> with xpath
    Then I click on an element  <ExpandDoesNotContainTest3.1Text> with xpath
    And I click on an element <BtnSaveXpath> with xpath


    Examples:
      | SourcesID                                    | ModuleC1TagType                              | AddNewBtnID  | EqualstoXpath                                                                                                   | ExpandEqualstoTest2Xpath                                  | ExpandEqualsto2.1Xpath                                             | ExpandEqualsto2.1.1                                                      | EqualstoTagtype | EqualstoText | ExpandEqualsto2.2Xpath                                             | Equalsto2.2.1Tagtype | Equalsto2.2.1Text | IsNotEqualToXpath                                                                                          | ExpandIsNotEqualToTest3Xpath                                 | ExpandIsNotEqualToTest3.1                                          | ExpandIsNotEqualToTest3.1.1Tagtype | ExpandIsNotEqualToTest3.1.1Text | ContainsFieldXpath                                                                                              | ExpandsContainsTest2Xpath                                 | ExpandContainsTest2.1Xpath                                         | ExpandContains2.1.1Xpath                                                 | ExpandContains2.1.1.1TagType | ExpandContains2.1.1.1Text | ExpandContainsTest2.2Xpath                                         | ExpandContainsTest2.2.1Tagtype | ExpandContainsTest2.2.1Text                                                 | DoesNotContainXpath                                                                                             | ExpandDoesNotContainTest3Xpath                               | ExpandDoesNotContainTest3.1Xpath                                   | ExpandDoesNotContainTest3.1Tagtype | ExpandDoesNotContainTest3.1Text                                          | BtnSaveXpath                                                           |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[32]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[14]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[14]/ul[1]/ul/li/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[14]/ul[1]/ul/li/ul/li[1]/ul/li/i | a               | Test 2.1.1.1 | /html/body/div[1]/div[3]/div/div[2]/div[14]/ul[1]/ul/li/ul/li[2]/i | a                    | Test 2.2.1        | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[36]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li[3]/i | /html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li[3]/ul/li/i | a                                  | Test 3.1.1                      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[40]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/ul/li[1]/ul/li/i | a                            | Test 2.1.1.1              | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/ul/li[2]/i | a                              | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/ul/li[2]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[44]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li[2]/i | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li[2]/ul/li/i | a                                  | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li[2]/ul/li/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |
