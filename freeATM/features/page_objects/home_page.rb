require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class HomePage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def navigate_to_communications_controller
    communications_controller_link.click
  end

  private

  def communications_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li[1]/a')
  end

end