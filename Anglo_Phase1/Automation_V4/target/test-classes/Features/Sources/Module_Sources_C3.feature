@ModuleSourcesC3

Feature: Module Sources C3

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
      | Isometrixsystem | txtUsername | 1   | txtPassword | btnLoginSubmit |


  Scenario Outline: Navigate to C3

    When I switch to an iframe
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <ModuleC3ID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <AddNewBtnID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible


    Examples:
      | SourcesID                                    | ModuleC3ID                                   | AddNewBtnID  | ModuleSourcesID                          |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_db02101b-bb91-46d0-bede-b68bd3c93a06 | btnActAddNew | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 |


  Scenario Outline:   Scenario Outline:Module A1 -B1 All (Textbox)

    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    And I click the <ModuleSourcesID> Button with ID
    Then I wait for the element to be visible
    Then I wait for the element to be visible
    Then I click on an element <B1AllTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllTextboxTagtype> with the text <B1AllTextboxText>
    And I click on an element <CloseB1AllTextboxXpath> with xpath
    And I click on an element <ExpandB1NumericXpath> with xpath
    And I click on an element <B1NumericValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | ModuleSourcesID                          | B1AllTextboxDrpdownXpath                                                      | ExpandB1AllTextboxDrpdownXpath                    | B1AllTextboxTagtype | B1AllTextboxText | CloseB1AllTextboxXpath                                                        | B1TextboxXpath                                                                | ExpandB1NumericXpath                              | B1NumericValueXpath                                         |
      | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | //*[@id="control_7D23DE46-737B-4525-8EA1-972181AE2CC4"]/div[1]/a/span[2]/b[1] | //*[@id="46e209ed-b8a6-4c00-b7dd-96a67b98f2c1"]/i | a                   | A1 B1            | //*[@id="control_6A511F4E-9983-4173-8314-878A4D0F8531"]/div[1]/a/span[2]/b[2] | //*[@id="control_6A511F4E-9983-4173-8314-878A4D0F8531"]/div[1]/a/span[2]/b[2] | //*[@id="46e209ed-b8a6-4c00-b7dd-96a67b98f2c1"]/i | //*[@id="7288358a-149a-4013-8dbc-2afccdae753b_anchor"]/i[1] |

  Scenario Outline:Module A1 -B2 Specific (Textbox)

    Then I click on an element <B2SpecificTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxDrpdownXpath> with xpath
    Then I click on the <B2SpecificTextboxTagtype> with the text <B2SpecificTextboxText>
    And I click on an element <CloseB2SpecificTextboxXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxXpath> with xpath
    And I click on an element <B2SpecificTextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | B2SpecificTextboxDrpdownXpath                                                                                                               | ExpandB2SpecificTextboxDrpdownXpath                       | B2SpecificTextboxTagtype | B2SpecificTextboxText | CloseB2SpecificTextboxXpath                                                                                                                  | ExpandB2SpecificTextboxXpath                                                                                                                    | B2SpecificTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[22]/ul[1]/ul/li/i | a                        | A1 B2                 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B3 Module (Textbox)

    Then I click on an element <B3ModuleTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxDrpdownXpath> with xpath
    Then I click on the <B3ModuleTextboxTagtype> with the text <B3ModuleTextboxText>
    And I click on an element <CloseB3ModuleTextboxXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxXpath> with xpath
    And I click on an element <B3ModuleTextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | B3ModuleTextboxDrpdownXpath                                                                                                            | ExpandB3ModuleTextboxDrpdownXpath                         | B3ModuleTextboxTagtype | B3ModuleTextboxText | CloseB3ModuleTextboxXpath                                                                                                                    | ExpandB3ModuleTextboxXpath                                                                                                                      | B3ModuleTextboxValueXpath                                                                                                                                  |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[8]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[23]/ul[1]/ul/li/i | a                      | A1 B3               | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B4 Inherit (Textbox)

    Then I click on an element <B4EnheritTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandEnheritTextboxDrpdownXpath> with xpath
    Then I click on the <B4EnheritTextboxTagtype> with the text <B4EnheritTextboxText>
    And I click on an element <CloseB4EnheritTextboxXpath> with xpath
    And I click on an element <ExpandB4EnheritTextboxXpath> with xpath
    And I click on an element <B4EnheritTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4EnheritTextboxDrpdownXpath                                                                                                                | ExpandEnheritTextboxDrpdownXpath                          | B4EnheritTextboxTagtype | B4EnheritTextboxText | CloseB4EnheritTextboxXpath                                                                                                                   | ExpandB4EnheritTextboxXpath                                                                                                                     | B4EnheritTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[9]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[24]/ul[1]/ul/li/i | a                       | A1 B4                | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

