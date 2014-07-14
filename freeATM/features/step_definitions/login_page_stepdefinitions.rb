When(/^I log in as an admin user$/) do
  @login_page.login('info@thefreeatm.com', 'Free8T#')
  #@login_page.login('test@test.com', 'tj123')
end

When(/^I click the login button$/) do
  @login_page.click_login_button
end

When(/^I log in as invalid user$/) do
  @login_page.login('invalid@test.com', 'password')
end

When(/^I enter the user name (.*)$/) do |username|
  @login_page.enter_email_address(username)
end

And(/^I enter the password (.*)$/) do |password|
  @login_page.enter_password(password)
end

Then(/^I should see a message alerting me that my information was not correct$/) do
  @login_page.alert_message_visible.should == true
end