Feature: Passwords Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page
    When I navigate to the passwords controller page
    Then I should be on the passwords index page

  Scenario: I should be notified that the password is required when creating a new password
    When I click the new passwords button
    Then I should be on the create password page
    When I click the create button
    Then I should be alerted that password cannot be blank

