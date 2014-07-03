require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class LoginPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def enter_email_address(email_address)
    email_textbox.send_keys(email_address)
  end

  def enter_password(password)
    password_textbox.send_keys(password)
  end

  def click_login_button
    login_button.click
  end

  def login(email_address, password)
    self.enter_email_address(email_address)
    self.enter_password(password)
    self.click_login_button
  end

  def alert_message_visible
    alert_message.displayed?
  end

  private

  def email_textbox
    self.get_element(@browser, 'userName')
  end

  def password_textbox
    self.get_element(@browser, 'password')
  end

  def login_button
    self.get_element(@browser, 'login')
  end

  def alert_message
    self.get_element(@browser, '//div[@class="message"]')
  end

end