#
  Scenario Outline:Module A1 -B1 All  (Numeric Textbox)

    Then I click on an element <B1AllNumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllNumericTextboxTagtype> with the text <B1AllNumericTextboxText>
    And I click on an element <CloseB1AllNumericTextboxXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxXpath> with xpath
    And I click on an element <B1AllNumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1AllNumericTextboxDrpdownXpath                                                                                                              | ExpandB1AllNumericTextboxDrpdownXpath                     | B1AllNumericTextboxTagtype | B1AllNumericTextboxText | CloseB1AllNumericTextboxXpath                                                                                                                | ExpandB1AllNumericTextboxXpath                                                                                                                  | B1AllNumericTextboxValueXpath                                                                                                                              |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[25]/ul[1]/ul/li/i | a                          | 11                      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B2 Specific  (Numeric Textbox)

    Then I click on an element <B2NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B2NumericTextboxTagtype> with the text <B2NumericTextboxText>
    And I click on an element <CloseB2NumericTextboxXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxXpath> with xpath
    And I click on an element <B2NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2NumericTextboxDrpdownXpath                                                                                                                 | ExpandB2NumericTextboxDrpdownXpath                        | B2NumericTextboxTagtype | B2NumericTextboxText | CloseB2NumericTextboxXpath                                                                                                                   | ExpandB2NumericTextboxXpath                                                                                                                     | B2NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[26]/ul[1]/ul/li/i | a                       | 12                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B3 Module  (Numeric Textbox)

    Then I click on an element <B3NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B3NumericTextboxTagtype> with the text <B3NumericTextboxText>
    And I click on an element <CloseB3NumericTextboxXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxXpath> with xpath
    And I click on an element <B3NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3NumericTextboxDrpdownXpath                                                                                                                 | ExpandB3NumericTextboxDrpdownXpath                        | B3NumericTextboxTagtype | B3NumericTextboxText | CloseB3NumericTextboxXpath                                                                                                                   | ExpandB3NumericTextboxXpath                                                                                                                     | B3NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[27]/ul[1]/ul/li/i | a                       | 13                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B4 Enherit  (Numeric Textbox)

    Then I click on an element <B4NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B4NumericTextboxTagtype> with the text <B4NumericTextboxText>
    And I click on an element <CloseB4NumericTextboxXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxXpath> with xpath
    And I click on an element <B4NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4NumericTextboxDrpdownXpath                                                                                                                 | ExpandB4NumericTextboxDrpdownXpath                        | B4NumericTextboxTagtype | B4NumericTextboxText | CloseB4NumericTextboxXpath                                                                                                                   | ExpandB4NumericTextboxXpath                                                                                                                     | B4NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[28]/ul[1]/ul/li/i | a                       | 14                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B1 All  (TextArea)

    Then I click on an element <B1TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB1TextAreaDrpdownXpath> with xpath
    Then I click on the <B1TextAreaTextboxTagtype> with the text <B1TextAreaTextboxText>
    And I click on an element <CloseB1TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB1TextAreaTextboxXpath> with xpath
    And I click on an element <B1TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1TextAreaDrpdownXpath                                                                                                                       | ExpandB1TextAreaDrpdownXpath                              | B1TextAreaTextboxTagtype | B1TextAreaTextboxText | CloseB1TextAreaTextboxXpath                                                                                                                  | ExpandB1TextAreaTextboxXpath                                                                                                                    | B1TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li/i | a                        | Test A1 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B2 Specific  (TextArea)

    Then I click on an element <B2TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB2TextAreaDrpdownXpath> with xpath
    Then I click on the <B2TextAreaTextboxTagtype> with the text <B2TextAreaTextboxText>
    And I click on an element <CloseB2TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB2TextAreaTextboxXpath> with xpath
    And I click on an element <B2TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2TextAreaDrpdownXpath                                                                                                                       | ExpandB2TextAreaDrpdownXpath                              | B2TextAreaTextboxTagtype | B2TextAreaTextboxText | CloseB2TextAreaTextboxXpath                                                                                                                  | ExpandB2TextAreaTextboxXpath                                                                                                                    | B2TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[30]/ul[1]/ul/li/i | a                        | Test A1 B2            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B3 Module  (TextArea)

    Then I click on an element <B3TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB3TextAreaDrpdownXpath> with xpath
    Then I click on the <B3TextAreaTextboxTagtype> with the text <B3TextAreaTextboxText>
    And I click on an element <CloseB3TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB3TextAreaTextboxXpath> with xpath
    And I click on an element <B3TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3TextAreaDrpdownXpath                                                                                                                       | ExpandB3TextAreaDrpdownXpath                              | B3TextAreaTextboxTagtype | B3TextAreaTextboxText | CloseB3TextAreaTextboxXpath                                                                                                                  | ExpandB3TextAreaTextboxXpath                                                                                                                    | B3TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[31]/ul[1]/ul/li/i | a                        | Test A1 B3            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B4 Enherit  (TextArea)

    Then I click on an element <B4TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB4TextAreaDrpdownXpath> with xpath
    Then I click on the <B4TextAreaTextboxTagtype> with the text <B4TextAreaTextboxText>
    And I click on an element <CloseB4TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB4TextAreaTextboxXpath> with xpath
    And I click on an element <B4TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4TextAreaDrpdownXpath                                                                                                                       | ExpandB4TextAreaDrpdownXpath                              | B4TextAreaTextboxTagtype | B4TextAreaTextboxText | CloseB4TextAreaTextboxXpath                                                                                                                  | ExpandB4TextAreaTextboxXpath                                                                                                                    | B4TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[27]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[32]/ul[1]/ul/li/i | a                        | Test A1 B4            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[1]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:   Scenario Outline:Module A2 -B1 All (Textbox)

    When I click the <ModulesourcesID> Button with ID
    And I click on the <ModuleA2SpecificTagtype> with the text <ModuleA2SpecificText>
    Then I click on an element <B1AllTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllTextboxTagtype> with the text <B1AllTextboxText>
    And I click on an element <CloseB1AllTextboxXpath> with xpath
    And I click on an element <ExpandB1TextboxXpath> with xpath
    And I click on an element <B1TextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | ModulesourcesID                          | ModuleA2SpecificTagtype | ModuleA2SpecificText | B1AllTextboxDrpdownXpath                                                                                                                    | ExpandB1AllTextboxDrpdownXpath                            | B1AllTextboxTagtype | B1AllTextboxText | CloseB1AllTextboxXpath                                                                                                                       | ExpandB1TextboxXpath                                                                                                                            | B1TextboxValueXpath                                                                                                                                        |
      | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | div                     | Module A2 - Specific | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[6]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[33]/ul[1]/ul/li/i | a                   | A2 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[10]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B2 Specific (Textbox)

    Then I click on an element <B2SpecificTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxDrpdownXpath> with xpath
    Then I click on the <B2SpecificTextboxTagtype> with the text <B2SpecificTextboxText>
    And I click on an element <CloseB2SpecificTextboxXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxXpath> with xpath
    And I click on an element <B2SpecificTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2SpecificTextboxDrpdownXpath                                                                                                               | ExpandB2SpecificTextboxDrpdownXpath                       | B2SpecificTextboxTagtype | B2SpecificTextboxText | CloseB2SpecificTextboxXpath                                                                                                                  | ExpandB2SpecificTextboxXpath                                                                                                                    | B2SpecificTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[34]/ul[1]/ul/li/i | a                        | A2 B2                 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B3 Module (Textbox)

    Then I click on an element <B3ModuleTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxDrpdownXpath> with xpath
    Then I click on the <B3ModuleTextboxTagtype> with the text <B3ModuleTextboxText>
    And I click on an element <CloseB3ModuleTextboxXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxXpath> with xpath
    And I click on an element <B3ModuleTextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | B3ModuleTextboxDrpdownXpath                                                                                                                 | ExpandB3ModuleTextboxDrpdownXpath                         | B3ModuleTextboxTagtype | B3ModuleTextboxText | CloseB3ModuleTextboxXpath                                                                                                                    | ExpandB3ModuleTextboxXpath                                                                                                                      | B3ModuleTextboxValueXpath                                                                                                                                  |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[8]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[35]/ul[1]/ul/li/i | a                      | A2 B3               | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A2 -B4 Inherit (Textbox)

    Then I click on an element <B4EnheritTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandEnheritTextboxDrpdownXpath> with xpath
    Then I click on the <B4EnheritTextboxTagtype> with the text <B4EnheritTextboxText>
    And I click on an element <CloseB4EnheritTextboxXpath> with xpath
    And I click on an element <ExpandB4EnheritTextboxXpath> with xpath
    And I click on an element <B4EnheritTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4EnheritTextboxDrpdownXpath                                                                                                           | ExpandEnheritTextboxDrpdownXpath                          | B4EnheritTextboxTagtype | B4EnheritTextboxText | CloseB4EnheritTextboxXpath                                                                                                                   | ExpandB4EnheritTextboxXpath                                                                                                                     | B4EnheritTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[9]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li/i | a                       | A2 B4                | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B1 All  (Numeric Textbox)

    Then I click on an element <B1AllNumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllNumericTextboxTagtype> with the text <B1AllNumericTextboxText>
    And I click on an element <CloseB1AllNumericTextboxXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxXpath> with xpath
    And I click on an element <B1AllNumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1AllNumericTextboxDrpdownXpath                                                                                                              | ExpandB1AllNumericTextboxDrpdownXpath                     | B1AllNumericTextboxTagtype | B1AllNumericTextboxText | CloseB1AllNumericTextboxXpath                                                                                                                | ExpandB1AllNumericTextboxXpath                                                                                                                  | B1AllNumericTextboxValueXpath                                                                                                                              |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[37]/ul[1]/ul/li/i | a                          | 21                      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B2 Specific  (Numeric Textbox)

    Then I click on an element <B2NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B2NumericTextboxTagtype> with the text <B2NumericTextboxText>
    And I click on an element <CloseB2NumericTextboxXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxXpath> with xpath
    And I click on an element <B2NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2NumericTextboxDrpdownXpath                                                                                                                 | ExpandB2NumericTextboxDrpdownXpath                        | B2NumericTextboxTagtype | B2NumericTextboxText | CloseB2NumericTextboxXpath                                                                                                                   | ExpandB2NumericTextboxXpath                                                                                                                     | B2NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[38]/ul[1]/ul/li/i | a                       | 22                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B3 Module  (Numeric Textbox)

    Then I click on an element <B3NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B3NumericTextboxTagtype> with the text <B3NumericTextboxText>
    And I click on an element <CloseB3NumericTextboxXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxXpath> with xpath
    And I click on an element <B3NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3NumericTextboxDrpdownXpath                                                                                                                 | ExpandB3NumericTextboxDrpdownXpath                        | B3NumericTextboxTagtype | B3NumericTextboxText | CloseB3NumericTextboxXpath                                                                                                                   | ExpandB3NumericTextboxXpath                                                                                                                     | B3NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[39]/ul[1]/ul/li/i | a                       | 23                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B4 Inherit  (Numeric Textbox)

    Then I click on an element <B4NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B4NumericTextboxTagtype> with the text <B4NumericTextboxText>
    And I click on an element <CloseB4NumericTextboxXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxXpath> with xpath
    And I click on an element <B4NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4NumericTextboxDrpdownXpath                                                                                                                 | ExpandB4NumericTextboxDrpdownXpath                        | B4NumericTextboxTagtype | B4NumericTextboxText | CloseB4NumericTextboxXpath                                                                                                                   | ExpandB4NumericTextboxXpath                                                                                                                     | B4NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[40]/ul[1]/ul/li/i | a                       | 24                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B1 All  (TextArea)

    Then I click on an element <B1TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB1TextAreaDrpdownXpath> with xpath
    Then I click on the <B1TextAreaTextboxTagtype> with the text <B1TextAreaTextboxText>
    And I click on an element <CloseB1TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB1TextAreaTextboxXpath> with xpath
    And I click on an element <B1TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1TextAreaDrpdownXpath                                                                                                                       | ExpandB1TextAreaDrpdownXpath                              | B1TextAreaTextboxTagtype | B1TextAreaTextboxText | CloseB1TextAreaTextboxXpath                                                                                                                  | ExpandB1TextAreaTextboxXpath                                                                                                                    | B1TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[41]/ul[1]/ul/li/i | a                        | Test A2 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B2 Specific  (TextArea)

    Then I click on an element <B2TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB2TextAreaDrpdownXpath> with xpath
    Then I click on the <B2TextAreaTextboxTagtype> with the text <B2TextAreaTextboxText>
    And I click on an element <CloseB2TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB2TextAreaTextboxXpath> with xpath
    And I click on an element <B2TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2TextAreaDrpdownXpath                                                                                                                       | ExpandB2TextAreaDrpdownXpath                              | B2TextAreaTextboxTagtype | B2TextAreaTextboxText | CloseB2TextAreaTextboxXpath                                                                                                                  | ExpandB2TextAreaTextboxXpath                                                                                                                    | B2TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[42]/ul[1]/ul/li/i | a                        | Test A2 B2            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B3 Module  (TextArea)

    Then I click on an element <B3TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB3TextAreaDrpdownXpath> with xpath
    Then I click on the <B3TextAreaTextboxTagtype> with the text <B3TextAreaTextboxText>
    And I click on an element <CloseB3TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB3TextAreaTextboxXpath> with xpath
    And I click on an element <B3TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3TextAreaDrpdownXpath                                                                                                                  | ExpandB3TextAreaDrpdownXpath                              | B3TextAreaTextboxTagtype | B3TextAreaTextboxText | CloseB3TextAreaTextboxXpath                                                                                                                  | ExpandB3TextAreaTextboxXpath                                                                                                                    | B3TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[26]/div[1]/a/span[2] | /html/body/div[1]/div[3]/div/div[2]/div[43]/ul[1]/ul/li/i | a                        | Test A2 B3            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A2 -B4 Inherit  (TextArea)

    Then I click on an element <B4TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB4TextAreaDrpdownXpath> with xpath
    Then I click on the <B4TextAreaTextboxTagtype> with the text <B4TextAreaTextboxText>
    And I click on an element <CloseB4TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB4TextAreaTextboxXpath> with xpath
    And I click on an element <B4TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4TextAreaDrpdownXpath                                                                                                                       | ExpandB4TextAreaDrpdownXpath                              | B4TextAreaTextboxTagtype | B4TextAreaTextboxText | CloseB4TextAreaTextboxXpath                                                                                                                  | ExpandB4TextAreaTextboxXpath                                                                                                                    | B4TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[27]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[44]/ul[1]/ul/li/i | a                        | Test A2 B4            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[2]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:   Scenario Outline:Module A3 -B1 All (Textbox)

    And I click the <ModuleSourcesID> Button with ID
    And I click on the <ModuleA2SpecificTagtype> with the text <ModuleA2SpecificText>
    Then I click on an element <B1AllTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllTextboxTagtype> with the text <B1AllTextboxText>
    And I click on an element <CloseB1AllTextboxXpath> with xpath
    And I click on an element <ExpandB1NumericXpath> with xpath
    And I click on an element <B1NumericValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | ModuleA2SpecificTagtype | ModuleA2SpecificText       | ModuleSourcesID                          | B1AllTextboxDrpdownXpath                                                      | ExpandB1AllTextboxDrpdownXpath                            | B1AllTextboxTagtype | B1AllTextboxText | CloseB1AllTextboxXpath                                                                                                                       | B1TextboxXpath                                                                | ExpandB1NumericXpath                                                                                                                            | B1NumericValueXpath                                                                                                                                        |
      | div                     | Module A3 - Module Control | tab_B6FDEB7C-B09B-46D0-8302-FE1AEFC56742 | //*[@id="control_7676DC07-AF35-4D30-8DDF-F5ACCFE44E62"]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[45]/ul[1]/ul/li/i | a                   | A3 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/a/span[2]/b[2] | //*[@id="control_6A511F4E-9983-4173-8314-878A4D0F8531"]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[10]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |
