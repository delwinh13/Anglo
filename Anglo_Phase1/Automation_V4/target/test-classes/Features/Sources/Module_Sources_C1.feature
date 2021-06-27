@ModuleSourcesC1

Feature: Module Sources C1

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
      | Isometrixsystem | txtUsername | 1    | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |

                ####################################### MODULE A1 - All Levels And Views #############################
  Scenario Outline: Module A1 Module Control

    When I switch to an iframe
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleC1ID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <AddNewBtnID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleSourcesID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

        ########################### Module A1 - Textbox ##########################################
        ############## Making a selection in B1 All ##############################################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I click on an element <B1DropdwnXpath> with xpath
    And I click on an element <ExpandA1DrpdownXpath> with xpath
    Then I click on the <B1_A1B1TextboxTagtype> with the text <B1_A1B1TextboxText>
    And I click on an element <B1TextboxcloseXpath> with xpath
    And I click on an element <B1TextboxXpath> with xpath
    And I click on an element <ExpandA1TextboxB1Xpath> with xpath
    And I click on an element <C1_A1B1TextboxXpath> with xpath

        ############ Making selection in B2 Specific ############################################
    Then I wait for the element to be visible
    And I click on an element <B2SpecificDrpdwnXpath> with xpath
    And I click on an element <ExpandA1SpecificDrpdownXpath> with xpath
    Then I click on the <B2_A1B1DrpdownTagType> with the text <B2_A1B1DrpdownText>
    And I click on an element <B2_DrpdwnCloseXpath> with xpath
    And I click on an element <ExpandB2_A1TextboxXpath> with xpath
    And I click on an element <B2_A1B2TextboxXpath> with xpath

        ############################ Making selection in B3 Module ###############################
    Then I wait for the element to be visible
    And I click on an element <B3DrpdwnXpath> with xpath
    And I click on an element <ExpandB3_A1TextboxXpath> with xpath
    Then I click on the <B3_A1B3Tagtype> with the text <B3_A1B3Text>
    And I click on an element <B3CloseBtn> with xpath
    And I click on an element <ExpandA1_B3TextboxXpath> with xpath
    And I click on an element <A1B3TextBoxXpath> with xpath

        ############################ Making selection in B4 Inherit ##############################
    Then I wait for the element to be visible
    And I click on an element <B4textboxXpath> with xpath
    And I click on an element <ExpandB4_A1Xpath> with xpath
    Then I click on the <A1_B4Tagtype> with the text <A1_B4Text>
    And I click on an element <B4closeXpath> with xpath
    And I click on an element <B4_A1ExpandXpath> with xpath
    And I click on an element <A1B4Xpath> with xpath
    #And I click on an element <SaveXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | ModuleSourcesID                          | B1DropdwnXpath                                                                | ExpandA1DrpdownXpath                              | B1_A1B1TextboxTagtype | B1_A1B1TextboxText | B1TextboxcloseXpath                                                           | B1TextboxXpath                                                                | ExpandA1TextboxB1Xpath                            | C1_A1B1TextboxXpath                                         | B2SpecificDrpdwnXpath                                                         | ExpandA1SpecificDrpdownXpath                              | B2_A1B1DrpdownTagType | B2_A1B1DrpdownText | B2_DrpdwnCloseXpath                                                           | ExpandB2_A1TextboxXpath                                                                                                                         | B2_A1B2TextboxXpath                                                                                                                                        | B3DrpdwnXpath                                                                 | ExpandB3_A1TextboxXpath                                   | B3_A1B3Tagtype | B3_A1B3Text | ExpandA1_B3TextboxXpath                                                                                                                         | B3CloseBtn                                                                                                                                   | A1B3TextBoxXpath                                                                                                                                           | B4textboxXpath                                                                                                                         | ExpandB4_A1Xpath                                          | A1_B4Tagtype | A1_B4Text | B4closeXpath                                                                                                                                 | B4_A1ExpandXpath                                                                                                                                | A1B4Xpath                                                                                                                                                  | SaveXpath                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | //*[@id="control_7D23DE46-737B-4525-8EA1-972181AE2CC4"]/div[1]/a/span[2]/b[1] | //*[@id="46e209ed-b8a6-4c00-b7dd-96a67b98f2c1"]/i | a                     | A1 B1              | //*[@id="control_6A511F4E-9983-4173-8314-878A4D0F8531"]/div[1]/a/span[2]/b[2] | //*[@id="control_6A511F4E-9983-4173-8314-878A4D0F8531"]/div[1]/a/span[2]/b[2] | //*[@id="46e209ed-b8a6-4c00-b7dd-96a67b98f2c1"]/i | //*[@id="7288358a-149a-4013-8dbc-2afccdae753b_anchor"]/i[1] | //*[@id="control_57271D14-027B-4B6C-8E0F-1FACA16EA872"]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[22]/ul[1]/ul/li/i | a                     | A1 B2              | //*[@id="control_C2B1478B-99F3-400C-B99F-FE0F7FD19773"]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | //*[@id="control_6A6B9C37-BC88-4015-B94F-425F1972BA6E"]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[23]/ul[1]/ul/li/i | a              | A1 B3       | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[9]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[24]/ul[1]/ul/li/i | a            | A1 B4     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |


  Scenario Outline: Module A1 - All Levels and Views (Numeric Textbox)

