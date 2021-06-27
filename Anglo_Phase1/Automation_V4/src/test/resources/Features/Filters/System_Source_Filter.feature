@System_Source_Filter

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
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_897c6a4f-413f-4245-8230-f4e20657d5bc | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[13]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[115]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[14]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[116]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[15]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[117]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[16]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[118]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[1]/div[3]/ul/li[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                                       | DdTxtDd                                                                                                          | DdTxtSelect                                                        | DdSrcDd                                                                                                          | DdSrcSelect                                                        | SpecifyDd                                                                                                        | SpecifySelect                                                      | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[18]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[119]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[19]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[120]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[20]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[121]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[21]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[122]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                               | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                              | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[27]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[125]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[24]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[123]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[25]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[124]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[28]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[126]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | TxtBoxDd                                                                                                         | TxtBoxSelect                                               | DdTxtDd                                                                                                          | DdTxtSelect                                                     | DdSrcDd                                                                                                          | DdSrcSelect                                                     | SpecifyDd                                                                                                        | SpecifySelect                                              | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[34]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[129]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[31]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[127]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[32]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[128]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[35]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[130]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[37]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[131]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[38]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[132]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[39]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[133]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[40]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[134]/ul[1]/ul/li/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[42]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[135]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[43]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[136]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[44]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[137]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[45]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[138]/ul[1]/ul/li[1]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | MatchDdTxtDd                                                                                                 | DdTxtSelectExpand                                          | DdTxtSelect2                                                             | DdSrcDd                                                                                                       | DdSrcSelectExpand                                          | DdSrcSelect2                                                             | DdTxtDd                                                                                                       | MatchDdTxtSelection                                                | MatchDdSrc                                                                                                    | MatchDdSrcSelection                                                | DdSrcCancel                                                                                                    | DdSrcSelect                                                      | SpecifyDd                                                                                                        | SpecifySelect                                                | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[9]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[116]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[116]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[15]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[117]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[117]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[14]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[113]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[10]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[114]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[9]/div[1]/a/span[2]/b[3] | /html/body/div[1]/div[3]/div/div[2]/div[6]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[1]/div/div[83]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[58]/ul[1]/ul/li[2]/a | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                            | DdTxtSelect1                                                       | DdTxtSelect2                                                       | DdSrcDd                                                                                                       | DdSrcSelectExpand                                            | DdSrcSelect1                                                       | DdSrcSelect2                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[19]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[12]/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[120]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[120]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[20]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[13]/ul[1]/ul/li[1]/i | /html/body/div[1]/div[3]/div/div[2]/div[121]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[121]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelectExpand                                          | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[24]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[123]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[123]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[25]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[124]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[124]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelectExpand                                          | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[31]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[127]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[127]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[32]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[128]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[128]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | DdTxtDd                                                                                                       | DdTxtSelectExpand                                          | DdTxtSelect1                                                       | DdSrcDd                                                                                                       | DdSrcSelectExpand                                          | DdSrcSelect1                                                       | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[38]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[132]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[132]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[39]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[133]/ul[1]/ul/li/i | /html/body/div[1]/div[3]/div/div[2]/div[133]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

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
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[43]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[136]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[136]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[3]/div/div[44]/div[1]/a/span[1]/ul | /html/body/div[1]/div[3]/div/div[2]/div[137]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[137]/ul[1]/ul/li[4]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |