Feature: Persons Controller


  Background:
    Given I am on the home page
    When I navigate to the persons controller page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page
    When I navigate to the persons controller page
    Then I should be on the persons controller page

  Scenario: I should be alerted which fields are required when creating a new person
    When I click the create button
    Then I should be notified that first name is required
    And I should be notified that last name is required
    And I should be notified that title is required

  Scenario: I should be able to create a person
    When I click the create button
    And I enter the first name Steve
    And I enter the last name Dave
    And I enter the title Boss Man
    And I click the create button
    Then I should see the show persons panel