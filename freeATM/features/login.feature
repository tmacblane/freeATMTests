  Feature: Login

  Background:
    Given I open the user login page
    Then I should be on the user login page

  Scenario: I should see be alerted which fields are required
    When I click the login button
    Then I should see a message alerting me that my information was not correct

  Scenario: I should not be able to log in with an incorrect user name and password
    When I log in as invalid user
    Then I should see a message alerting me that my information was not correct
    And I should be on the user login page

  Scenario: I should not be able to log in with an incorrect password
    When I enter the user name info@thefreeatm.com
    And I enter the password invalid
    And I click the login button
    Then I should see a message alerting me that my information was not correct
    And I should be on the user login page

  Scenario: The password should be case sensitive when trying to log in
    When I enter the user name info@thefreeatm.com
    And I enter the password frEE8t#
    And I click the login button
    Then I should see a message alerting me that my information was not correct
    And I should be on the user login page

  Scenario: I should be alerted that my account will be locked after x wrong log in attempts
    When I enter invalid login information x times
    Then I should see a message alerting me that my account will be locked

  Scenario: I should be alerted that my account has been been locked after x wrong log in attempts
    When I enter invalid login information x times
    Then I should see a message alerting me that my account is locked

