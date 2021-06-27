@System_Source_Views

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
    Then I click on an element <SystemTab> with xpath
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
      | SourcesID                                    | AllFilterModuleID                            | AddBtn       | TxtBoxDd                                                                                                         | TxtBoxSelect                                               | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                              | SaveBtn                                                                | SystemTab                                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_897c6a4f-413f-4245-8230-f4e20657d5bc | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[53]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[141]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[54]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[142]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[55]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[143]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[56]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[144]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[1]/div[3]/ul/li[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                  | DdTxtDd                                                                                                          | DdTxtSelect                                                        | DdSrcDd                                                                                                          | DdSrcSelect                                                        | SpecifyDd                                                                                                        | SpecifySelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[58]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[145]/ul[1]/ul/li[6]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[59]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[146]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[60]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[147]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[61]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[148]/ul[1]/ul/li[6]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Start With

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
      | TxtBoxDd                                                                                                      | TxtBoxSelect                                                    | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[67]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[151]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[64]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[149]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[65]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[150]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[68]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[152]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Ends With

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                       | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[74]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[155]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[71]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[153]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[72]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[154]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[75]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[156]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Contains

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                               | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                              | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[77]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[157]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[78]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[158]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[79]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[159]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[80]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[160]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                  | DdTxtDd                                                                                                          | DdTxtSelect                                                        | DdSrcDd                                                                                                          | DdSrcSelect                                                        | SpecifyDd                                                                                                        | SpecifySelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[82]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[161]/ul[1]/ul/li[6]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[83]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[162]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[84]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[163]/ul[1]/ul/li[6]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[85]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[164]/ul[1]/ul/li[6]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Equals To

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <MatchDdTxtDd> with xpath
    Then I click on an element <MatchDdTxtSelection> with xpath
    Then I click on an element <MatchDdSrc> with xpath
    Then I click on an element <MatchDdSrcSelection> with xpath
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect2> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | MatchDdTxtDd                                                                                                    | DdTxtSelect2                                                       | DdSrcDd                                                                                                       | DdSrcSelect2                                                       | DdTxtDd                                                                                                       | MatchDdTxtSelection                                                | MatchDdSrc                                                                                                      | MatchDdSrcSelection                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[49]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[142]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[55]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[143]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[54]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[139]/ul[1]/ul/li[7]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[50]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[140]/ul[1]/ul/li[5]/a/i[1] |

  Scenario Outline: Multi Select - Is Not Equals To

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdTxtSelect2> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    Then I click on an element <DdSrcSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect1                                                       | DdTxtSelect2                                                       | DdSrcDd                                                                                                       | DdSrcSelect1                                                       | DdSrcSelect2                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[59]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[146]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[146]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[60]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[147]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[147]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Starts With

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[64]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[149]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[65]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[150]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Ends With

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[71]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[153]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[72]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[154]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Contains

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[78]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[158]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[79]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[159]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Does Not Contains

    And I wait for the element to be visible
    Then I click on an element <DdTxtDd> with xpath
    Then I click on an element <DdTxtSelect1> with xpath
    Then I click on an element <DdTxtSelect2> with xpath
    Then I click on an element <DdSrcDd> with xpath
    Then I click on an element <DdSrcSelect1> with xpath
    Then I click on an element <DdSrcSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | DdTxtDd                                                                                                       | DdTxtSelect2                                                       | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelect2                                                       | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[83]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[162]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[162]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[84]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[163]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[163]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |