@System_Source_Users

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
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_897c6a4f-413f-4245-8230-f4e20657d5bc | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[93]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[167]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[94]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[168]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[95]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[169]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[96]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[170]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[1]/div[3]/ul/li[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                  | DdTxtDd                                                                                                          | DdTxtSelect                                                        | DdSrcDd                                                                                                           | DdSrcSelect                                                        | SpecifyDd                                                                                                         | SpecifySelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[98]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[171]/ul[1]/ul/li[4]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[99]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[172]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[100]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[173]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[101]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[174]/ul[1]/ul/li[4]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                          | TxtBoxSelect                                                    | DdTxtDd                                                                                                           | DdTxtSelect                                                     | DdSrcDd                                                                                                           | DdSrcSelect                                                     | SpecifyDd                                                                                                         | SpecifySelect                                                   | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[107]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[177]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[104]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[175]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[105]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[176]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[108]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[178]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                          | TxtBoxSelect                                                       | DdTxtDd                                                                                                           | DdTxtSelect                                                     | DdSrcDd                                                                                                           | DdSrcSelect                                                     | SpecifyDd                                                                                                         | SpecifySelect                                                      | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[114]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[181]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[111]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[179]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[112]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[180]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[115]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[182]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                          | TxtBoxSelect                                                    | DdTxtDd                                                                                                           | DdTxtSelect                                                     | DdSrcDd                                                                                                           | DdSrcSelect                                                     | SpecifyDd                                                                                                         | SpecifySelect                                                   | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[118]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[183]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[119]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[184]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[120]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[185]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[121]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[186]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                          | TxtBoxSelect                                                       | DdTxtDd                                                                                                           | DdTxtSelect                                                        | DdSrcDd                                                                                                           | DdSrcSelect                                                        | SpecifyDd                                                                                                         | SpecifySelect                                                      | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[123]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[187]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[124]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[188]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[125]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[189]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[126]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[190]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | MatchDdTxtDd                                                                                                    | DdTxtSelect2                                                       | DdSrcDd                                                                                                         | DdSrcSelect2                                                       | DdTxtDd                                                                                                         | MatchDdTxtSelection                                                | MatchDdSrc                                                                                                      | MatchDdSrcSelection                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[89]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[168]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[95]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[169]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[94]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[165]/ul[1]/ul/li[9]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[90]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[166]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                         | DdTxtSelect1                                                       | DdTxtSelect2                                                       | DdSrcDd                                                                                                          | DdSrcSelect1                                                       | DdSrcSelect2                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[99]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[172]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[172]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[100]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[173]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[173]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                          | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[104]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[175]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[105]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                          | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[111]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[179]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[112]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[180]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                          | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[119]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[184]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[120]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                          | DdTxtSelect2                                                       | DdTxtSelect1                                                       | DdSrcDd                                                                                                          | DdSrcSelect2                                                       | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[124]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[188]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[188]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[125]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[189]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[189]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |