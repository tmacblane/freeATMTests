Feature: Data Setup

  Background:
    Given I open the user login page
    Then I should be on the user login page
    When I log in as an admin user
    Then I should be on the home page

  Scenario Outline: Create Communications
    When I navigate to the communications controller page
    Then I should be on the communications index page
    When I click the new communications button
    Then I should be on the create communications page
    When I select the Email communication type
    And I enter the communication value <email address>
    And I click the create button
    Then I should be on the show communications page

    Examples:
    | email address                     |
    | agency_person@test.person.com     |
    | advertiser_person@test.person.com |
    | sales_person@test.person.com      |
    | trafficker_person@test.person.com |

  Scenario Outline: Create Insertion Order Persons
    When I navigate to the persons controller page
    Then I should be on the persons index page
    When I click the new persons button
    Then I should be on the create persons page
    When I enter the first name <first name>
    And I enter the last name <last name>
    And I enter the title <title>
    And I select the communication value <communication value>
    And I click the create button
    Then I should be on the show persons page

    Examples:
    | first name | last name  | title           | communication value               |
    | Agency     | Person     | Lead Agent      | agency_person@test.person.com     |
    | Advertiser | Person     |	Lead Advertiser | advertiser_person@test.person.com |
    | Sales      | Person     |	Lead Sales      | sales_person@test.person.com      |
    | Trafficker | Person     | Lead Trafficker	| trafficker_person@test.person.com |

  Scenario Outline: Create Insertion Order Organizations
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
    | organization name         | alias name     | classification type |
    | Agency Organization	    | Agency Org     | Agency              |
    | Advertiser Organization	| Advertiser Org | Advertiser          |

  Scenario Outline: Create Host Organizations
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
    | organization name               | alias name                      | classification type |
    | Starbucks                       | Starbucks                       | Host                |
    | Classon Avenue Finest Deli      | Classon Avenue Finest Deli      | Host                |
    | Prospect Deli                   | Prospect Deli                   | Host                |
    | Nostrand Deli                   | Nostrand Deli                   | Host                |
    | Franklin Deli                   | Franklin Deli                   | Host                |
    | Stop Four Deli Inc              | Stop Four Deli Inc              | Host                |
    | Univircitu Corner Deli          | Univircitu Corner Deli          | Host                |
    | St John's Grocery               | St John's Grocery               | Host                |
    | Gourmet Deli                    | Gourmet Deli                    | Host                |
    | Shane's Cafe                    | Shane's Cafe                    | Host                |
    | Beny's Delice                   | Beny's Delice                   | Host                |
    | 6th Avenue Deli                 | 6th Avenue Deli                 | Host                |
    | Park Slope Deli & Grocery       | Park Slope Deli & Grocery       | Host                |
    | News Room                       | News Room                       | Host                |
    | My Favorite Deli & Grocery      | My Favorite Deli & Grocery      | Host                |
    | E H Goodies Deli                | E H Goodies Deli                | Host                |
    | One Girl Cookies                | One Girl Cookies                | Host                |
    | AlMar                           | AlMar                           | Host                |
    | S & A Deli Grocery              | S & A Deli Grocery              | Host                |
    | Franklin Corner Cafe            | Franklin Corner Cafe            | Host                |
    | Staropolski Meat Market & Deli  | Staropolski Meat Market & Deli  | Host                |
    | Crescent Gorment Deli & Grocery | Crescent Gorment Deli & Grocery | Host                |
    | Five Corners Deli               | Five Corners Deli               | Host                |
    | Sal Kris & Charlie's Deli       | Sal Kris & Charlie's Deli       | Host                |
    | Othello's Deli                  | Othello's Deli                  | Host                |
    | Butcher Deli                    | Butcher Deli                    | Host                |
    | New Deli Grocery                | New Deli Grocery                | Host                |
    | Tony's Deli                     | Tony's Deli                     | Host                |

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
    | address line one    | address line two | city             | state    | postal code | status |
    | 102 Madison Ave     | Second Floor     | New York         | New York | 10016       | Active |
    | 80 Franklin Street  |                  | New York         | New York | 10013       | Active |
    | 669 Nostrand Ave    |                  | Brooklyn         | New York | 11216       | Active |
    | 777 Nostrand Ave    |                  | Brooklyn         | New York | 11216       | Active |
    | 871 Franklin Ave    |                  | Brooklyn         | New York | 11225       | Active |
    | 137 Kingston Avenue |                  | Brooklyn         | New York | 11213       | Active |
    | 1618 Bedford Ave    |                  | Brooklyn         | New York | 11225       | Active |
    | 1600 St Johns Pl    |                  | Brooklyn         | New York | 11233       | Active |
    | 387 Flatbush Ave    |                  | Brooklyn         | New York | 11238       | Active |
    | 794 Washington Ave  |                  | Brooklyn         | New York | 11238       | Active |
    | 567 Vanderbilt Ave  |                  | Brooklyn         | New York | 11238       | Active |
    | 133 6th Ave         |                  | Brooklyn         | New York | 11217       | Active |
    | 294 7th Ave         | A                | Brooklyn         | New York | 11215       | Active |
    | 168 7th Ave         |                  | Brooklyn         | New York | 11215       | Active |
    | 513 5th Ave         |                  | Brooklyn         | New York | 11215       | Active |
    | 556 6th Ave         |                  | Brooklyn         | New York | 11215       | Active |
    | 33 Main St          |                  | Brooklyn         | New York | 11201       | Active |
    | 111 Front St        |                  | Brooklyn         | New York | 11201       | Active |
    | 1122 Manhattan Ave  |                  | Brooklyn         | New York | 11222       | Active |
    | 210 Franklin St     |                  | Brooklyn         | New York | 11222       | Active |
    | 912 Manhattan Ave   |                  | Brooklyn         | New York | 11222       | Active |
    | 27 2 Cres           |                  | Astoria          | New York | 11105       | Active |
    | 2553 18th St        |                  | Astoria          | New York | 11102       | Active |
    | 33-12 23rd Ave      |                  | Astoria          | New York | 11105       | Active |
    | 2619 24th Ave       |                  | Long Island City | New York | 11102       | Active |
    | 4916 Vernon Blvd    |                  | Long Island City | New York | 11101       | Active |
    | 4802 108th St       |                  | Corona           | New York | 11368       | Active |
    | 10115 Martense Ave  |                  | Flushing         | New York | 11368       | Active |
    | 620 Atlantic Ave    |                  | Brooklyn         | New York | 11217       | Active |
    | 164 Smith Street    |                  | Brooklyn         | New York | 11231       | Active |
    | 134 Montague St     |                  | Brooklyn         | New York | 11201       | Active |
    | 67 Front St         |                  | Brooklyn         | New York | 11201       | Active |
    | 111 Worth St        | #4g              | New York         | New York | 10013       | Active |
    | 345 Hudson St       |                  | New York         | New York | 10014       | Active |
    | 13-25 Astor Pl      |                  | New York         | New York | 10003       | Active |
    | 315 7th Ave         |                  | New York         | New York | 10001       | Active |

  Scenario Outline: Set organization locations
    When I navigate to the organizations locations controller page
    Then I should be on the organizations locations index page
    When I click the new organizations location button
    Then I should be on the create organizations locations page
    When I select the location <location>
    And I select the organization <organization>
    And I select the type <type>
    And I click the create button
    Then I should be on the show organizations locations page

    Examples:
    | location                                           | organization                    | type   |
    | 102 Madison Ave, New York, New York 10016          | Agency Organization             | office |
    | 80 Franklin Street, New York, New York 10013       | Advertiser Organization         | office |
    | 669 Nostrand Ave, Brooklyn, New York 11216         | Prospect Deli                   | host   |
    | 777 Nostrand Ave, Brooklyn, New York 11216         | Nostrand Deli                   | host   |
    | 871 Franklin Ave, Brooklyn, New York 11225         | Franklin Deli                   | host   |
    | 137 Kingston Avenue, Brooklyn, New York 11213      | Stop Four Deli Inc              | host   |
    | 1618 Bedford Ave, Brooklyn, New York 11225         | Univircitu Corner Deli          | host   |
    | 1600 St Johns Pl, Brooklyn, New York 11233         | St John's Grocery               | host   |
    | 387 Flatbush Ave, Brooklyn, New York 11238         | Gourmet Deli                    | host   |
    | 794 Washington Ave, Brooklyn, New York 11238       | Shane's Cafe                    | host   |
    | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Beny's Delice                   | host   |
    | 133 6th Ave, Brooklyn, New York 11217              | 6th Avenue Deli                 | host   |
    | 294 7th Ave, Brooklyn, New York 11215              | Park Slope Deli & Grocery       | host   |
    | 168 7th Ave, Brooklyn, New York 11215              | News Room                       | host   |
    | 513 5th Ave, Brooklyn, New York 11215              | My Favorite Deli & Grocery      | host   |
    | 556 6th Ave, Brooklyn, New York 11215              | E H Goodies Deli                | host   |
    | 33 Main St, Brooklyn, New York 11201               | One Girl Cookies                | host   |
    | 111 Front St, Brooklyn, New York 11201             | AlMar                           | host   |
    | 1122 Manhattan Ave, Brooklyn, New York 11222       | S & A Deli Grocery              | host   |
    | 210 Franklin St, Brooklyn, New York 11222          | Franklin Corner Cafe            | host   |
    | 912 Manhattan Ave, Brooklyn, New York 11222        | Staropolski Meat Market & Deli  | host   |
    | 27 2 Cres, Astoria, New York 11105                 | Crescent Gorment Deli & Grocery | host   |
    | 2553 18th St, Astoria, New York 11102              | Five Corners Deli               | host   |
    | 33-12 23rd Ave, Astoria, New York 11105            | Sal Kris & Charlie's Deli       | host   |
    | 2619 24th Ave, Long Island City, New York 11102    | Othello's Deli                  | host   |
    | 4916 Vernon Blvd, Long Island City, New York 11101 | Butcher Deli                    | host   |
    | 4802 108th St, Corona, New York 11368              | New Deli Grocery                | host   |
    | 10115 Martense Ave, Flushing, New York 11368       | Tony's Deli                     | host   |
    | 620 Atlantic Ave, Brooklyn, New York 11217         | Starbucks                       | host   |
    | 164 Smith Street, Brooklyn, New York 11231         | Starbucks                       | host   |
    | 134 Montague St, Brooklyn, New York 11201          | Starbucks                       | host   |
    | 67 Front St, Brooklyn, New York 11201              | Starbucks                       | host   |
    | 111 Worth St, New York, New York 10013             | Starbucks                       | host   |
    | 345 Hudson St, New York, New York 10014            | Starbucks                       | host   |
    | 13-25 Astor Pl, New York, New York 10003           | Starbucks                       | host   |
    | 315 7th Ave, New York, New York 10001              | Starbucks                       | host   |

  Scenario Outline: Set Neighborhood Locations
    When I navigate to the locations neighborhood page
    Then I should be on the locations neighborhoods index page
    When I click the new locations neighbhorhood button
    Then I should be on the create locations neighborhoods page
    When I select the location <location>
    And I select the neighborhood <neighborhood>
    And I click the create button
    Then I should be on the show locations neighborhoods page

    Examples:
    | location                                           | neighborhood     |
    | 669 Nostrand Ave, Brooklyn, New York 11216         | Crown Heights    |
    | 777 Nostrand Ave, Brooklyn, New York 11216         | Crown Heights    |
    | 871 Franklin Ave, Brooklyn, New York 11225         | Crown Heights    |
    | 137 Kingston Avenue, Brooklyn, New York 11213      | Crown Heights    |
    | 1618 Bedford Ave, Brooklyn, New York 11225         | Crown Heights    |
    | 1600 St Johns Pl, Brooklyn, New York 11233         | Crown Heights    |
    | 387 Flatbush Ave, Brooklyn, New York 11238         | Prospect Heights |
    | 794 Washington Ave, Brooklyn, New York 11238       | Prospect Heights |
    | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Prospect Heights |
    | 133 6th Ave, Brooklyn, New York 11217              | Park Slope       |
    | 294 7th Ave, Brooklyn, New York 11215              | Park Slope       |
    | 168 7th Ave, Brooklyn, New York 11215              | Park Slope       |
    | 513 5th Ave, Brooklyn, New York 11215              | Park Slope       |
    | 556 6th Ave, Brooklyn, New York 11215              | Park Slope       |
    | 33 Main St, Brooklyn, New York 11201               | DUMBO            |
    | 111 Front St, Brooklyn, New York 11201             | DUMBO            |
    | 1122 Manhattan Ave, Brooklyn, New York 11222       | Greenpoint       |
    | 210 Franklin St, Brooklyn, New York 11222          | Greenpoint       |
    | 912 Manhattan Ave, Brooklyn, New York 11222        | Greenpoint       |
    | 27 2 Cres, Astoria, New York 11105                 | Astoria          |
    | 2553 18th St, Astoria, New York 11102              | Astoria          |
    | 33-12 23rd Ave, Astoria, New York 11105            | Astoria          |
    | 2619 24th Ave, Long Island City, New York 11102    | Long Island City |
    | 4916 Vernon Blvd, Long Island City, New York 11101 | Long Island City |
    | 4802 108th St, Corona, New York 11368              | Corona           |
    | 10115 Martense Ave, Flushing, New York 11368       | Flushing         |
    | 620 Atlantic Ave, Brooklyn, New York 11217         | Prospect Heights |
    | 164 Smith Street, Brooklyn, New York 11231         | Cobble Hill      |
    | 134 Montague St, Brooklyn, New York 11201          | Brooklyn Heights |
    | 67 Front St, Brooklyn, New York 11201              | DUMBO            |
    | 111 Worth St, New York, New York 10013             | Little Italy     |
    | 345 Hudson St, New York, New York 10014            | West Village     |
    | 13-25 Astor Pl, New York, New York 10003           | East Village     |
    | 315 7th Ave, New York, New York 10001              | Midtown West     |

  Scenario Outline: Set Location Hours
    When I navigate to the hours controller page
    Then I should be on the hours index page
    When I click the new hours button
    Then I should be on the create hours page
    When I select the location <location>
    And I select the weekday <weekday>
    And I select the opentime <opentime>
    And I select the closetime <closetime>
    And I click the create button
    Then I should be on the show hours page

    Examples:
      | location                                           | weekday   | opentime | closetime |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Sunday    | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Monday    | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Wednesday | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Thursday  | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Friday    | 8:00 AM  | 10:00 PM  |
      | 669 Nostrand Ave, Brooklyn, New York 11216         | Saturday  | 8:00 AM  | 10:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Sunday    | 11:00 AM | 9:00 PM   |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Monday    | 9:00 AM  | 11:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Tuesday   | 9:00 AM  | 11:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Wednesday | 9:00 AM  | 11:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Thursday  | 9:00 AM  | 11:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Friday    | 9:00 AM  | 11:00 PM  |
      | 777 Nostrand Ave, Brooklyn, New York 11216         | Saturday  | 9:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Sunday    | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Monday    | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Tuesday   | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Wednesday | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Thursday  | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Friday    | 4:00 AM  | 11:00 PM  |
      | 871 Franklin Ave, Brooklyn, New York 11225         | Saturday  | 4:00 AM  | 11:00 PM  |
      | 137 Kingston Avenue, Brooklyn, New York 11213      | Wednesday | 6:00 AM  | 9:00 PM   |
      | 137 Kingston Avenue, Brooklyn, New York 11213      | Thursday  | 6:00 AM  | 9:00 PM   |
      | 137 Kingston Avenue, Brooklyn, New York 11213      | Friday    | 6:00 AM  | 9:00 PM   |
      | 137 Kingston Avenue, Brooklyn, New York 11213      | Saturday  | 6:00 AM  | 9:00 PM   |
      | 1618 Bedford Ave, Brooklyn, New York 11225         | Monday    | 4:00 AM  | 11:00 PM  |
      | 1618 Bedford Ave, Brooklyn, New York 11225         | Wednesday | 4:00 AM  | 11:00 PM  |
      | 1618 Bedford Ave, Brooklyn, New York 11225         | Friday    | 4:00 AM  | 11:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Sunday    | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Monday    | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Wednesday | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Thursday  | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Friday    | 8:00 AM  | 10:00 PM  |
      | 1600 St Johns Pl, Brooklyn, New York 11233         | Saturday  | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Monday    | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Wednesday | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Thursday  | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Friday    | 8:00 AM  | 10:00 PM  |
      | 387 Flatbush Ave, Brooklyn, New York 11238         | Saturday  | 8:00 AM  | 10:00 PM  |
      | 794 Washington Ave, Brooklyn, New York 11238       | Sunday    | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Monday    | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Tuesday   | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Wednesday | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Thursday  | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Friday    | 8:00 AM  | 8:00 PM   |
      | 794 Washington Ave, Brooklyn, New York 11238       | Saturday  | 8:00 AM  | 8:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Monday    | 12:00 PM | 6:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Tuesday   | 12:00 PM | 6:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Wednesday | 12:00 PM | 6:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Thursday  | 12:00 PM | 6:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Friday    | 12:00 PM | 6:00 PM   |
      | 567 Vanderbilt Ave, Brooklyn, New York 11238       | Saturday  | 12:00 PM | 6:00 PM   |
      | 133 6th Ave, Brooklyn, New York 11217              | Sunday    | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Monday    | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Wednesday | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Thursday  | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Friday    | 8:00 AM  | 10:00 PM  |
      | 133 6th Ave, Brooklyn, New York 11217              | Saturday  | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Sunday    | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Monday    | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Wednesday | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Thursday  | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Friday    | 8:00 AM  | 10:00 PM  |
      | 294 7th Ave, Brooklyn, New York 11215              | Saturday  | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Sunday    | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Monday    | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Wednesday | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Thursday  | 8:00 AM  | 10:00 PM  |
      | 168 7th Ave, Brooklyn, New York 11215              | Friday    | 8:00 AM  | 10:00 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Sunday    | 8:30 AM  | 10:30 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Monday    | 8:30 AM  | 10:30 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Tuesday   | 8:30 AM  | 10:30 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Wednesday | 8:30 AM  | 10:30 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Thursday  | 8:30 AM  | 10:30 PM  |
      | 513 5th Ave, Brooklyn, New York 11215              | Friday    | 8:30 AM  | 10:30 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Sunday    | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Monday    | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Wednesday | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Thursday  | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Friday    | 8:00 AM  | 10:00 PM  |
      | 556 6th Ave, Brooklyn, New York 11215              | Saturday  | 8:00 AM  | 10:00 PM  |
      | 33 Main St, Brooklyn, New York 11201               | Wednesday | 8:00 AM  | 10:00 PM  |
      | 33 Main St, Brooklyn, New York 11201               | Thursday  | 8:00 AM  | 10:00 PM  |
      | 33 Main St, Brooklyn, New York 11201               | Friday    | 8:00 AM  | 10:00 PM  |
      | 111 Front St, Brooklyn, New York 11201             | Monday    | 8:00 AM  | 10:00 PM  |
      | 111 Front St, Brooklyn, New York 11201             | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 111 Front St, Brooklyn, New York 11201             | Wednesday | 8:00 AM  | 10:00 PM  |
      | 111 Front St, Brooklyn, New York 11201             | Thursday  | 8:00 AM  | 10:00 PM  |
      | 111 Front St, Brooklyn, New York 11201             | Friday    | 8:00 AM  | 10:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Sunday    | 11:00 AM | 9:00 PM   |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Monday    | 9:00 AM  | 11:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Tuesday   | 9:00 AM  | 11:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Wednesday | 9:00 AM  | 11:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Thursday  | 9:00 AM  | 11:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Friday    | 9:00 AM  | 11:00 PM  |
      | 1122 Manhattan Ave, Brooklyn, New York 11222       | Saturday  | 9:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Sunday    | 7:00 AM  | 9:00 PM   |
      | 210 Franklin St, Brooklyn, New York 11222          | Monday    | 6:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Tuesday   | 6:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Wednesday | 6:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Thursday  | 6:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Friday    | 6:00 AM  | 11:00 PM  |
      | 210 Franklin St, Brooklyn, New York 11222          | Saturday  | 6:00 AM  | 11:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Sunday    | 11:00 AM | 10:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Monday    | 8:00 AM  | 11:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Tuesday   | 2:00 PM  | 10:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Wednesday | 2:00 PM  | 11:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Thursday  | 2:00 PM  | 10:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Friday    | 8:00 AM  | 11:00 PM  |
      | 912 Manhattan Ave, Brooklyn, New York 11222        | Saturday  | 8:00 AM  | 10:00 PM  |
      | 27 2 Cres, Astoria, New York 11105                 | Tuesday   | 4:00 PM  | Midnight  |
      | 27 2 Cres, Astoria, New York 11105                 | Wednesday | 4:00 PM  | Midnight  |
      | 27 2 Cres, Astoria, New York 11105                 | Thursday  | 4:00 PM  | Midnight  |
      | 27 2 Cres, Astoria, New York 11105                 | Friday    | 8:00 AM  | Midnight  |
      | 27 2 Cres, Astoria, New York 11105                 | Saturday  | 8:00 AM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Monday    | 4:00 PM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Monday    | Midnight | 2:00 AM   |
      | 2553 18th St, Astoria, New York 11102              | Tuesday   | 4:00 PM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Tuesday   | Midnight | 2:00 AM   |
      | 2553 18th St, Astoria, New York 11102              | Wednesday | 4:00 PM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Wednesday | Midnight | 2:00 AM   |
      | 2553 18th St, Astoria, New York 11102              | Thursday  | 4:00 PM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Thursday  | Midnight | 2:00 AM   |
      | 2553 18th St, Astoria, New York 11102              | Friday    | 4:00 PM  | Midnight  |
      | 2553 18th St, Astoria, New York 11102              | Friday    | Midnight | 2:00 AM   |
      | 33-12 23rd Ave, Astoria, New York 11105            | Sunday    | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Monday    | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Tuesday   | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Wednesday | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Thursday  | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Friday    | 8:00 AM  | 10:30 PM  |
      | 33-12 23rd Ave, Astoria, New York 11105            | Saturday  | 8:00 AM  | 10:30 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Sunday    | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Monday    | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Tuesday   | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Wednesday | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Thursday  | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Friday    | 8:00 AM  | 10:00 PM  |
      | 2619 24th Ave, Long Island City, New York 11102    | Saturday  | 8:00 AM  | 10:00 PM  |
      | 4916 Vernon Blvd, Long Island City, New York 11101 | Monday    | 8:00 AM  | 10:00 PM  |
      | 4916 Vernon Blvd, Long Island City, New York 11101 | Wednesday | 8:00 AM  | 10:00 PM  |
      | 4916 Vernon Blvd, Long Island City, New York 11101 | Thursday  | 8:00 AM  | 10:00 PM  |
      | 4802 108th St, Corona, New York 11368              | Monday    | 5:00 AM  | 10:00 PM  |
      | 4802 108th St, Corona, New York 11368              | Tuesday   | 5:00 AM  | 10:00 PM  |
      | 4802 108th St, Corona, New York 11368              | Wednesday | 5:00 AM  | 10:00 PM  |
      | 4802 108th St, Corona, New York 11368              | Thursday  | 5:00 AM  | 10:00 PM  |
      | 4802 108th St, Corona, New York 11368              | Friday    | 5:00 AM  | 10:00 PM  |
      | 10115 Martense Ave, Flushing, New York 11368       | Sunday    | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Monday    | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Tuesday   | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Wednesday | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Thursday  | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Friday    | 4:00 AM  | 2:00 PM   |
      | 10115 Martense Ave, Flushing, New York 11368       | Saturday  | 4:00 AM  | 2:00 PM   |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Sunday    | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Monday    | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Tuesday   | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Wednesday | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Thursday  | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Friday    | Midnight | Midnight  |
      | 620 Atlantic Ave, Brooklyn, New York 11217         | Saturday  | Midnight | Midnight  |
      | 164 Smith Street, Brooklyn, New York 11231         | Sunday    | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Monday    | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Tuesday   | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Wednesday | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Thursday  | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Friday    | 4:00 AM  | 11:30 PM  |
      | 164 Smith Street, Brooklyn, New York 11231         | Saturday  | 4:00 AM  | 11:30 PM  |
      | 134 Montague St, Brooklyn, New York 11201          | Tuesday   | 4:00 AM  | 11:30 PM  |
      | 134 Montague St, Brooklyn, New York 11201          | Friday    | 4:00 AM  | 11:30 PM  |
      | 134 Montague St, Brooklyn, New York 11201          | Saturday  | 4:00 AM  | 8:30 PM   |
      | 67 Front St, Brooklyn, New York 11201              | Sunday    | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Monday    | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Tuesday   | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Wednesday | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Thursday  | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Friday    | 6:00 AM  | 11:00 PM  |
      | 67 Front St, Brooklyn, New York 11201              | Saturday  | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Sunday    | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Monday    | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Tuesday   | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Wednesday | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Thursday  | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Friday    | 6:00 AM  | 11:00 PM  |
      | 111 Worth St, New York, New York 10013             | Saturday  | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Sunday    | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Monday    | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Tuesday   | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Wednesday | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Thursday  | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Friday    | 6:00 AM  | 11:00 PM  |
      | 345 Hudson St, New York, New York 10014            | Saturday  | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Sunday    | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Monday    | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Tuesday   | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Wednesday | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Thursday  | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Friday    | 6:00 AM  | 11:00 PM  |
      | 13-25 Astor Pl, New York, New York 10003           | Saturday  | 6:00 AM  | 11:00 PM  |
      | 315 7th Ave, New York, New York 10001              | Sunday    | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Monday    | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Tuesday   | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Wednesday | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Thursday  | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Friday    | 6:00 AM  | 10:30 PM  |
      | 315 7th Ave, New York, New York 10001              | Saturday  | 6:00 AM  | 10:30 PM  |

  Scenario Outline: Create Insertion Order
    When I navigate to the insertion orders controller page
    Then I should be on the insertion orders index page
    When I click the new insertion orders button
    Then I should be on the create insertion orders page
    When I enter the insertion order name <insertion order name>
    And I enter the po number <po number>
    And I enter the notes <notes>
    And I click the create button
    Then I should be on the show insertion orders page

  Examples:
    | insertion order name | po number | notes                                                              |
    | IO Stargate Ads      | PO-       | Integer dui nisl, vulputate tempor accumsan ac, sodales sed velit. |

  Scenario Outline: Create Devices
    When I navigate to the devices controller page
    Then I should be on the devices index page
    When I click the new devices button
    Then I should be on the create devices page
    When I select the device type <device type>
    And I enter the model type <model type>
    And I enter the serial number <serial number>
    And I select the status <status>
    And I select the location <location>
    And I click the create button
    Then I should be on the show devices page

    Examples:
    | device type | model type  | serial number | status     | location                                           |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 669 Nostrand Ave, Brooklyn, New York 11216         |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 777 Nostrand Ave, Brooklyn, New York 11216         |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 871 Franklin Ave, Brooklyn, New York 11225         |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 137 Kingston Avenue, Brooklyn, New York 11213      |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 1618 Bedford Ave, Brooklyn, New York 11225         |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 1600 St Johns Pl, Brooklyn, New York 11233         |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 387 Flatbush Ave, Brooklyn, New York 11238         |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 794 Washington Ave, Brooklyn, New York 11238       |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 567 Vanderbilt Ave, Brooklyn, New York 11238       |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 133 6th Ave, Brooklyn, New York 11217              |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 294 7th Ave, Brooklyn, New York 11215              |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 168 7th Ave, Brooklyn, New York 11215              |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 513 5th Ave, Brooklyn, New York 11215              |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 556 6th Ave, Brooklyn, New York 11215              |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 33 Main St, Brooklyn, New York 11201               |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 111 Front St, Brooklyn, New York 11201             |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 1122 Manhattan Ave, Brooklyn, New York 11222       |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 210 Franklin St, Brooklyn, New York 11222          |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 912 Manhattan Ave, Brooklyn, New York 11222        |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 27 2 Cres, Astoria, New York 11105                 |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 2553 18th St, Astoria, New York 11102              |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 33-12 23rd Ave, Astoria, New York 11105            |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 2619 24th Ave, Long Island City, New York 11102    |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 4916 Vernon Blvd, Long Island City, New York 11101 |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 4802 108th St, Corona, New York 11368              |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 10115 Martense Ave, Flushing, New York 11368       |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 620 Atlantic Ave, Brooklyn, New York 11217         |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 164 Smith Street, Brooklyn, New York 11231         |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 134 Montague St, Brooklyn, New York 11201          |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 67 Front St, Brooklyn, New York 11201              |
    | ATM         | ATM-SGCAU42 | ATM-          | Tentative  | 111 Worth St, New York, New York 10013             |
    | ATM         | ATM-SGCAU42 | ATM-          | Offline    | 345 Hudson St, New York, New York 10014            |
    | ATM         | ATM-SGCAU42 | ATM-          | Terminated | 13-25 Astor Pl, New York, New York 10003           |
    | ATM         | ATM-SGCAU42 | ATM-          | Active     | 315 7th Ave, New York, New York 10001              |
    | DU          | DU-FS1      | DU-           | Active     | 669 Nostrand Ave, Brooklyn, New York 11216         |
    | DU          | DU-FS1      | DU-           | Tentative  | 777 Nostrand Ave, Brooklyn, New York 11216         |
    | DU          | DU-FS1      | DU-           | Offline    | 871 Franklin Ave, Brooklyn, New York 11225         |
    | DU          | DU-FS1      | DU-           | Terminated | 137 Kingston Avenue, Brooklyn, New York 11213      |
    | DU          | DU-FS1      | DU-           | Active     | 1618 Bedford Ave, Brooklyn, New York 11225         |
    | DU          | DU-FS1      | DU-           | Tentative  | 1600 St Johns Pl, Brooklyn, New York 11233         |
    | DU          | DU-FS1      | DU-           | Offline    | 387 Flatbush Ave, Brooklyn, New York 11238         |
    | DU          | DU-FS1      | DU-           | Terminated | 794 Washington Ave, Brooklyn, New York 11238       |
    | DU          | DU-FS1      | DU-           | Active     | 567 Vanderbilt Ave, Brooklyn, New York 11238       |
    | DU          | DU-FS1      | DU-           | Tentative  | 133 6th Ave, Brooklyn, New York 11217              |
    | DU          | DU-FS1      | DU-           | Offline    | 294 7th Ave, Brooklyn, New York 11215              |
    | DU          | DU-FS1      | DU-           | Terminated | 168 7th Ave, Brooklyn, New York 11215              |
    | DU          | DU-FS1      | DU-           | Active     | 513 5th Ave, Brooklyn, New York 11215              |
    | DU          | DU-FS1      | DU-           | Tentative  | 556 6th Ave, Brooklyn, New York 11215              |
    | DU          | DU-FS1      | DU-           | Offline    | 33 Main St, Brooklyn, New York 11201               |
    | DU          | DU-FS1      | DU-           | Terminated | 111 Front St, Brooklyn, New York 11201             |
    | DU          | DU-FS1      | DU-           | Active     | 1122 Manhattan Ave, Brooklyn, New York 11222       |
    | DU          | DU-FS1      | DU-           | Tentative  | 210 Franklin St, Brooklyn, New York 11222          |
    | DU          | DU-FS1      | DU-           | Offline    | 912 Manhattan Ave, Brooklyn, New York 11222        |
    | DU          | DU-FS1      | DU-           | Terminated | 27 2 Cres, Astoria, New York 11105                 |
    | DU          | DU-FS1      | DU-           | Active     | 2553 18th St, Astoria, New York 11102              |
    | DU          | DU-FS1      | DU-           | Tentative  | 33-12 23rd Ave, Astoria, New York 11105            |
    | DU          | DU-FS1      | DU-           | Offline    | 2619 24th Ave, Long Island City, New York 11102    |
    | DU          | DU-FS1      | DU-           | Terminated | 4916 Vernon Blvd, Long Island City, New York 11101 |
    | DU          | DU-FS1      | DU-           | Active     | 4802 108th St, Corona, New York 11368              |
    | DU          | DU-FS1      | DU-           | Active     | 10115 Martense Ave, Flushing, New York 11368       |
    | DU          | DU-FS1      | DU-           | Active     | 620 Atlantic Ave, Brooklyn, New York 11217         |
    | DU          | DU-FS1      | DU-           | Active     | 164 Smith Street, Brooklyn, New York 11231         |
    | DU          | DU-FS1      | DU-           | Active     | 134 Montague St, Brooklyn, New York 11201          |
    | DU          | DU-FS1      | DU-           | Active     | 67 Front St, Brooklyn, New York 11201              |
    | DU          | DU-FS1      | DU-           | Active     | 111 Worth St, New York, New York 10013             |
    | DU          | DU-FS1      | DU-           | Tentative  | 345 Hudson St, New York, New York 10014            |
    | DU          | DU-FS1      | DU-           | Offline    | 13-25 Astor Pl, New York, New York 10003           |
    | DU          | DU-FS1      | DU-           | Terminated | 315 7th Ave, New York, New York 10001              |

  Scenario Outline: Set venue statistics
    When I navigate to the venues statistics controller page
    Then I should be on the venue statistics index page
    When I click the new venue statistics button
    Then I should be on the create venue statistics page
    When I select the venue type <venue type>
    And I enter the gvt <gvt>
    And I select the gvt type <gvt type>
    And I select the location <location>
    And I click the create button
    Then I should be on the show venue statistics page

    Examples:
    | venue type        | gvt    | gvt type | location                                           |
    | Convenience Store | 5000   | Monthly  | 669 Nostrand Ave, Brooklyn, New York 11216         |
    | Convenience Store | 10000  | Monthly  | 777 Nostrand Ave, Brooklyn, New York 11216         |
    | Convenience Store | 100000 | Yearly   | 871 Franklin Ave, Brooklyn, New York 11225         |
    | Convenience Store | 1000   | Weekly   | 137 Kingston Avenue, Brooklyn, New York 11213      |
    | Convenience Store | 2500   | Weekly   | 1618 Bedford Ave, Brooklyn, New York 11225         |
    | Convenience Store | 3000   | Weekly   | 1600 St Johns Pl, Brooklyn, New York 11233         |
    | Convenience Store | 4000   | Weekly   | 387 Flatbush Ave, Brooklyn, New York 11238         |
    | Convenience Store | 8000   | Monthly  | 794 Washington Ave, Brooklyn, New York 11238       |
    | Convenience Store | 8000   | Monthly  | 567 Vanderbilt Ave, Brooklyn, New York 11238       |
    | Convenience Store | 4000   | Monthly  | 133 6th Ave, Brooklyn, New York 11217              |
    | Convenience Store | 4000   | Monthly  | 294 7th Ave, Brooklyn, New York 11215              |
    | Convenience Store | 400    | Monthly  | 168 7th Ave, Brooklyn, New York 11215              |
    | Convenience Store | 100    | Weekly   | 513 5th Ave, Brooklyn, New York 11215              |
    | Convenience Store | 1600   | Monthly  | 556 6th Ave, Brooklyn, New York 11215              |
    | Convenience Store | 8000   | Weekly   | 33 Main St, Brooklyn, New York 11201               |
    | Convenience Store | 24000  | Monthly  | 111 Front St, Brooklyn, New York 11201             |
    | Convenience Store | 96000  | Yearly   | 1122 Manhattan Ave, Brooklyn, New York 11222       |
    | Convenience Store | 48000  | Yearly   | 210 Franklin St, Brooklyn, New York 11222          |
    | Convenience Store | 12000  | Yearly   | 912 Manhattan Ave, Brooklyn, New York 11222        |
    | Convenience Store | 1000   | Monthly  | 27 2 Cres, Astoria, New York 11105                 |
    | Convenience Store | 800    | Weekly   | 2553 18th St, Astoria, New York 11102              |
    | Convenience Store | 100    | Weekly   | 33-12 23rd Ave, Astoria, New York 11105            |
    | Convenience Store | 6000   | Weekly   | 2619 24th Ave, Long Island City, New York 11102    |
    | Convenience Store | 8000   | Monthly  | 4916 Vernon Blvd, Long Island City, New York 11101 |
    | Convenience Store | 96000  | Yearly   | 4802 108th St, Corona, New York 11368              |
    | Convenience Store | 96000  | Yearly   | 10115 Martense Ave, Flushing, New York 11368       |
    | Cafe              | 24000  | Yearly   | 620 Atlantic Ave, Brooklyn, New York 11217         |
    | Cafe              | 24000  | Yearly   | 164 Smith Street, Brooklyn, New York 11231         |
    | Cafe              | 4000   | Monthly  | 134 Montague St, Brooklyn, New York 11201          |
    | Cafe              | 24000  | Yearly   | 67 Front St, Brooklyn, New York 11201              |
    | Cafe              | 24000  | Yearly   | 111 Worth St, New York, New York 10013             |
    | Cafe              | 4000   | Monthly  | 345 Hudson St, New York, New York 10014            |
    | Cafe              | 1000   | Weekly   | 13-25 Astor Pl, New York, New York 10003           |
    | Cafe              | 1000   | Weekly   | 315 7th Ave, New York, New York 10001              |
