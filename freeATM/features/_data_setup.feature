Feature: Data Setup

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page

  #create organization
  Scenario Outline: Create Organizations
    When I navigate to the organizations controller page
    Then I should be on the organizations index page
    When I click the new organizations button
    Then I should be on the create organizations page
    When I enter the organzation name <organization name>
    And I enter the alias <alias name>
    And I select the classification <classification type>
    And I click the create button
    Then I should be on the show organizations page

    Examples:
    | organization name | alias name | classification type |
    | Starbucks         | Starbucks  | Host                |
    | Blue Fountain Media | Blue Fountain | Agency         |
    | Fantasy Interactive | FI            | Agency         |
    | Big Spaceship       | Big Spaceship | Agency         |
    | Firstborn           | Firstborn     | Agency         |
    | B-Reel              | B-Reel        | Agency         |
    | Starbucks           | Starbucks     | Host           |
    | Classon Avenue Finest Deli | Classon Avenue Finest Deli | Host |
    | Prospect Deli              | Prospect Deli              | Host |
    | Nostrand Deli              | Nostrand Deli              | Host |
    | Franklin Deli              | Franklin Deli              | Host |
    | Stop Four Deli Inc         | Stop Four Deli Inc         | Host |
    | Univircitu Corner Deli     | Univircitu Corner Deli     | Host |
    | St John's Grocery          | St John's Grocery          | Host |
    | Gourmet Deli               | Gourmet Deli               | Host |
    | Shane's Cafe               | Shane's Cafe               | Host |
    | Beny's Delice              | Beny's Delice              | Host |
    | 6th Avenue Deli            | 6th Avenue Deli            | Host |
    | Park Slope Deli & Grocery  | Park Slope Deli & Grocery  | Host |
    | News Room                  | News Room                  | Host |
    | My Favorite Deli & Grocery | My Favorite Deli & Grocery | Host |
    | E H Goodies Deli           | E H Goodies Deli           | Host |
    | Starbucks                  | Starbucks                  | Host |
    | One Girl Cookies           | One Girl Cookies           | Host |
    | AlMar                      | AlMar                      | Host |
    | S & A Deli Grocery         | S & A Deli Grocery         | Host |
    | Franklin Corner Cafe       | Franklin Corner Cafe       | Host |
    | Staropolski Meat Market & Deli  | Staropolski Meat Market & Deli  | Host |
    | Crescent Gorment Deli & Grocery | Crescent Gorment Deli & Grocery | Host |
    | Five Corners Deli               | Five Corners Deli               | Host |
    | Sal Kris & Charlie's Deli       | Sal Kris & Charlie's Deli       | Host |
    | Othello's Deli                  | Othello's Deli                  | Host |
    | Butcher Deli                    | Butcher Deli                    | Host |
    | New Deli Grocery                | New Deli Grocery                | Host |
    | Tony's Deli                     | Tony's Deli                     | Host |

  Scenario Outline: Set up location data
    When I navigate to the locations controller page
    Then I should be on the locations index page
    When I click the new locations button
    Then I should be on the create locations page
    When I select the status <status>
    And I enter the address line one <address line one>
    And I enter the address line two <address line two>
    And I enter the city <city>
    And I select the state <state>
    And I enter the postal code <postal code>
    And I click the get lat and long button
    And I click the create button
    Then I should be on the show locations page

  Examples:
    | notes | address line one | address line two | city | state | postal code | status | neighborhood |
    | ORG - Blue Mountain Media | 102 Madison Ave  | Second Floor     | New York | New York | 10016 | Active | n/a |
    | ORG - Fantasy Interactive | 80 Franklin Street |                | New York | New York | 10013 | Active | n/a |
    | ORG - Big Spaceship       | 45 Main St         | Suite 716      | Brooklyn | New York | 11201 | Active | n/a |
    | ORG - Firstborn           | 32 Ave of the Americas | 5th Floor  | New York | New York | 10013 | Active | n/a |
    | ORG - B-Reel              | 401 Broadway           | 24th FL    | New York | New York | 10013 | Active | n/a |
    #| Host - Classon Avenue Finest Deli | 667 Classon Ave |           | Brooklyn | New York | 11238 | Active | crown heights |
    | Host - Prospect Deli              | 669 Nostrand Ave |          | Brooklyn | New York | 11216 | Active | crown heights |
    | Host - Nostrand Deli              | 777 Nostrand Ave |          | Brooklyn | New York | 11216 | Active | crown heights |
    | Host - Franklin Deli              | 871 Franklin Ave |          | Brooklyn | New York | 11225 | Active | crown heights |
    | Host - Stop Four Deli Inc         | 137 Kingston Avenue |       | Brooklyn | New York | 11213 | Active | crown heights |
    | Host - Univircitu Corner Deli     | 1618 Bedford Ave    |       | Brooklyn | New York | 11225 | Active | crown heights |
    | Host - St John's Grocery          | 1600 St Johns Pl    |       | Brooklyn | New York | 11233 | Active | crown heights |
    | Host - Gourmet Deli               | 387 Flatbush Ave | | Brooklyn | New York | 11238 | Active | prospect heights |
    | Host - Shane's Cafe               | 794 Washington Ave | | Brooklyn | New York | 11238 | Active | prospect heights |
    | Host - Beny's Delice              | 567 Vanderbilt Ave | | Brooklyn | New York | 11238 | Active | prospect heights |
    | Host - 6th Avenue Deli            | 133 6th Ave | | Brooklyn | New York | 11217 | Active | park slope |
    | Host - Park Slope Deli & Grocery  | 294 7th Ave | A | Brooklyn | New York | 11215 | Active | park slope |
    | Host - News Room                  | 168 7th Ave | | Brooklyn | New York | 11215 | Active | park slope |
    | Host - My Favorite Deli & Grocery | 513 5th Ave | | Brooklyn | New York | 11215 | Active | park slope |
    | Host - E H Goodies Deli           | 556 6th Ave | | Brooklyn | New York | 11215 | Active | park slope |
    | Host - Starbucks                  | 67 Front St | | Brooklyn | New York | 11201 | Active | DUMBO |
    | Host - One Girl Cookies           | 33 Main St | | Brooklyn | New York | 11201 | Active | DUMBO |
    | Host - AlMar                      | 111 Front St | | Brooklyn | New York | 11201 | Active | DUMBO |
    | Host - S & A Deli Grocery         | 1122 Manhattan Ave | | Brooklyn | New York | 11222 | Active | greenpoint |
    | Host - Franklin Corner Cafe       | 210 Franklin St | | Brooklyn | New York | 11222 | Active | greenpoint |
    | Host - Staropolski Meat Market & Deli | 912 Manhattan Ave | | Brooklyn | New York | 11222 | Active | greenpoint |
    | Host - Crescent Gorment Deli & Grocery | 27 2 Cres | | Astoria | New York | 11105 | Active | astoria |
    | Host - Five Corners Deli               | 2553 18th St | | Astoria | New York | 11102 | Active | astoria |
    | Host - Sal Kris & Charlie's Deli       | 33-12 23rd Ave | | Astoria | New York | 11105 | Active | astoria |
    | Host - Othello's Deli                  | 2619 24th Ave | | Long Island City | New York | 11102 | Active | long island city |
    | Host - Butcher Deli                    | 4916 Vernon Blvd | | Long Island City | New York | 11101 | Active | long island city |
    | Host - New Deli Grocery                | 4802 108th St | | Corona | New York | 11368 | Active | corona |
    | Host - Tony's Deli                     | 10115 Martense Ave | | Flushing | New York | 11368 | Active | flushing |
    | Host - Starbucks                       | 620 Atlantic Ave  | | Brooklyn | New York | 11217 | Active | prospect heights |
    | Host - Starbucks                       | 164 Smith Street  | | Brooklyn | New York | 11231 | Active | boerum hill      |
    | Host - Starbucks                       | 134 Montague St   | | Brooklyn | New York | 11201 | Active | brooklyn heights |
    | Host - Starbucks                       | 67 Front St       | | Brooklyn | New York | 11201 | Active | DUMBO            |
    | Host - Starbucks                       | 111 Worth St      | #4g | New York | New York | 10013 | Active | china town   |
    | Host - Starbucks                       | 345 Hudson St     |     | New York | New York | 10014 | Active | west village |
    | Host - Starbucks                       | 13-25 Astor Pl    |     | New York | New York | 10003 | Active | east village |
    | Host - Starbucks                       | 315 7th Ave       |     | New York | New York | 10001 | Active | mid town     |

    #assign organization locations
  Scenario Outline: Set organization locations
    When I navigate to the organizations locations controller page
    Then I should be on the organizations locations page