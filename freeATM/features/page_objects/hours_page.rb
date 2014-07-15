require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class HoursPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_hours_button
    new_hours_button.click
  end

  def click_hours_list_button
    hours_list_button.click
  end

  def select_location(address)
    option = Selenium::WebDriver::Support::Select.new(locations_dropdown_list)
    option.select_by(:text, address)
  end

  def select_weekday(day)
    option = Selenium::WebDriver::Support::Select.new(weekday_dropdown_list)
    option.select_by(:text, day)
  end

  def select_open_time(open_time)
    option = Selenium::WebDriver::Support::Select.new(open_time_dropdown_list)
    option.select_by(:text, open_time)
  end

  def select_close_time(close_time)
    option = Selenium::WebDriver::Support::Select.new(close_time_dropdown_list)
    option.select_by(:text, close_time)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################

  private

  def new_hours_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/hours/create"]')
  end

  def hours_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/hours/index"]')
  end

  def locations_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def weekday_dropdown_list
    self.get_element(@browser, 'weekday')
  end

  def open_time_dropdown_list
    self.get_element(@browser, 'open_time')
  end

  def close_time_dropdown_list
    self.get_element(@browser, 'close_time')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end