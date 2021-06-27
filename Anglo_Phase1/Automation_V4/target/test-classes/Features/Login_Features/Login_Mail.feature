@LoginMail


Feature: Mail Login

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I send the Report

    Examples:
      | UsernameValue | UsernameID | PasswordValue  | PasswordID | ButtonID       |
      | automation    | userName   | T35t1ng#M3tr1x | password   | btnSubmit |

