@ApproveAndDeclineAccess

Feature: Decline and Approve Access

#  Scenario Outline: As a user I want to login with valid credentials
#
#    Given I have launched the browser
#    When I enter <UsernameID> with ID <UsernameValue>
#    When I enter <PasswordID> with ID <PasswordValue>
#    When I click the <ButtonID> Button with ID
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#
#    Examples:
#      | UsernameValue   | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID | DrpID       | DrpValue | ScrShtName |
#      | AutomationUser | txtUsername | Password1!             | txtPassword | btnLoginSubmit | divPage        | businesunit | global   | Login      |
#

  Scenario: Launch the browser

    Given I have launched the browser

  Scenario Outline: I request access (Approve)

    When I click the <RequestAccessID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <txtsurnameID> with ID <txtsurnameValue>
    And I wait for the element to be saved
    When I enter <txtnameID> with ID <txtnameValue>
    And I wait for the element to be saved
    When I enter <txtdefault_emailID> with ID <txtdefault_emailValue>
    And I wait for the element to be saved
    When I enter <txtReqNotesID> with ID <txtReqNotesValue>
    And I wait for the element to be saved
    When I click the <btnAccessSubmitID> Button with ID
    And I wait for the element to be saved

    Examples:
      | RequestAccessID | txtsurnameID | txtsurnameValue | txtnameID | txtnameValue | txtdefault_emailID | txtdefault_emailValue            | txtReqNotesID | txtReqNotesValue    | btnAccessSubmitID |
      | lblAccess       | txtsurname   | Daisy           | txtname   | Approve      | txtdefault_email   | kopano.makanatleng@isometrix.com | txtReqNotes   | Please grant access | btnAccessSubmit   |


  Scenario Outline:As a User I want to login
    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UsernameValue  | UsernameID                 | PasswordValue | PasswordID     | ButtonID |
      | Isometrixsystem | txtUsername AutomationUser | txtPassword   | btnLoginSubmit | divPage  |

  Scenario Outline: Navigate to Manage Users

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved


    Examples:
      | UserManagerTag | UserManText   | Sidebarlink               |
      | div            | Users Manager | /html/body/div/div[1]/a/i |


#  Scenario Outline: Approve Access
#    Then I click on an element <AccessRequestBtnXpath> with xpath
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    When I click on the <UserTag> with the text <UserText>
##      Then I click on an element <UserXpath> with xpath
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I enter <UsernameXpath> using xpath <UsernameValue>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    Then I click on an element <SenseLicenceXpath> with xpath
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#      #select none
#    When I click on the <SenseLicenceTag> with the text <SenseLicenceText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    When I click on the <AcceptTag> with the text <AcceptText>
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And Switch back to default content
#    Then I click on an element <OKXpath> with xpath
#    And I wait for the element to be saved
#    And I wait for the element to be saved
#    And I switch to an iframe
#
#      #################Rename User######################
#    When I click the <DeactivateUserID> Button with ID
#    And Switch back to default content
#    When I click the <ConfirmYesBtn> Button with ID
#    And I wait for the element to be saved
#    Then I click on an element <OKXpath> with xpath
#
#    Examples:
#      | UserTag | UserText                     | AccessRequestBtnXpath                                                   | AcceptTag | AcceptText | SenseLicenceXpath                                                                                                       | SenseLicenceTag | SenseLicenceText | UsernameXpath                                                                                                                  | UsernameValue  | OKXpath                                                        | DeactivateUserID | ConfirmYesBtn |
#      | a       | kopano.makanatleng@isometrix | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[3]/div | div       | Approve    | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[3]/div/div/div/div[3]/div[5]/div[2]/div/a/span[2]/b[1] | a               | VIEW             | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[1]/div[2]/div/table/tbody/tr[2]/td[2]/div/input | ApproveAccess1 | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div | btnDeleteUser    | btnConfirmYes |



  Scenario: As a user I want to launch the browser

    Given I have launched the browser

  Scenario Outline: I request access (Decline)

    When I click the <RequestAccessID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I enter <txtsurnameID> with ID <txtsurnameValue>
    And I wait for the element to be saved
    When I enter <txtnameID> with ID <txtnameValue>
    And I wait for the element to be saved
    When I enter <txtdefault_emailID> with ID <txtdefault_emailValue>
    And I wait for the element to be saved
    When I enter <txtReqNotesID> with ID <txtReqNotesValue>
    And I wait for the element to be saved
    When I click the <btnAccessSubmitID> Button with ID
    And I wait for the element to be saved

    Examples:
      | RequestAccessID | txtsurnameID | txtsurnameValue | txtnameID | txtnameValue | txtdefault_emailID | txtdefault_emailValue | txtReqNotesID | txtReqNotesValue    | btnAccessSubmitID |
      | lblAccess       | txtsurname   | Daisy           | txtname   | Decline      | txtdefault_email   | Decline@gmail.com     | txtReqNotes   | Please grant access | btnAccessSubmit   |


  Scenario Outline:As a User I want to login
    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UsernameValue  | UsernameID  | PasswordValue | PasswordID  | ButtonID       | HomepageFormID |
      | AutomationUser | txtUsername | Password1!    | txtPassword | btnLoginSubmit | divPage        |


  Scenario Outline: Navigate to Manage Users

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserManagerTag | UserManText   | Sidebarlink               |
      | div            | Users Manager | /html/body/div/div[1]/a/i |

      ##Must Give a reason of declining
  Scenario Outline: I Decline Access

    Then I click on an element <AccessRequestBtnXpath> with xpath
    And I wait for the element to be saved
    When I click on the <UserTag> with the text <UserText>
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I enter <UsernameXpath> using xpath <UsernameValue>
    And I wait for the element to be saved
#      Then I click on an element <SenseLicenceXpath> with xpath
#      And I wait for the element to be saved
#      When I click on the <SenseLicenceTag> with the text <SenseLicenceText>
    When I click on the <DeclineTag> with the text <DeclineText>
    And I wait for the element to be saved
    And Switch back to default content
    When I enter <TextboxID> with ID <ReasonForDecline>
    And I wait for the element to be saved
    And I wait for the element to be saved
    When I click the <OkBtnID> Button with ID
    And I wait for the element to be saved
    And I wait for the element to be saved
    Then I click on an element <OKXpath> with xpath
    And I wait for the element to be saved
    And I wait for the element to be saved
    And I switch to an iframe
    And I wait for the element to be saved
    And I wait for the element to be saved

    Examples:
      | UserTag | UserText          | UsernameXpath                                                                                                                  | UsernameValue  | AccessRequestBtnXpath                                                   | UserXpath                                                         | DeclineTag | DeclineText            | TextboxID     | ReasonForDecline  | OkBtnID            | OKXpath                                                        | SenseLicenceTag | SenseLicenceText | SenseLicenceXpath                                                                                                       |
      | a       | Decline@gmail.com | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[1]/div[2]/div/table/tbody/tr[2]/td[2]/div/input | DeclineAccess2 | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[3]/div | /html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li[12]/a | div        | Decline access request | rejectMessage | AutomationTesting | btnRejectMsgAccept | /html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div | a               | VIEW             | /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[3]/div/div/div/div[3]/div[5]/div[2]/div/a/span[2]/b[1] |

