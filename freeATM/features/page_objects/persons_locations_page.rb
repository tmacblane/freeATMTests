require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class PersonsLocationsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def select_location(location)
    option = Selenium::WebDriver::Support::Select.new(location_dropdown_list)
    option.select_by(:text, location)
  end

  def select_person(person)
    option = Selenium::WebDriver::Support::Select.new(person_dropdown_list)
    option.select_by(:text, person)
  end

  def select_type(type)
    option = Selenium::WebDriver::Support::Select.new(person_type_dropdown_list)
    option.select_by(:text, type)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def person_type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

  def edit_button
    self.get_element(@browser, '//a[@class="edit"]')
  end

  def delete_button
    self.get_element(@browser, '//input[@class="delete"]')
  end

end