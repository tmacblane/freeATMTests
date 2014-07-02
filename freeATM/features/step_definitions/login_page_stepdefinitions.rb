Given(/^I do something$/) do
  @login_page = LoginPage.new(@browser)
  @login_page.login("info@freeATM.com", "testing!")
end