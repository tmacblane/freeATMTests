require File.dirname(__FILE__) + '/../../support/browser_helper.rb'

class LoginPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_email_textbox
    @browser.click(email_textbox)
  end

  private

  def email_textbox
    return self.get_element('button', '')
  end

end