require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class LoginPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def enter_email_address(address)
    email_textbox.send_keys(address)
  end

  def enter_password(password)
    password_textbox.send_keys(password)
  end

  def click_login_button
    login_button.click
  end

  private

  def email_textbox
    self.get_element(@browser, 'emailTextBox', '')
  end

  def password_textbox
    self.get_element(@browser, 'passwordTextBox', '')
  end

  def login_button
    self.get_element(@browser, '//div[@id="ctl00_mainContentPlaceHolder_loginButton"]/div', '')
  end

end