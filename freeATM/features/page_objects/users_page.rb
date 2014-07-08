require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class UsersPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_logout_button
    logout_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def logout_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/users/logout")]')
  end

end