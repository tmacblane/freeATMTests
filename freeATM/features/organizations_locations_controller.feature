Feature: Organizations Locations Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page
    When I navigate to the organizations locations controller page
    Then I should be on the organizations locations page

  # create a location
  # create an organization
  # assign a location