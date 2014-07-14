Feature: Communications Controller

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page
    When I navigate to the communications controller page
    Then I should be on the communications index page

  Scenario: I should be notified that communication value is required when creating a new communication
    When I click the new communications button
    Then I should be on the create communications page
    When I click the create button
    Then I should be alerted that communication value cannot be blank

  Scenario Outline: I should be notified that email address is not in the correct format when creating a new email communication
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter the communication value <email address>
    And I click the create button
    Then I should be alerted that my email is not in the corect format

    Examples:
    | email address |
    | value         |
    | value@        |
    | value@domain  |

  Scenario Outline: I should be able to create an email communication with a valid email address
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter a new email communication value <email address>
    And I click the create button
    Then I should be on the show communications page

  Examples:
    | email address |
    | value.value   |
    | value-value   |
    | value+value   |
    | value_value   |

  Scenario: I should not be able to create a duplicate email address
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter the communication value duplicate@test.com
    And I click the create button
    Then I should be on the show communications page
    When I click the new communications button
    Then I should be on the create communications page
    When I enter the communication value duplicate@test.com
    And I click the create button
    Then I should be alerted that the email entered already exists

  Scenario: I should be able to create a communication type of IM
    When I click the new communications button
    Then I should be on the create communications page
    When I select the IM communication type
    And I enter a new IM communication value
    And I click the create button
    Then I should be on the show communications page

  Scenario: I should be able to create a communication type of Phone Number
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Phone communication type
    And I enter a new Phone communication value
    And I click the create button
    Then I should be on the show communications page

  Scenario: I should be notified that my phone number is not in the correct format when creating a communication type of phone number


