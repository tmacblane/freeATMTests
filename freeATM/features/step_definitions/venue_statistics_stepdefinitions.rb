When(/^I click the new venue statistics button$/) do
  @venue_statistics_page.click_new_venues_statistics_button
end

When(/^I select the venue type (.*)$/) do |venue_type|
  @venue_statistics_page.select_venue_type(venue_type)
end

And(/^I enter the gvt (.*)$/) do |gvt|
  @venue_statistics_page.enter_gvt_entered(gvt)
end

And(/^I select the gvt type (.*)$/) do |gvt_type|
  @venue_statistics_page.select_gvt_entered_type(gvt_type)
end