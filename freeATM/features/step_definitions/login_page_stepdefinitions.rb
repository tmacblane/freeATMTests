Given(/^I do something$/) do
  @login_page = LoginPage.new(@browser)
  @login_page.click_email_textbox()
end