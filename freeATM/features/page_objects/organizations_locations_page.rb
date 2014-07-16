require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class OrganizationsLocationsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_organizations_locations_button
    new_organizations_locations_button.click
  end

  def select_organization_location(organization_location)
    option = Selenium::WebDriver::Support::Select.new(location_dropdown_list)
    option.select_by(:text, organization_location)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organization_dropdown_list)
    option.select_by(:text, organization)
  end

  def select_type(organization_type)
    option = Selenium::WebDriver::Support::Select.new(type_dropdown_list)
    option.select_by(:text, organization_type)
  end

  def click_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################

  private

  def new_organizations_locations_button
    self.get_element(@browser, '//a[@href="/organizations_locations/create"]')
  end

  def location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def create_button
    self.get_element(@browser, 'create')
  end
end