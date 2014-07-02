When(/^I navigate to the communications controller page$/) do
  @home_page.navigate_to_communications_controller
end

When(/^I log in as an admin user$/) do
  @login_page.login('test@test.com', 'tj123')
end

When(/^I select the (.*) communication$/) do |value|
  @communications_page.select_communication(value)
end