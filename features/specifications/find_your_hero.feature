Feature: Talk to your hero

  - Narrative:
  Find a host or walker through the site

  Background:
    Given I'm on the home of the brazilian site

  @success
  Scenario: Opening a conversation with a favorite hero while logged in.
    And I sign in
      | user                   | password |
      | testeqa@mailinator.com | 123456aa |
    When I find on My Heroes
    Then I choose a favorite hero and I click on talk
    And I'm at reservation page

  @error
  Scenario: Sign in with invalid data
    And I sign in
      | user      | password |
      | abcd@abcd | abcd1234 |
    Then I get an error message
    """
    Esse email ou senha estão incorretos
    """