#    When I switch to an iframe
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    And I click the <SourcesID> Button with ID
#    Then I wait for the element to be visible
#    And I click the <ModuleC1ID> Button with ID
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    And I click the <AddNewBtnID> Button with ID
#    Then I wait for the element to be visible
#    And I click the <ModuleSourcesID> Button with ID
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible

      ########################### Module A1 - Numeric Textbox ##########################################
      ################# Making a selection in B1 - ALL #################################################
    Then I wait for the element to be visible
    And I click on an element <ALLNumericA1DrpdwnXpath> with xpath
    And I click on an element <ExpandA1DrpdownXpath> with xpath
    When I click on the <A1DrpdwnTagtype> with the text <A1DrpdwnText>
    And I click on an element <A1TextboxCloseXpath> with xpath
    And I click on an element <A1TextboxExpandXpath> with xpath
    And I click on an element <A1TextboxValue> with xpath

      #################### Making selection in B2 - Specific ############################################
    Then I wait for the element to be visible
    And I click on an element <SpecificNumericDrpdwnXpath> with xpath
    And I click on an element <ExpandSpecificNumericDrpdownXpath> with xpath
    When I click on the <SpecificNumericDrpdwnTagtype> with the text <SpecificNumericText>
    And I click on an element <SpecificNumericCloseXpath> with xpath
    And I click on an element <ExpandSpecficNumericXpath> with xpath
    And I click on an element <SpecificNumerictextboxValueXpath> with xpath

      #################### Making selection in B3 - Module ##############################################
    Then I wait for the element to be visible
    And I click on an element <NumericModuleXpath> with xpath
    And I click on an element <ExpandNumericModule> with xpath
    When I click on the <NumericModuleTagtype> with the text <NumericModuleText>
    And I click on an element <NumericModuleCloseXpath> with xpath
    And I click on an element <ExpandNumericModuleTextboxXpath> with xpath
    And I click on an element <NumericModuleTextboxValue> with xpath

      #######################Making selection in B4 - Inherit ###########################################
    Then I wait for the element to be visible
    And I click on an element <NumericEnheritDrpXpath> with xpath
    And I click on an element <ExpandNumericEnherit> with xpath
    When I click on the <NumericEnheritTagtype> with the text <NumericEnhritText>
    And I click on an element <CloseNumericEnheritXpath> with xpath
    And I click on an element <ExpandNumericEnheritTextboxXpath> with xpath
    And I click on an element <NumericEnheritTextboxValue> with xpath
    #And I click on an element <SaveXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | ModuleSourcesID                          | ALLNumericA1DrpdwnXpath                                                                                                                      | ExpandA1DrpdownXpath                              | A1DrpdwnTagtype | A1DrpdwnText | A1TextboxCloseXpath                                                                                                                          | A1TextboxExpandXpath                                                                                                                            | A1TextboxValue                                                                                                                                             | SpecificNumericDrpdwnXpath                                                                                                                   | ExpandSpecificNumericDrpdownXpath                         | SpecificNumericDrpdwnTagtype | SpecificNumericText | SpecificNumericCloseXpath                                                                                                                    | ExpandSpecficNumericXpath                                                                                                                       | SpecificNumerictextboxValueXpath                                                                                                                           | NumericModuleXpath                                                                                                                           | ExpandNumericModule                                       | NumericModuleTagtype | NumericModuleText | NumericModuleCloseXpath                                                                                                                      | ExpandNumericModuleTextboxXpath                                                                                                                 | NumericModuleTextboxValue                                                                                                                                  | NumericEnheritDrpXpath                                                                                                                       | ExpandNumericEnheritTextboxXpath                                                                                                                | NumericEnheritTextboxValue                                                                                                                                 | NumericEnheritClose                                                                                                                          | SaveXpath                                                              | ExpandNumericEnherit                                      | NumericEnheritTagtype | NumericEnhritText | CloseNumericEnheritXpath                                                                                                                     |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[15]/div[1]/a/span[2]/b[1] | //*[@id="46e209ed-b8a6-4c00-b7dd-96a67b98f2c1"]/i | a               | 11           | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[26]/ul[1]/ul/li/i | a                            | 12                  | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[27]/ul[1]/ul/li/i | a                    | 13                | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[28]/ul[1]/ul/li/i | a                     | 14                | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/a/span[2]/b[2] |


  Scenario Outline: Module A1 - All Levels and Views (Text Area)

