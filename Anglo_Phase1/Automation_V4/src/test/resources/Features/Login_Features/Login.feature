@Login

Feature: Login

  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
   And I wait for the element to be visible
    And I wait for the element to be visible
    And I wait for the element to be visible
    And I send the Report
#    And I close the browser

    Examples:
    |UsernameValue  |UsernameID |PasswordValue|PasswordID |ButtonID      |HomepageFormID|DrpID|DrpValue|ScrShtName|
    |Isometrixsystem|txtUsername|1            |txtPassword|btnLoginSubmit|divPage       |businesunit|global|Login |






