require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class PersonsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_persons_button
    new_persons_button.click
  end

  def click_sort_first_name_link
    sort_first_name_link.click
  end

  def click_sort_last_name_link
    sort_last_name_link.click
  end

  def click_sort_title_link
    sort_title_link.click
  end

  def click_persons_list_button
    persons_list_button.click
  end

  def enter_first_name(first_name)
    first_name_textbox.send_keys(first_name)
  end

  def enter_last_name(last_name)
    last_name_textbox.send_keys(last_name)
  end

  def enter_title(title)
    title_textbox.send_keys(title)
  end

  def select_communications(communications)
    option = Selenium::WebDriver::Support::Select.new(communications_listbox)
    option.select_by(:text, communications)
  end

  def select_insertion_orders(insertion_orders)
    option = Selenium::WebDriver::Support::Select.new(insertion_orders_listbox)
    option.select_by(:text, insertion_orders)
  end

  def click_add_persons_locations_link
    add_persons_locations_link.click
  end

  def select_persons_location(location)
    option = Selenium::WebDriver::Support::Select.new(persons_location_dropdown_list)
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

  def click_create_persons_location_button
    persons_locations_create_button.click
  end

  def click_create_button
    create_button.click
  end


  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_persons_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/persons/create")]')
  end

  def sort_first_name_link
    self.get_element(@browser, '//div[@id="list-persons"]/table/thead/tr/th[1]/a')
  end

  def sort_last_name_link
    self.get_element(@browser, '//div[@id="list-persons"]/table/thead/tr/th[2]/a')
  end

  def sort_title_link
    self.get_element(@browser, '//div[@id="list-persons"]/table/thead/tr/th[3]/a')
  end

  def persons_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/persons/index")]')
  end

  def first_name_textbox
    self.get_element(@browser, 'first_name')
  end

  def last_name_textbox
    self.get_element(@browser, 'last_name')
  end

  def title_textbox
    self.get_element(@browser, 'title')
  end

  def communications_listbox
    self.get_element(@browser, 'communications')
  end

  def insertion_orders_listbox
    self.get_element(@browser, 'insertion_orders')
  end

  def add_persons_locations_link
    self.get_element(@browser, '//a[contains(@href, "/persons_locations/create?persons.id=")]')
  end

  def persons_location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def person_type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def persons_locations_create_button
    self.get_element(@browser, 'create')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end