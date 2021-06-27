@UserDefinedSourcesFilter

Feature: User Defined Sources Filter

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
      | Isometrixsystem | txtUsername | 1             | txtPassword | btnLoginSubmit |

  Scenario Outline: Single Select - Equals To

    When I switch to an iframe
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <AllFilterModuleID> Button with ID
    And I wait for the element to be visible
    And I click the <AddBtn> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | SourcesID                                    | AllFilterModuleID                            | AddBtn       | TxtBoxDd                                                                                                         | TxtBoxSelect                                             | DdTxtDd                                                                                                          | DdTxtSelect                                                   | DdSrcDd                                                                                                          | DdSrcSelect                                                   | SpecifyDd                                                                                                        | SpecifySelect                                             | SaveBtn                                                                |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_897c6a4f-413f-4245-8230-f4e20657d5bc | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[12]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[7]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[13]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[8]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[14]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[9]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[15]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[10]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Is Not Equals To

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                       | DdSrcDd                                                                                                          | DdSrcSelect                                                       | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[17]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[11]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[18]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[19]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[20]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[14]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Starts With

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                              | DdTxtDd                                                                                                          | DdTxtSelect                                                    | DdSrcDd                                                                                                          | DdSrcSelect                                                    | SpecifyDd                                                                                                        | SpecifySelect                                             | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[26]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[18]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[23]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[24]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[25]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[17]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Ends With

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                              | DdTxtDd                                                                                                          | DdTxtSelect                                                    | DdSrcDd                                                                                                          | DdSrcSelect                                                    | SpecifyDd                                                                                                        | SpecifySelect                                             | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[32]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[22]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[29]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[30]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[31]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[21]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Contains

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                              | DdTxtDd                                                                                                          | DdTxtSelect                                                    | DdSrcDd                                                                                                          | DdSrcSelect                                                    | SpecifyDd                                                                                                        | SpecifySelect                                             | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[34]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[23]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[35]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[24]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[36]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[25]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[37]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[26]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Does Not Contain

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                       | DdSrcDd                                                                                                          | DdSrcSelect                                                       | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[39]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[27]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[40]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[28]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[41]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[42]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[30]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Between

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                  | DdSrcDd                                                                                                          | DdSrcSelect                                                  | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[52]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[35]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[53]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[36]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[54]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[37]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[55]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[38]/ul[1]/ul/li[3]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Less Than

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                  | DdSrcDd                                                                                                          | DdSrcSelect                                                  | SpecifyDd                                                                                                        | SpecifyTag | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[61]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[41]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[62]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[42]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[63]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[43]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[64]/div[1]/a/span[1]/ul/li | a          | /html/body/div[1]/div[3]/div/div[2]/div[44]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Less Than And Equals To

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                  | DdSrcDd                                                                                                          | DdSrcSelect                                                  | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[66]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[45]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[67]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[46]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[68]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[47]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[69]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[48]/ul[1]/ul/li[3]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Greater Than

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                               | DdSrcDd                                                                                                          | DdSrcSelect                                                  | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[75]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[51]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[76]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[52]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[77]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[53]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[78]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[54]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Greater Than And Equals To

    And I wait for the element to be visible
    Then I click on an element <TxtBoxDd> with xpath
    Then I click on an element <TxtBoxSelect> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect> with xpath
    Then I click on an element <SpecifyDd> with xpath
    Then I click on an element <SpecifySelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                 | DdTxtDd                                                                                                          | DdTxtSelect                                                  | DdSrcDd                                                                                                          | DdSrcSelect                                                  | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[80]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[55]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[81]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[56]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[82]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[57]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[83]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[58]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |
#
  Scenario Outline: Multi Select - Equals To

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <MatchDdTxtDd> with xpath
    Then I click on an element <MatchDdTxtSelection> with xpath
    Then I click on an element <MatchDdSrc> with xpath
    Then I click on an element <MatchDdSrcSelection> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelectExpand> with xpath
    Then I click on an element <DdTxtSelect2> with xpath
    Then I click on an element <DdSrcDdEquals> with xpath
    Then I click on an element <DdSrcSelectExpand> with xpath
    Then I click on an element <DdSrcSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | MatchDdTxtDd                                                                                                 | DdTxtSelectExpand                                        | DdTxtSelect2                                                        | DdSrcDdEquals                                                                                                 | DdSrcSelectExpand                                        | DdSrcSelect2                                                        | DdTxtDd                                                                                                       | MatchDdTxtSelection                                              | MatchDdSrc                                                                                                   | MatchDdSrcSelection                                              | DdSrcCancel                                                                                                    | DdSrcSelect                                                      | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[8]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[8]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[8]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[14]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[9]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[9]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[13]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[5]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[9]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[6]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[9]/div[1]/a/span[2]/b[3] | /html/body/div[1]/div[3]/div/div[2]/div[6]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[83]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[58]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Is Not Equals To

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelectExpand> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelectExpand> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                            | DdTxtSelect1                                                               | DdTxtSelect2                                                               | DdSrcDd                                                                                                       | DdSrcSelectExpand                                            | DdSrcSelect1                                                               | DdSrcSelect2                                                               | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[18]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[19]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Starts With

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelectExpand> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelectExpand> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                         | DdTxtSelect1                                                         | DdSrcDd                                                                                                       | DdSrcSelectExpand                                         | DdSrcSelect1                                                         | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[23]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[15]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[24]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[16]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Ends With

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelectExpand> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelectExpand> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                         | DdTxtSelect1                                                         | DdSrcDd                                                                                                       | DdSrcSelectExpand                                         | DdSrcSelect1                                                         | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[29]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[19]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[30]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[20]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Contains

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelectExpand> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelectExpand> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                         | DdTxtSelect1                                                         | DdSrcDd                                                                                                       | DdSrcSelectExpand                                         | DdSrcSelect1                                                         | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[35]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[24]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[24]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[36]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[25]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[25]/ul[1]/ul/li/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Does Not Contains

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect2                                                      | DdTxtSelect1                                                      | DdSrcDd                                                                                                       | DdSrcSelect2                                                      | DdSrcSelect1                                                      | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[40]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[28]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[28]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[41]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[29]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |