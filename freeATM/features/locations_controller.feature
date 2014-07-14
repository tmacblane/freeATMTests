Feature: Locations Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page

  Scenario: I should be able to create a new location
    When I navigate to the locations controller page
    Then I should be on the locations index page
    When I click the new locations button
    Then I should be on the create locations page
    When I enter new location information
    And I click the create button
    Then I should be on the show locations page