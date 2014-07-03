require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class OrganizationsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_organizations_button
    new_organizations_button.click
  end

  def click_organization_name_sort_link
    sort_organization_name_link.click
  end

  def click_alias_sort_link
    sort_alias_link.click
  end

  def click_classification_sort_link
    sort_classification_link.click
  end

  def enter_organization_name(organization_name)
    organization_name_textbox.send_keys(organization_name)
  end

  def enter_alias(alias_name)
    alias_textbox.send_keys(alias_name)
  end

  def select_classification(classification)
    option = Selenium::WebDriver::Support::Select.new(classification_dropdown_list)
    option.select_by(:text, classification)
  end

  #####add organizations locations
  def click_organizations_locations_link
    click_organizations_locations_link.click
  end

  def select_organization_location(organization_location)
    option = Selenium::WebDriver::Support::Select.new(organization_location_dropdown_list)
    option.select_by(:text, organization_location)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organization_dropdown_list)
    option.select_by(:text, organization)
  end

  def select_organization_type(organization_type)
    option = Selenium::WebDriver::Support::Select.new(organization_type_dropdown_list)
    option.select_by(:text, organization_type)
  end

  def click_create_organization_location_button
    create_organization_location_button.click
  end
  #####end add organizations locations

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_organizations_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/organizations/create")]')
  end

  def sort_organization_name_link
    self.get_element(@browser, '//div[@id="list-organizations"]/table/thead/tr/th[1]/a')
  end

  def sort_alias_link
    self.get_element(@browser, '//div[@id="list-organizations"]/table/thead/tr/th[2]/a')
  end

  def sort_classification_link
    self.get_element(@browser, '//div[@id="list-organizations"]/table/thead/tr/th[3]/a')
  end

  def organization_name_textbox
    self.get_element(@browser, 'organization_name')
  end

  def alias_textbox
    self.get_element(@browser, 'alias')
  end

  def classification_dropdown_list
    self.get_element(@browser, 'classification')
  end

  #####add organization
  def add_organizations_locations_link
    self.get_element(@browser, '//a[contains(@href, "/organizations_locations/create?organizations.id=")]')
  end

  def organization_location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def organization_type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def create_organization_location_button
    self.get_element(@browser, 'create')
  end
  #####end add organization

  def create_button
    self.get_element(@browser, 'create')
  end
end