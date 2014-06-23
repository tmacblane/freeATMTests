Given(/^I do something$/) do
  @login_page = LoginPage.new(@browser)
  @login_page.enter_email_address('test@test.com')
  @login_page.enter_password('password')
  @login_page.click_login_button
end