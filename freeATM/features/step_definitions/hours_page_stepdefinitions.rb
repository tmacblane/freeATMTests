When(/^I click the new hours button$/) do
  @hours_page.click_new_hours_button
end

And(/^I select the weekday (.*)$/) do |weekday|
  @hours_page.select_weekday(weekday)
end

And(/^I select the opentime (.*)$/) do |opentime|
  @hours_page.select_open_time(opentime)
end

And(/^I select the closetime (.*)$/) do |closetime|
  @hours_page.select_close_time(closetime)
end