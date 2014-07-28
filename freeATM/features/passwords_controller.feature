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

  Scenario: I should be able to assign a password to a person
    When I open the home page
    When I navigate to the communications controller page
    Then I should be on the communications index page
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter a new email communication value
    And I click the create button
    Then I should be on the show communications page
    And I should see the page title Show Communications
    When I open the home page
    Then I should be on the home page
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I enter a new first name
    And I enter a new last name
    And I enter the title Boss Man
    And I select the newly created communication value
    And I click the create button
    Then I should be on the show persons page
    And I should see the page title Show Persons
    When I open the home page
    And I navigate to the passwords controller page
    Then I should be on the passwords index page
    When I click the new passwords button
    Then I should be on the create password page
    When I enter the password testing!
    And I select the newly created person value
    And I click the create button
    Then I should be on the show passwords page
    And I should see the page title Show Passwords

  Scenario: I should be able to log in with the new password assigned to a person
    When I open the home page
    When I navigate to the communications controller page
    Then I should be on the communications index page
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter a new email communication value
    And I click the create button
    Then I should be on the show communications page
    And I should see the page title Show Communications
    When I open the home page
    Then I should be on the home page
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I enter a new first name
    And I enter a new last name
    And I enter the title Boss Man
    And I select the newly created communication value
    And I click the create button
    Then I should be on the show persons page
    And I should see the page title Show Persons
    When I open the home page
    And I navigate to the passwords controller page
    Then I should be on the passwords index page
    When I click the new passwords button
    Then I should be on the create password page
    When I enter the password testing!
    And I select the newly created person value
    And I click the create button
    Then I should be on the show passwords page
    And I should see the page title Show Passwords
    When I open the home page
    And I navigate to the users controller page
    Then I should be on the users index page
    When I click the logout button
    Then I should be on the user login page
    When I log in as the newly created user
    Then I should be on the home page

