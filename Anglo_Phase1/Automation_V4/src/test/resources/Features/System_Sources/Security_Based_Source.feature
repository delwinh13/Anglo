@Security_Based_Source

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

  Scenario Outline: Single Select - Equals To(Level/View)

    When I switch to an iframe
    Then I wait for the element to be visible
    And I click the <SourcesID> Button with ID
    Then I wait for the element to be visible
    And I click the <AllFilterModuleID> Button with ID
    And I wait for the element to be visible
    And I click the <AddBtn> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <SecurityBasedTab> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | SourcesID                                    | AllFilterModuleID                            | AddBtn       | LevelDd                                                                                                          | LevelSelect                                                     | ViewDd                                                                                                           | ViewSelect                                                      | LevelViewDd                                                                                                      | LevelViewSelect                                                 | SaveBtn                                                                | SecurityBasedTab                                                                              |
      | section_c07b32b3-2095-4543-a578-367c27a16d16 | section_897c6a4f-413f-4245-8230-f4e20657d5bc | btnActAddNew | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[11]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[195]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[12]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[196]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[13]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[197]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[1]/div[3]/ul/li[4]/div[1] |

  Scenario Outline: Single Select - Is Not Equals To(Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                        | ViewDd                                                                                                           | ViewSelect                                                         | LevelViewDd                                                                                                      | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[15]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[198]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[16]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[199]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[17]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[200]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Equals To(User)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                     | ViewDd                                                                                                           | ViewSelect                                                      | LevelViewDd                                                                                                      | LevelViewSelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[20]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[201]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[21]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[202]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[22]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[203]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Is Not Equals To(Users)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                        | ViewDd                                                                                                           | ViewSelect                                                         | LevelViewDd                                                                                                      | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[24]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[204]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[25]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[205]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[26]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[206]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Equals To(Record Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                     | ViewDd                                                                                                           | ViewSelect                                                      | LevelViewDd                                                                                                      | LevelViewSelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[33]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[207]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[34]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[208]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[35]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[209]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Equals To(Record Level/View) Users

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                     | ViewDd                                                                                                           | ViewSelect                                                      | LevelViewDd                                                                                                      | LevelViewSelect                                                 | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[37]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[210]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[38]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[211]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[39]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[212]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Is Not Equals To(Record Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                        | ViewDd                                                                                                           | ViewSelect                                                         | LevelViewDd                                                                                                      | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[45]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[213]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[46]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[214]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[47]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[215]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Single Select - Is Not Equals To(Record Level/View) User

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                          | LevelSelect                                                        | ViewDd                                                                                                           | ViewSelect                                                         | LevelViewDd                                                                                                      | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[49]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[216]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[50]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[217]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[51]/div[1]/a/span[1]/ul/li | /html/body/div[1]/div[3]/div/div[2]/div[218]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Equals To(Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <MatchLevelDd> with xpath
    Then I click on an element <MatchLevelSelect> with xpath
    Then I click on an element <MatchViewDd> with xpath
    Then I click on an element <MatchViewSelect> with xpath
    Then I click on an element <MatchLevelViewDd1> with xpath
    Then I click on an element <MatchLevelViewSelect1> with xpath
    Then I click on an element <MatchLevelViewDd2> with xpath
    Then I click on an element <MatchLevelViewSelect2> with xpath
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | MatchLevelDd                                                                                                   | MatchLevelSelect                                                   | MatchViewDd                                                                                                    | MatchViewSelect                                                    | MatchLevelViewDd1                                                                                              | MatchLevelViewSelect1                                              | MatchLevelViewDd2                                                                                              | MatchLevelViewSelect2                                              | LevelDd                                                                                                         | LevelSelect                                                        | ViewDd                                                                                                          | ViewSelect                                                         | LevelViewDd                                                                                                     | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[6]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[191]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[7]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[192]/ul[1]/ul/li[7]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[8]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[193]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[9]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[194]/ul[1]/ul/li[7]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[11]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[195]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[12]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[196]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[13]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[197]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Is Not Equals To(Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                         | LevelSelect                                                        | ViewDd                                                                                                          | ViewSelect                                                         | LevelViewDd                                                                                                     | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[15]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[198]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[16]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[199]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[17]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[200]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Equals To(User)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                         | LevelSelect                                                        | ViewDd                                                                                                          | ViewSelect                                                         | LevelViewDd                                                                                                     | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[20]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[201]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[21]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[202]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[22]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[203]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Is Not Equals To(User)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <LevelSelect2> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <ViewSelect2> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    Then I click on an element <LevelViewSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                         | LevelSelect                                                        | LevelSelect2                                                       | ViewDd                                                                                                          | ViewSelect                                                         | ViewSelect2                                                        | LevelViewDd                                                                                                     | LevelViewSelect                                                    | LevelViewSelect2                                                   | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[24]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[204]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[204]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[25]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[205]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[205]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[26]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[206]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[206]/ul[1]/ul/li[2]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

#  Scenario Outline: Multi Select - Equals To(Record Level/View)
#
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    Then I click on an element <LevelDd> with xpath
#    Then I click on an element <LevelSelect> with xpath
#    Then I click on an element <ViewDd> with xpath
#    Then I click on an element <ViewSelect> with xpath
#    Then I click on an element <LevelViewDd> with xpath
#    Then I click on an element <LevelViewSelect> with xpath
#    And I click on an element <SaveBtn> with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#
#    Examples:
#      | LevelDd                                                                                                         | LevelSelect                                                     | ViewDd                                                                                                          | ViewSelect                                                      | LevelViewDd                                                                                                     | LevelViewSelect                                                 | SaveBtn                                                                |
#      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[33]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[207]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[34]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[208]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[35]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[209]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |
#
#  Scenario Outline: Multi Select - Equals To(Record Level/View) User
#
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#    Then I click on an element <LevelDd> with xpath
#    Then I click on an element <LevelSelect> with xpath
#    Then I click on an element <ViewDd> with xpath
#    Then I click on an element <ViewSelect> with xpath
#    Then I click on an element <LevelViewDd> with xpath
#    Then I click on an element <LevelViewSelect> with xpath
#    And I click on an element <SaveBtn> with xpath
#    And I wait for the element to be visible
#    And I wait for the element to be visible
#
#    Examples:
#      | LevelDd                                                                                                         | LevelSelect                                                     | ViewDd                                                                                                          | ViewSelect                                                      | LevelViewDd                                                                                                     | LevelViewSelect                                                 | SaveBtn                                                                |
#      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[37]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[207]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[38]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[208]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[39]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[209]/ul[1]/ul/li/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Is Not Equals To(Record Level/View)

    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                         | LevelSelect                                                        | ViewDd                                                                                                          | ViewSelect                                                         | LevelViewDd                                                                                                     | LevelViewSelect                                                    | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[45]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[213]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[46]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[214]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[47]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[215]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |

  Scenario Outline: Multi Select - Is Not Equals To(Record Level/View) User

    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    Then I click on an element <LevelDd> with xpath
    Then I click on an element <LevelSelect> with xpath
    Then I click on an element <LevelSelect2> with xpath
    Then I click on an element <ViewDd> with xpath
    Then I click on an element <ViewSelect> with xpath
    Then I click on an element <ViewSelect2> with xpath
    Then I click on an element <LevelViewDd> with xpath
    Then I click on an element <LevelViewSelect> with xpath
    Then I click on an element <LevelViewSelect2> with xpath
    And I click on an element <SaveBtn> with xpath
    And I wait for the element to be visible
    And I wait for the element to be visible

    Examples:
      | LevelDd                                                                                                         | LevelSelect                                                        | LevelSelect2                                                       | ViewDd                                                                                                          | ViewSelect                                                         | ViewSelect2                                                        | LevelViewDd                                                                                                     | LevelViewSelect                                                    | LevelViewSelect2                                                   | SaveBtn                                                                |
      | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[49]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[216]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[216]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[50]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[217]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[217]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[4]/div[7]/div[9]/div[2]/div[4]/div/div[51]/div[1]/a/span[2]/b[1] | /html/body/div[1]/div[3]/div/div[2]/div[218]/ul[1]/ul/li[1]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[218]/ul[1]/ul/li[3]/a/i[1] | /html/body/div[1]/div[3]/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[3] |