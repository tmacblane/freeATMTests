require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class CommunicationPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_communications_button
    new_communications_button.click
  end

  def click_communications_list_button
    communications_list_button.click
  end

  def enter_communication_value(value)
    communication_value_textbox.send_keys(value)
  end

  def communication_value_textbox_visble
    communication_value_textbox.displayed?
  end

  def select_communication_type(type)
    option = Selenium::WebDriver::Support::Select.new(type_dropdown_list)
    option.select_by(:text, type)
  end

  def click_create_button
    create_button.click
  end

  def select_communication(communication_value)
    communication_table_communication_values.each do |value|
      if value.text == communication_value.strip
        value.click
        break
      end
    end
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_communications_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li/a[@href="/communications/index"]')
  end

  def communications_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li/a[@href="/communications/create"]')
  end

  def communication_value_textbox
    self.get_element(@browser, 'communication_Value')
  end

  def type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

  def communication_table_communication_values()
    self.get_elements(@browser, '//div[@id="list-communications"]/table/tbody/tr/td[1]/a')
  end

  def communication_table_type_values(additional_locator = '')
    self.get_elements(@browser, '//div[@id="list-communications"]/table/tbody/tr/td[2]/a', additional_locator)
  end
end