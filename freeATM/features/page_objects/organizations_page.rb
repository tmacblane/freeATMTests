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
    organization_name_textbox.clear
    organization_name_textbox.send_keys(organization_name)
  end

  def enter_alias(alias_name)
    alias_textbox.clear
    alias_textbox.send_keys(alias_name)
  end

  def select_classification(classification)
    option = Selenium::WebDriver::Support::Select.new(classification_dropdown_list)
    option.select_by(:text, classification)
  end

  def click_create_button
    create_button.click
  end

  def click_add_organizations_locations_link
    add_organizations_locations_link.click
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

  def create_button
    self.get_element(@browser, 'create')
  end

  def add_organizations_locations_link
    self.get_element(@browser, '//a[contains(@href, "/organizations_locations/create?organizations.id=")]')
  end

end