#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    When I switch to an iframe
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    And I click the <SourcesID> Button with ID
#    Then I wait for the element to be visible
#    And I click the <ModuleC1ID> Button with ID
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    And I click the <AddNewBtnID> Button with ID
#    Then I wait for the element to be visible
#    And I click the <ModuleSourcesID> Button with ID
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible
#    Then I wait for the element to be visible

        ########################### Module A1 - Text Area ##########################################
        ################ Making Selection in B1 ALL ################################################
    Then I wait for the element to be visible
    And I click on an element <AllTextAreaDropdwnXpath> with xpath
    Then I click on an element <ExpandAllTextAreaA1Xpath> with xpath
    When I click on the <AllTextAreaDrpdwnTagtype> with the text <AllTextAreaDrpdwnText>
    And I click on an element <CloseBtn_All> with xpath
    Then I click on an element <ExpandA1AllTextAreaXpath> with xpath
    Then I click on an element <AllA1B1TextAreaValueXpath> with xpath

        ########################### Making selection in B2 Specific ################################
    Then I wait for the element to be visible
    When I click on an element <SpecificDrpDwnXpath> with xpath
    When I click on an element <ExpandSpecificTextArea> with xpath
    When I click on the <SpecificDrpdwnValueTagtype> with the text <SpecificDrpdwnValueText>
    And I click on an element <CloseBtn_Specific> with xpath
    When I click on an element <ExpandA1SpecificXpath> with xpath
    When I click on an element <SpecificA1B2ValueXpath> with xpath

        ########################### Making selection in B3 Module ##################################
    Then I wait for the element to be visible
    When I click on an element <ModuleTextAreaDrpdwnXpath> with xpath
    When I click on an element <ExpandModuleTextAreaA1Xpath> with xpath
    When I click on the <ModuleTextAreaTagType> with the text <ModuleTextAreaText>
    When I click on an element <CloseModuleTextareaXpath> with xpath
    When I click on an element <ExpandModuleTextareaXpath> with xpath
    When I click on an element <A1B3ValueXpath> with xpath

        ########################### Making selection in B4 Enherit ##################################
    When I click on an element <InheritTextAreaDrpdwnXpath> with xpath
    When I click on an element <ExpandInheritTextAreaA1Xpath> with xpath
    When I click on the <InheritTextAreaTagType> with the text <InheritTextAreaText>
    When I click on an element <CloseInheritTextareaXpath> with xpath
    When I click on an element <ExpandInheritTextareaXpath> with xpath
    When I click on an element <A1B4ValueXpath> with xpath
    And I click on an element <SaveXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | ModuleSourcesID                          | AllTextAreaDropdwnXpath                                                                                                                      | ExpandAllTextAreaA1Xpath                                  | AllTextAreaDrpdwnTagtype | AllTextAreaDrpdwnText | CloseBtn_All                                                                                                                                 | ExpandA1AllTextAreaXpath                                                                                                                        | AllA1B1TextAreaValueXpath                                                                                                                                  | SpecificDrpDwnXpath                                                                                                                          | ExpandSpecificTextArea                                    | SpecificDrpdwnValueTagtype | SpecificDrpdwnValueText | CloseBtn_Specific                                                                                                                            | ExpandA1SpecificXpath                                                                                                                           | SpecificA1B2ValueXpath                                                                                                                                     | ModuleTextAreaDrpdwnXpath                                                                                                                    | ExpandModuleTextAreaA1Xpath                               | ModuleTextAreaTagType | ModuleTextAreaText | CloseModuleTextareaXpath                                                                                                                     | ExpandModuleTextareaXpath                                                                                                                       | A1B3ValueXpath                                                                                                                                             | InheritTextAreaDrpdwnXpath                                                                                                                    | ExpandInheritTextAreaA1Xpath                              | InheritTextAreaTagType | InheritTextAreaText | CloseInheritTextareaXpath                                                                                                                    | ExpandInheritTextareaXpath                                                                                                                      | A1B4ValueXpath                                                                                                                                             | SaveXpath                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/i | a                        | Test A1 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[30]/ul[1]/ul/li/i | a                          | Test A1 B2              | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[31]/ul[1]/ul/li/i | a                     | Test A1 B3         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[27]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[32]/ul[1]/ul/li/i | a                      | Test A1 B4          | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

          ####################################### MODULE A2 Module Specific ##################################
  Scenario Outline: Module A2 - All Levels and Views (Textbox)

    Then I wait for the element to be visible
    When I switch to an iframe
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleC1ID> Button with ID
    Then I wait for the element to be visible
    And I click the <AddNewBtnID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleSourcesID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <ModuleA2> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

          ########################### Module A2 - Textbox ##########################################
          ##################### Making Selection in B1 ALL #########################################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click on an element <AllTextAreaDropdwnXpath> with xpath
    Then I click on an element <ExpandAllTextAreaA1Xpath> with xpath
    When I click on the <AllTextAreaDrpdwnTagtype> with the text <AllTextAreaDrpdwnText>
    Then I click on an element <CloseAllB1Xpath> with xpath
    Then I click on an element <ExpandA1AllTextAreaXpath> with xpath
    Then I click on an element <AllA1B1TextAreaValueXpath> with xpath

          ########################### Making selection in B2 Specific ##############################
    Then I wait for the element to be visible
    When I click on an element <SpecificDrpDwnXpath> with xpath
    When I click on an element <ExpandSpecificTextArea> with xpath
    When I click on the <SpecificDrpdwnValueTagtype> with the text <SpecificDrpdwnValueText>
    When I click on an element <CloseB2SpecificXpath> with xpath
    When I click on an element <ExpandA1SpecificXpath> with xpath
    When I click on an element <SpecificA1B2ValueXpath> with xpath

          ########################### Making selection in B3 Module ################################
    Then I wait for the element to be visible
    When I click on an element <ModuleTextAreaDrpdwnXpath> with xpath
    When I click on an element <ExpandModuleTextAreaA1Xpath> with xpath
    When I click on the <ModuleTextAreaTagType> with the text <ModuleTextAreaText>
    When I click on an element <CloseB3ModuleXpath> with xpath
    When I click on an element <ExpandB3ModuleXpath> with xpath
    When I click on an element <A2B3ModuleValueXpath> with xpath

          ########################### Making selection in B4 Inherit ###############################
    Then I wait for the element to be visible
    When I click on an element <B4EnheritDrpdwnXpath> with xpath
    When I click on an element <ExpandB4EnheritXpath> with xpath
    When I click on the <B4Enherittagtype> with the text <B4Enherittext>
    When I click on an element <CloseB4EnheritXpath> with xpath
    When I click on an element <ExpandB4A2EnheritXpath> with xpath
    When I click on an element <A2B4ValueXpath> with xpath
    Then I wait for the element to be visible

          ########################### Module A2 - Numeric Textbox ##################################
          ######################## Making selection in B1 All ######################################
    Then I wait for the element to be visible
    When I click on an element <B1AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB1AllNumericDrpdownXpath> with xpath
    When I click on the <ModuleA2NumericTextboxTagtype> with the text <AllB2NumericTextboxText>
    When I click on an element <CloseAllB1NumericXpath> with xpath
    When I click on an element <ExpandAllNumericXpath> with xpath
    When I click on an element <AllNumericValueXpath> with xpath

          ########################## Making a selection in B2 Specific #############################
    Then I wait for the element to be visible
    When I click on an element <B2AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB2AllNumericDrpdownXpath> with xpath
    When I click on the <B2NumericTextboxTagtype> with the text <B2NumericTextboxText>
    When I click on an element <CloseAllB2NumericXpath> with xpath
    When I click on an element <ExpandAllB2NumericXpath> with xpath
    When I click on an element <B2NumericValueXpath> with xpath

          ################### Making Selection in B3 Module ########################################
    Then I wait for the element to be visible
    When I click on an element <B3AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB3AllNumericDrpdownXpath> with xpath
    When I click on the <B3NumericTextboxTagtype> with the text <B3NumericTextboxText>
    When I click on an element <CloseAllB3NumericXpath> with xpath
    When I click on an element <ExpandAllB3NumericXpath> with xpath
    When I click on an element <B3NumericValueXpath> with xpath

          ######################### Making Selection in B4 Inherent ################################
    Then I wait for the element to be visible
    When I click on an element <B4AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB4AllNumericDrpdownXpath> with xpath
    When I click on the <B4NumericTextboxTagtype> with the text <B4NumericTextboxText>
    When I click on an element <CloseAllB4NumericXpath> with xpath
    When I click on an element <ExpandAllB4NumericXpath> with xpath
    When I click on an element <B4NumericValueXpath> with xpath
    Then I wait for the element to be visible

          ########################### Module A2 - Numeric Text Area ##################################
          ########################### Making selection in B1 All #####################################
    Then I wait for the element to be visible
    When I click on an element <B1AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB1AllTextareaDrpdownXpath> with xpath
    When I click on the <B1TextareaTagtype> with the text <B1TextareaText>
    When I click on an element <CloseAllB1TextAreaXpath> with xpath
    When I click on an element <ExpandAllB1TextAreaXpath> with xpath
    When I click on an element <B1TextAreaValueXpath> with xpath

          ############################ Making selection in B2 Specific ###############################
    Then I wait for the element to be visible
    When I click on an element <B2AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB2AllTextareaDrpdownXpath> with xpath
    When I click on the <B2TextareaTagtype> with the text <B2TextareaText>
    When I click on an element <CloseSpecificB2TextAreaXpath> with xpath
    When I click on an element <ExpandSpecificB2TextAreaXpath> with xpath
    When I click on an element <B2TextAreaValueXpath> with xpath

          ############################ Making selection in B3 Module #################################
    Then I wait for the element to be visible
    When I click on an element <B3AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB3AllTextareaDrpdownXpath> with xpath
    When I click on the <B3TextareaTagtype> with the text <B3TextareaText>
    When I click on an element <CloseSpecificB3TextAreaXpath> with xpath
    When I click on an element <ExpandSpecificB3TextAreaXpath> with xpath
    When I click on an element <B3TextAreaValueXpath> with xpath

          ############################ Making selection in B4 Inherent ###############################
    Then I wait for the element to be visible
    When I click on an element <B4AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB4AllTextareaDrpdownXpath> with xpath
    When I click on the <B4TextareaTagtype> with the text <B4TextareaText>
    When I click on an element <CloseSpecificB4TextAreaXpath> with xpath
    When I click on an element <ExpandSpecificB4TextAreaXpath> with xpath
    When I click on an element <B4TextAreaValueXpath> with xpath
    And I click on an element <SaveXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | ModuleA2                                 | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | ModuleSourcesID                          | AllTextAreaDropdwnXpath                                                                                                                     | ExpandAllTextAreaA1Xpath                                  | AllTextAreaDrpdwnTagtype | AllTextAreaDrpdwnText | ExpandA1AllTextAreaXpath                                                                                                                        | AllA1B1TextAreaValueXpath                                                                                                                                  | CloseAllB1Xpath                                                                                                                              | SpecificDrpDwnXpath                                                                                                                         | ExpandSpecificTextArea                                    | SpecificDrpdwnValueTagtype | SpecificDrpdwnValueText | ExpandA1SpecificXpath                                                                                                                           | SpecificA1B2ValueXpath                                                                                                                                     | ModuleTextAreaDrpdwnXpath                                                                                                                   | ExpandModuleTextAreaA1Xpath                               | ModuleTextAreaTagType | ModuleTextAreaText | CloseB3ModuleXpath                                                                                                                           | ExpandB3ModuleXpath                                                                                                                             | A2B3ModuleValueXpath                                                                                                                                       | B4EnheritDrpdwnXpath                                                                                                                   | B4Enherittagtype | B4Enherittext | ExpandB4EnheritXpath                                      | CloseB2SpecificXpath                                                                                                                         | CloseB4EnheritXpath                                                                                                                          | ExpandB4A2EnheritXpath                                                                                                                          | A2B4ValueXpath                                                                                                                                             | B1AllNumericDrpdownXpath                                                                                                                     | ExpandB1AllNumericDrpdownXpath                            | ModuleA2NumericTextboxTagtype | AllB2NumericTextboxText | CloseAllB1NumericXpath                                                                                                                       | ExpandAllNumericXpath                                                                                                                           | AllNumericValueXpath                                                                                                                                       | B2AllNumericDrpdownXpath                                                                                                                     | ExpandB2AllNumericDrpdownXpath                            | B2NumericTextboxTagtype | B2NumericTextboxText | CloseAllB2NumericXpath                                                                                                                       | ExpandAllB2NumericXpath                                                                                                                         | B2NumericValueXpath                                                                                                                                        | B3AllNumericDrpdownXpath                                                                                                                     | ExpandB3AllNumericDrpdownXpath                            | B3NumericTextboxTagtype | B3NumericTextboxText | CloseAllB3NumericXpath                                                                                                                       | ExpandAllB3NumericXpath                                                                                                                         | B3NumericValueXpath                                                                                                                                        | B4AllNumericDrpdownXpath                                                                                                                     | ExpandB4AllNumericDrpdownXpath                            | B4NumericTextboxTagtype | B4NumericTextboxText | CloseAllB4NumericXpath                                                                                                                       | ExpandAllB4NumericXpath                                                                                                                         | B4NumericValueXpath                                                                                                                                        | B1AllTextAreaDrpdownXpath                                                                                                                    | ExpandB1AllTextareaDrpdownXpath                           | B1TextareaTagtype | B1TextareaText | CloseAllB1TextAreaXpath                                                                                                                      | ExpandAllB1TextAreaXpath                                                                                                                        | B1TextAreaValueXpath                                                                                                                                       | B2AllTextAreaDrpdownXpath                                                                                                               | ExpandB2AllTextareaDrpdownXpath                           | B2TextareaTagtype | B2TextareaText | CloseSpecificB2TextAreaXpath                                                                                                                 | ExpandSpecificB2TextAreaXpath                                                                                                                   | B2TextAreaValueXpath                                                                                                                                       | B3AllTextAreaDrpdownXpath                                                                                                                    | ExpandB3AllTextareaDrpdownXpath                           | B3TextareaTagtype | B3TextareaText | CloseSpecificB3TextAreaXpath                                                                                                                 | ExpandSpecificB3TextAreaXpath                                                                                                                   | B3TextAreaValueXpath                                                                                                                                       | B4AllTextAreaDrpdownXpath                                                                                                                    | ExpandB4AllTextareaDrpdownXpath                           | B4TextareaTagtype | B4TextareaText | CloseSpecificB4TextAreaXpath                                                                                                                 | ExpandSpecificB4TextAreaXpath                                                                                                                   | B4TextAreaValueXpath                                                                                                                                       | SaveXpath                                                              |
      | tab_9C510EF3-B217-4AEC-A83E-92B4C95DEDE3 | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[6]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[33]/ul[1]/ul/li/i | a                        | A2 B1                 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[34]/ul[1]/ul/li/i | a                          | A2 B2                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[8]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[35]/ul[1]/ul/li/i | a                     | A2 B3              | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[9]/div[1]/a/span[2] | a                | A2 B4         | /html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[37]/ul[1]/ul/li/i | a                             | 21                      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[38]/ul[1]/ul/li/i | a                       | 22                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[39]/ul[1]/ul/li/i | a                       | 23                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[40]/ul[1]/ul/li/i | a                       | 24                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[41]/ul[1]/ul/li/i | a                 | Test A2 B1     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[25]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[42]/ul[1]/ul/li/i | a                 | Test A2 B2     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[43]/ul[1]/ul/li/i | a                 | Test A2 B3     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[27]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[44]/ul[1]/ul/li/i | a                 | Test A2 B4     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

        ######################################## MODULE A3 Module Control ##################################

  Scenario Outline: Module A3 Module Control

    Then I wait for the element to be visible
    When I switch to an iframe
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleC1ID> Button with ID
    Then I wait for the element to be visible
    And I click the <AddNewBtnID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleSourcesID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <ModuleA3> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

          ########################### Module A3 - Textbox ###########################################
          ########################### Making selection in B1 All ####################################
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    When I click on an element <B1AllTextboxDrpdownXpath> with xpath
    When I click on an element <ExpandB1AllTextboxDrpdownXpath> with xpath
    When I click on the <B1TextboxTagtype> with the text <B1TextboxText>
    When I click on an element <CloseB1TextboxXpath> with xpath
    When I click on an element <ExpandB1TextboxXpath> with xpath
    When I click on an element <B1TextboxValueXpath> with xpath

          ########################### Making selection in B2 Specific ##############################
    Then I wait for the element to be visible
    When I click on an element <B2AllTextboxDrpdownXpath> with xpath
    When I click on an element <ExpandB2AllTextboxDrpdownXpath> with xpath
    When I click on the <B2TextboxTagtype> with the text <B2TextboxText>
    When I click on an element <CloseB2TextboxXpath> with xpath
    When I click on an element <ExpandB2TextboxXpath> with xpath
    When I click on an element <B2TextboxValueXpath> with xpath

          ########################### Making selection in B3 Module ###############################
    Then I wait for the element to be visible
    When I click on an element <B3AllTextboxDrpdownXpath> with xpath
    When I click on an element <ExpandB3AllTextboxDrpdownXpath> with xpath
    When I click on the <B3TextboxTagtype> with the text <B3TextboxText>
    When I click on an element <CloseB3TextboxXpath> with xpath
    When I click on an element <ExpandB3TextboxXpath> with xpath
    When I click on an element <B3TextboxValueXpath> with xpath

          ########################### Making selection in B4 Inherit ###############################
    Then I wait for the element to be visible
    When I click on an element <B4AllTextboxDrpdownXpath> with xpath
    When I click on an element <ExpandB4AllTextboxDrpdownXpath> with xpath
    When I click on the <B4TextboxTagtype> with the text <B4TextboxText>
    When I click on an element <CloseB4TextboxXpath> with xpath
    When I click on an element <ExpandB4TextboxXpath> with xpath
    When I click on an element <B4TextboxValueXpath> with xpath
    Then I wait for the element to be visible

          ########################### Module A3 - Numeric Textbox #################################
          ########################### Making selection in B1 All ##################################
    Then I wait for the element to be visible
    When I click on an element <B1AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB1AllNumericDrpdownXpath> with xpath
    When I click on the <B1NumericTagtype> with the text <B1NumericText>
    When I click on an element <CloseB1NumericXpath> with xpath
    When I click on an element <ExpandB1NumericXpath> with xpath
    When I click on an element <B1NumericValueXpath> with xpath

          ########################### Making selection in B2 Specific #############################
    Then I wait for the element to be visible
    When I click on an element <B2AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB2AllNumericDrpdownXpath> with xpath
    When I click on the <B2NumericTagtype> with the text <B2NumericText>
    When I click on an element <CloseB2NumericXpath> with xpath
    When I click on an element <ExpandB2NumericXpath> with xpath
    When I click on an element <B2NumericValueXpath> with xpath

          ########################### Making selection in B3 Module ##############################
    Then I wait for the element to be visible
    When I click on an element <B3AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB3AllNumericDrpdownXpath> with xpath
    When I click on the <B3NumericTagtype> with the text <B3NumericText>
    When I click on an element <CloseB3NumericXpath> with xpath
    When I click on an element <ExpandB3NumericXpath> with xpath
    When I click on an element <B3NumericValueXpath> with xpath

          ########################### Making selection in B3 Inherit #############################
    Then I wait for the element to be visible
    When I click on an element <B4AllNumericDrpdownXpath> with xpath
    When I click on an element <ExpandB4AllNumericDrpdownXpath> with xpath
    When I click on the <B4NumericTagtype> with the text <B4NumericText>
    When I click on an element <CloseB4NumericXpath> with xpath
    When I click on an element <ExpandB4NumericXpath> with xpath
    When I click on an element <B4NumericValueXpath> with xpath
    Then I wait for the element to be visible

          ########################### Module A3 - Numeric Text Area ############################
          ########################### Making selection in B1 All ###############################
    Then I wait for the element to be visible
    When I click on an element <B1AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB1TextAreaDrpdownXpath> with xpath
    When I click on the <B1TextAreaTagtype> with the text <B1TextAreaText>
    When I click on an element <CloseB1TextAreaXpath> with xpath
    When I click on an element <ExpandB1TextAreaXpath> with xpath
    When I click on an element <B1TextAreaValueXpath> with xpath

          ########################### Making selection in B2 Specific ##########################
    Then I wait for the element to be visible
    When I click on an element <B2AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB2TextAreaDrpdownXpath> with xpath
    When I click on the <B2TextAreaTagtype> with the text <B2TextAreaText>
    When I click on an element <CloseB2TextAreaXpath> with xpath
    When I click on an element <ExpandB2TextAreaXpath> with xpath
    When I click on an element <B2TextAreaValueXpath> with xpath

          ########################### Making selection in B3 Module ############################
    Then I wait for the element to be visible
    When I click on an element <B3AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB3TextAreaDrpdownXpath> with xpath
    When I click on the <B3TextAreaTagtype> with the text <B3TextAreaText>
    When I click on an element <CloseB3TextAreaXpath> with xpath
    When I click on an element <ExpandB3TextAreaXpath> with xpath
    When I click on an element <B3TextAreaValueXpath> with xpath

          ########################### Making selection in B4 Inherit ###########################
    Then I wait for the element to be visible
    When I click on an element <B4AllTextAreaDrpdownXpath> with xpath
    When I click on an element <ExpandB4TextAreaDrpdownXpath> with xpath
    When I click on the <B4TextAreaTagtype> with the text <B4TextAreaText>
    When I click on an element <CloseB4TextAreaXpath> with xpath
    When I click on an element <ExpandB4TextAreaXpath> with xpath
    When I click on an element <B4TextAreaValueXpath> with xpath
    And I click on an element <SaveXpath> with xpath
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible

    Examples:
      | SourcesID                                    | ModuleC1ID                                   | AddNewBtnID  | ModuleSourcesID                          | ModuleA3                                 | B1AllTextboxDrpdownXpath                                                                                                                    | ExpandB1AllTextboxDrpdownXpath                            | B1TextboxTagtype | B1TextboxText | CloseB1TextboxXpath                                                                                                                          | ExpandB1TextboxXpath                                                                                                                            | B1TextboxValueXpath                                                                                                                                        | B2AllTextboxDrpdownXpath                                                                                                                    | ExpandB2AllTextboxDrpdownXpath                            | B2TextboxTagtype | B2TextboxText | CloseB2TextboxXpath                                                                                                                          | ExpandB2TextboxXpath                                                                                                                            | B2TextboxValueXpath                                                                                                                                        | B3AllTextboxDrpdownXpath                                                                                                                    | ExpandB3AllTextboxDrpdownXpath                            | B3TextboxTagtype | B3TextboxText | CloseB3TextboxXpath                                                                                                                          | ExpandB3TextboxXpath                                                                                                                            | B3TextboxValueXpath                                                                                                                                        | B4AllTextboxDrpdownXpath                                                                                                                    | ExpandB4AllTextboxDrpdownXpath                            | B4TextboxTagtype | B4TextboxText | CloseB4TextboxXpath                                                                                                                          | ExpandB4TextboxXpath                                                                                                                            | B4TextboxValueXpath                                                                                                                                        | B1AllNumericDrpdownXpath                                                                                                                     | ExpandB1AllNumericDrpdownXpath                            | B1NumericTagtype | B1NumericText | CloseB1NumericXpath                                                                                                                          | ExpandB1NumericXpath                                                                                                                            | B1NumericValueXpath                                                                                                                                        | B2AllNumericDrpdownXpath                                                                                                                     | ExpandB2AllNumericDrpdownXpath                            | B2NumericTagtype | B2NumericText | CloseB2NumericXpath                                                                                                                          | ExpandB2NumericXpath                                                                                                                            | B2NumericValueXpath                                                                                                                                        | B3AllNumericDrpdownXpath                                                                                                                     | ExpandB3AllNumericDrpdownXpath                            | B3NumericTagtype | B3NumericText | CloseB3NumericXpath                                                                                                                          | ExpandB3NumericXpath                                                                                                                            | B3NumericValueXpath                                                                                                                                        | B4AllNumericDrpdownXpath                                                                                                                     | ExpandB4AllNumericDrpdownXpath                            | B4NumericTagtype | B4NumericText | CloseB4NumericXpath                                                                                                                          | ExpandB4NumericXpath                                                                                                                            | B4NumericValueXpath                                                                                                                                        | B1AllTextAreaDrpdownXpath                                                                                                                    | ExpandB1TextAreaDrpdownXpath                              | B1TextAreaTagtype | B1TextAreaText | CloseB1TextAreaXpath                                                                                                                         | ExpandB1TextAreaXpath                                                                                                                           | B1TextAreaValueXpath                                                                                                                                       | B2AllTextAreaDrpdownXpath                                                                                                                    | ExpandB2TextAreaDrpdownXpath                              | B2TextAreaTagtype | B2TextAreaText | CloseB2TextAreaXpath                                                                                                                         | ExpandB2TextAreaXpath                                                                                                                           | B2TextAreaValueXpath                                                                                                                                       | B3AllTextAreaDrpdownXpath                                                                                                                    | ExpandB3TextAreaDrpdownXpath                              | B3TextAreaTagtype | B3TextAreaText | CloseB3TextAreaXpath                                                                                                                         | ExpandB3TextAreaXpath                                                                                                                           | B3TextAreaValueXpath                                                                                                                                       | B4AllTextAreaDrpdownXpath                                                                                                                    | ExpandB4TextAreaDrpdownXpath                              | B4TextAreaTagtype | B4TextAreaText | CloseB4TextAreaXpath                                                                                                                         | ExpandB4TextAreaXpath                                                                                                                           | B4TextAreaValueXpath                                                                                                                                       | SelectAllB2TextArea                                                                                                                          | SaveXpath                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_c180ff41-48e1-4c8c-8436-700c2c87c169 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | tab_3D7650BB-0BC2-4974-9FD6-D7A3D288EF4C | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[6]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[45]/ul[1]/ul/li/i | a                | A3 B1         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[46]/ul[1]/ul/li/i | a                | A3 B2         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[8]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[47]/ul[1]/ul/li/i | a                | A3 B3         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[9]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[48]/ul[1]/ul/li/i | a                | A3 B4         | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[49]/ul[1]/ul/li/i | a                | 31            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[50]/ul[1]/ul/li/i | a                | 32            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[51]/ul[1]/ul/li/i | a                | 33            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[52]/ul[1]/ul/li/i | a                | 34            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[53]/ul[1]/ul/li/i | a                 | Test A3 B1     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[54]/ul[1]/ul/li/i | a                 | Test A3 B2     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[55]/ul[1]/ul/li/i | a                 | Test A3 B3     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[27]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[56]/ul[1]/ul/li/i | a                 | Test A3 B4     | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |