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
    first_name_textbox.clear
    first_name_textbox.send_keys(first_name)
  end

  def enter_last_name(last_name)
    last_name_textbox.clear
    last_name_textbox.send_keys(last_name)
  end

  def enter_title(title)
    title_textbox.clear
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

  def click_create_button
    create_button.click
  end

  def click_edit_button
    edit_button.click
  end

  def click_delete_button
    delete_button.click
  end

  def click_update_button
    update_button.click
  end

  def get_first_name_required_error_text
    first_name_required_error_label.text
  end

  def get_last_name_required_error_text
    last_name_required_error_label.text
  end

  def get_title_required_error_text
    title_required_error_label.text
  end

  def get_first_name_text
    first_name_label.text
  end

  def get_last_name_text
    last_name_label.text
  end

  def get_title_text
    title_label.text
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

  def create_button
    self.get_element(@browser, 'create')
  end

  def edit_button
    self.get_element(@browser, '//a[@class="edit"]')
  end

  def delete_button
    self.get_element(@browser, '//a[@class="delete"]')
  end

  def update_button
    self.get_element(@browser, '//input[@class="save"]')
  end

  def first_name_required_error_label
    self.get_element(@browser, '//li[@data-field-id="first_name"]')
  end

  def last_name_required_error_label
    self.get_element(@browser, '//li[@data-field-id="last_name"]')
  end

  def title_required_error_label
    self.get_element(@browser, '//li[@data-field-id="title"]')
  end

  def first_name_label
    self.get_element(@browser, '//span[@aria-labelledby="first_name-label"]')
  end

  def last_name_label
    self.get_element(@browser, '//span[@aria-labelledby="last_name-label"]')
  end

  def title_label
    self.get_element(@browser, '//span[@aria-labelledby="title-label"]')
  end

  def communications_label
    self.get_element(@browser, '//span[@aria-labelledby="communications-label"]')
  end

end