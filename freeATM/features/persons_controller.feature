Feature: Persons Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page

  Scenario: I should be alerted which fields are required when creating a new person
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I click the create button
    Then I should be notified that first name is required
    And I should be notified that last name is required
    And I should be notified that title is required

  Scenario: I should be able to create a person
    When I navigate to the communications controller page
    Then I should be on the communications index page
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter a new email communication value
    And I click the create button
    Then I should be on the show communications page
    When I open the home page
    Then I should be on the home page
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I enter the first name Steve
    And I enter the last name Dave
    And I enter the title Boss Man
    And I select the newly created communication value
    And I click the create button
    Then I should be on the show persons page

  Scenario: I should be able to update an existing person
    When I navigate to the communications controller page
    Then I should be on the communications index page
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter a new email communication value
    And I click the create button
    Then I should be on the show communications page
    When I open the home page
    Then I should be on the home page
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I enter the first name Steve
    And I enter the last name Dave
    And I enter the title Boss Man
    And I select the newly created communication value
    And I click the create button
    Then I should be on the show persons page
    When I click the edit button
    Then I should be on the edit persons page
    When I enter the first name Peter
    And I enter the last name Bob
    And I enter the title New Title
    And I click the update button
    Then I should be on the show persons page
    And I should see the first name is Peter
    And I should see the last name is Bob
    And I should see the title is New Title
