Feature: Creatives Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page

  Scenario: I should be able to create a creative
    When I navigate to the organizations controller page
    Then I should be on the organizations index page
    When I click the new organizations button
    Then I should be on the create organizations page
    When I create a new organization
    And I click the create button
    Then I should be on the show organizations page
    When I open the home page
    When I navigate to the creatives controller page
    Then I should be on the creatives index page
    When I click the new creatives button
    Then I should be on the create creatives page
    When I enter a new creative
    When I click the create button
    Then I should be on the show creatives page

  Scenario: I should be alerted which fields are required
    When I navigate to the creatives controller page
    Then I should be on the creatives index page
    When I click the new creatives button
    Then I should be on the create creatives page
    When I click the create button
    Then I should see that the creative name field is in error
    And I should see that the creative pointer field is in error
    And I should see that the alt text field is in error
    And I should see that the size field is in error

  Scenario: I should be alerted that creative pointer is not a url
    When I navigate to the creatives controller page
    Then I should be on the creatives index page
    When I click the new creatives button
    Then I should be on the create creatives page
    When I enter a new creative
    And I enter an invalid creative pointer url
    And I click the create button
    Then I should see that the creative pointer field is in error

  Scenario: I should be alerted that click url is not a url
    When I navigate to the creatives controller page
    Then I should be on the creatives index page
    When I click the new creatives button
    Then I should be on the create creatives page
    When I enter a new creative
    And I enter an invalid click url
    And I click the create button
    Then I should see that click url field is in error

  Scenario: I should be alerted that third party is not a url
    When I navigate to the creatives controller page
    Then I should be on the creatives index page
    When I click the new creatives button
    Then I should be on the create creatives page
    When I enter a new creative
    And I enter an invalid third party url
    And I click the create button
    Then I should see that the third party url field is in error