##
  Scenario Outline:Module A3 -B2 Specific (Textbox)

    Then I click on an element <B2SpecificTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxDrpdownXpath> with xpath
    Then I click on the <B2SpecificTextboxTagtype> with the text <B2SpecificTextboxText>
    And I click on an element <CloseB2SpecificTextboxXpath> with xpath
    And I click on an element <ExpandB2SpecificTextboxXpath> with xpath
    And I click on an element <B2SpecificTextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | B2SpecificTextboxDrpdownXpath                                                                                                               | ExpandB2SpecificTextboxDrpdownXpath                       | B2SpecificTextboxTagtype | B2SpecificTextboxText | CloseB2SpecificTextboxXpath                                                                                                                  | ExpandB2SpecificTextboxXpath                                                                                                                    | B2SpecificTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[46]/ul[1]/ul/li/i | a                        | A3 B2                 | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[11]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A3 -B3 Module (Textbox)

    Then I click on an element <B3ModuleTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxDrpdownXpath> with xpath
    Then I click on the <B3ModuleTextboxTagtype> with the text <B3ModuleTextboxText>
    And I click on an element <CloseB3ModuleTextboxXpath> with xpath
    And I click on an element <ExpandB3ModuleTextboxXpath> with xpath
    And I click on an element <B3ModuleTextboxValueXpath> with xpath
    Then I wait for the element to be visible


    Examples:
      | B3ModuleTextboxDrpdownXpath                                                                                                                 | ExpandB3ModuleTextboxDrpdownXpath                         | B3ModuleTextboxTagtype | B3ModuleTextboxText | CloseB3ModuleTextboxXpath                                                                                                                    | ExpandB3ModuleTextboxXpath                                                                                                                      | B3ModuleTextboxValueXpath                                                                                                                                  |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[8]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[47]/ul[1]/ul/li/i | a                      | A3 B3               | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[12]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A3 -B4 Inherit (Textbox)

    Then I click on an element <B4EnheritTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandEnheritTextboxDrpdownXpath> with xpath
    Then I click on the <B4EnheritTextboxTagtype> with the text <B4EnheritTextboxText>
    And I click on an element <CloseB4EnheritTextboxXpath> with xpath
    And I click on an element <ExpandB4EnheritTextboxXpath> with xpath
    And I click on an element <B4EnheritTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4EnheritTextboxDrpdownXpath                                                                                                                | ExpandEnheritTextboxDrpdownXpath                          | B4EnheritTextboxTagtype | B4EnheritTextboxText | CloseB4EnheritTextboxXpath                                                                                                                   | ExpandB4EnheritTextboxXpath                                                                                                                     | B4EnheritTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[9]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[48]/ul[1]/ul/li/i | a                       | A3 B4                | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[13]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A3 -B1 All  (Numeric Textbox)

    Then I click on an element <B1AllNumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxDrpdownXpath> with xpath
    Then I click on the <B1AllNumericTextboxTagtype> with the text <B1AllNumericTextboxText>
    And I click on an element <CloseB1AllNumericTextboxXpath> with xpath
    And I click on an element <ExpandB1AllNumericTextboxXpath> with xpath
    And I click on an element <B1AllNumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1AllNumericTextboxDrpdownXpath                                                                                                              | ExpandB1AllNumericTextboxDrpdownXpath                     | B1AllNumericTextboxTagtype | B1AllNumericTextboxText | CloseB1AllNumericTextboxXpath                                                                                                                | ExpandB1AllNumericTextboxXpath                                                                                                                  | B1AllNumericTextboxValueXpath                                                                                                                              |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[49]/ul[1]/ul/li/i | a                          | 31                      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[19]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A3 -B2 Specific  (Numeric Textbox)

    Then I click on an element <B2NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B2NumericTextboxTagtype> with the text <B2NumericTextboxText>
    And I click on an element <CloseB2NumericTextboxXpath> with xpath
    And I click on an element <ExpandB2NumericTextboxXpath> with xpath
    And I click on an element <B2NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2NumericTextboxDrpdownXpath                                                                                                                 | ExpandB2NumericTextboxDrpdownXpath                        | B2NumericTextboxTagtype | B2NumericTextboxText | CloseB2NumericTextboxXpath                                                                                                                   | ExpandB2NumericTextboxXpath                                                                                                                     | B2NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[50]/ul[1]/ul/li/i | a                       | 32                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[20]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B3 Module  (Numeric Textbox)

    Then I click on an element <B3NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B3NumericTextboxTagtype> with the text <B3NumericTextboxText>
    And I click on an element <CloseB3NumericTextboxXpath> with xpath
    And I click on an element <ExpandB3NumericTextboxXpath> with xpath
    And I click on an element <B3NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3NumericTextboxDrpdownXpath                                                                                                                 | ExpandB3NumericTextboxDrpdownXpath                        | B3NumericTextboxTagtype | B3NumericTextboxText | CloseB3NumericTextboxXpath                                                                                                                   | ExpandB3NumericTextboxXpath                                                                                                                     | B3NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[51]/ul[1]/ul/li/i | a                       | 33                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[21]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |


  Scenario Outline:Module A1 -B4 Inherit  (Numeric Textbox)

    Then I click on an element <B4NumericTextboxDrpdownXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxDrpdownXpath> with xpath
    Then I click on the <B4NumericTextboxTagtype> with the text <B4NumericTextboxText>
    And I click on an element <CloseB4NumericTextboxXpath> with xpath
    And I click on an element <ExpandB4NumericTextboxXpath> with xpath
    And I click on an element <B4NumericTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4NumericTextboxDrpdownXpath                                                                                                                 | ExpandB4NumericTextboxDrpdownXpath                        | B4NumericTextboxTagtype | B4NumericTextboxText | CloseB4NumericTextboxXpath                                                                                                                   | ExpandB4NumericTextboxXpath                                                                                                                     | B4NumericTextboxValueXpath                                                                                                                                 |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[18]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[52]/ul[1]/ul/li/i | a                       | 34                   | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[22]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B1 All  (TextArea)

    Then I click on an element <B1TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB1TextAreaDrpdownXpath> with xpath
    Then I click on the <B1TextAreaTextboxTagtype> with the text <B1TextAreaTextboxText>
    And I click on an element <CloseB1TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB1TextAreaTextboxXpath> with xpath
    And I click on an element <B1TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B1TextAreaDrpdownXpath                                                                                                                       | ExpandB1TextAreaDrpdownXpath                              | B1TextAreaTextboxTagtype | B1TextAreaTextboxText | CloseB1TextAreaTextboxXpath                                                                                                                  | ExpandB1TextAreaTextboxXpath                                                                                                                    | B1TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[53]/ul[1]/ul/li/i | a                        | Test A3 B1            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[28]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B2 Specific  (TextArea)

    Then I click on an element <B2TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB2TextAreaDrpdownXpath> with xpath
    Then I click on the <B2TextAreaTextboxTagtype> with the text <B2TextAreaTextboxText>
    And I click on an element <CloseB2TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB2TextAreaTextboxXpath> with xpath
    And I click on an element <B2TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B2TextAreaDrpdownXpath                                                                                                                       | ExpandB2TextAreaDrpdownXpath                              | B2TextAreaTextboxTagtype | B2TextAreaTextboxText | CloseB2TextAreaTextboxXpath                                                                                                                  | ExpandB2TextAreaTextboxXpath                                                                                                                    | B2TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[54]/ul[1]/ul/li/i | a                        | Test A3 B2            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[29]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B3 Module  (TextArea)

    Then I click on an element <B3TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB3TextAreaDrpdownXpath> with xpath
    Then I click on the <B3TextAreaTextboxTagtype> with the text <B3TextAreaTextboxText>
    And I click on an element <CloseB3TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB3TextAreaTextboxXpath> with xpath
    And I click on an element <B3TextAreaTextboxValueXpath> with xpath
    Then I wait for the element to be visible

    Examples:
      | B3TextAreaDrpdownXpath                                                                                                                       | ExpandB3TextAreaDrpdownXpath                              | B3TextAreaTextboxTagtype | B3TextAreaTextboxText | CloseB3TextAreaTextboxXpath                                                                                                                  | ExpandB3TextAreaTextboxXpath                                                                                                                    | B3TextAreaTextboxValueXpath                                                                                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[55]/ul[1]/ul/li/i | a                        | Test A3 B3            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[30]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] |

  Scenario Outline:Module A1 -B4 Inherit  (TextArea)

    Then I click on an element <B4TextAreaDrpdownXpath> with xpath
    And I click on an element <ExpandB4TextAreaDrpdownXpath> with xpath
    Then I click on the <B4TextAreaTextboxTagtype> with the text <B4TextAreaTextboxText>
    And I click on an element <CloseB4TextAreaTextboxXpath> with xpath
    And I click on an element <ExpandB4TextAreaTextboxXpath> with xpath
    And I click on an element <B4TextAreaTextboxValueXpath> with xpath
    Then I click on an element <SaveBtn> with xpath
    Then I wait for the element to be visible

    Examples:
      | B4TextAreaDrpdownXpath                                                                                                                       | ExpandB4TextAreaDrpdownXpath                              | B4TextAreaTextboxTagtype | B4TextAreaTextboxText | CloseB4TextAreaTextboxXpath                                                                                                                  | ExpandB4TextAreaTextboxXpath                                                                                                                    | B4TextAreaTextboxValueXpath                                                                                                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[27]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[56]/ul[1]/ul/li/i | a                        | Test A3 B4            | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/a/span[2]/b[2] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/div/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[2]/div/div/div[9]/div[2]/div[3]/div/div[31]/div[1]/div/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |
