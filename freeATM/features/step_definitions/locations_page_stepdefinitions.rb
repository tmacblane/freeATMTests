When(/^I click the new locations button$/) do
  @locations_page.click_new_locations_button
end

When(/^I enter new location information$/) do
  @locations_page.enter_new_location
end

When(/^I enter the address line one (.*)$/) do |address_line_one|
  @locations_page.enter_address(address_line_one)
end

And(/^I enter the address line two (.*)$/) do |address_line_two|
  @locations_page.enter_address2(address_line_two)
end

And(/^I enter the city (.*)$/) do |city|
  @locations_page.enter_city(city)
end

And(/^I select the state (.*)$/) do |state|
  @locations_page.select_state(state)
end

And(/^I enter the postal code (.*)$/) do |postal_code|
  @locations_page.enter_postal_code(postal_code)
end

And(/^I click the get lat and long button$/) do
  @locations_page.click_get_lat_long_button
end

When(/^I select the status (.*)$/) do |status|
  @locations_page.select_status(status)
end