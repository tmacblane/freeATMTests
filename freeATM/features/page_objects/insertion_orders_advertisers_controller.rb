require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class InsertionOrdersAdvertisersController < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def select_insertion_order(insertion_order)
    option = Selenium::WebDriver::Support::Select.new(insertion_order_dropdown_list)
    option.select_by(:text, insertion_order)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organization_dropdown_list)
    option.select_by(:text, organization)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################

  private

  def insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end