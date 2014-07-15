Feature: Organizations Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page
    When I navigate to the organizations controller page
    Then I should be on the organizations index page

  Scenario: I should be notified that organization name is required when creating a new organization
    When I click the new organizations button
    Then I should be on the create organizations page
    When I click the create button
    Then I should be alerted that organization name cannot be blank

  Scenario: I should be able to create a new organization
    When I click the new organizations button
    Then I should be on the create organizations page
    When I enter the organzation name Test Organization
    When I enter a random alias
    And I select the classification Agency
    And I click the create button
    Then I should be on the show organizations page