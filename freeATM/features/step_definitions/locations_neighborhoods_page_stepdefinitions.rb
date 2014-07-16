When(/^I click the new locations neighbhorhood button$/) do
  @locations_neighborhoods_page.click_new_locations_neighborhood_button
end

And(/^I select the neighborhood (.*)$/) do |neighborhood|
  @locations_neighborhoods_page.select_neighborhood(neighborhood)
end