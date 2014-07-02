Feature: TestFeature

  Background:
    Given I am on the home page

    Scenario: Select Something
      When I navigate to the communications controller page
      Then I should be on the user login page
      When I log in as an admin user
      Then I should be on the home page
      When I navigate to the communications controller page
      Then I should be on the communications list page
      When I select the test@test.com communication
      Then I should be on the show communications page

