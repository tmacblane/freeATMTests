require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class DevicePage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_devices_button
    new_device_button.click
  end

  def click_sort_device_type_link
    sort_device_type_link.click
  end

  def click_sort_model_type_link
    sort_model_type_link.click
  end

  def click_sort_serial_number_link
    sort_serial_number_link.click
  end

  def click_sort_status_link
    sort_status_link.click
  end

  def click_sort_external_id_link
    sort_external_id_link.click
  end

  def click_sort_locations_link
    sort_locations_link.click
  end

  def click_devices_list_button
    devices_list_button.click
  end

  def select_device_type(type)
    option = Selenium::WebDriver::Support::Select.new(device_type_dropdown_list)
    option.select_by(:text, type)
  end

  def enter_model_type(model_type)
    model_type_textbox.clear
    model_type_textbox.send_keys(model_type)
  end

  def enter_serial_number(serial_number)
    serial_number_textbox.clear
    serial_number_textbox.send_keys(serial_number)
  end

  def select_location(address)
    option = Selenium::WebDriver::Support::Select.new(locations_dropdown_list)
    option.select_by(:text, address)
  end

  def select_status(status)
    option = Selenium::WebDriver::Support::Select.new(status_dropdown_list)
    option.select_by(:text, status)
  end

  def enter_external_id(external_id)
    external_id_textbox.clear
    external_id_textbox.send_keys(external_id)
  end

  def click_create_button
    create_button.click
  end



  ###########################
  ##### Page Properties #####
  ###########################

  private

  def new_device_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/devices/create"]')
  end

  def sort_device_type_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[1]/a')
  end

  def sort_model_type_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[2]/a')
  end

  def sort_serial_number_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[3]/a')
  end

  def sort_status_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[4]/a')
  end

  def sort_external_id_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[5]/a')
  end

  def sort_locations_link
    self.get_element(@browser, '//div[@id="list-devices"]/table/thead/tr/th[6]/a')
  end

  def devices_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/devices/index"]')
  end

  def device_type_dropdown_list
    self.get_element(@browser, 'device_type')
  end

  def model_type_textbox
    self.get_element(@browser, 'model_type')
  end

  def serial_number_textbox
    self.get_element(@browser, 'serial_number')
  end

  def status_dropdown_list
    self.get_element(@browser, 'status')
  end

  def external_id_textbox
    self.get_element(@browser, 'external_id')
  end

  def locations_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end