require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class TargeteerPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_atm_button
    atm_radio_button.click
  end

  def click_display_unit_button
    display_unit_radio_button.click
  end

  def click_point_radius_button
    point_radius_radio_button.click
  end

  def click_zip_code_button
    zip_code_radio_button.click
  end

  def select_neighborhoods_button
    neighborhoods_radio_button.click
  end

  def click_boroughs_button
    boroughs_radio_button.click
  end

  def enter_point_radius(point_radius)
    point_radius_textbox.send_keys(point_radius)
  end

  def enter_radius(radius)
    radius_textbox.send_keys(radius)
  end

  def enter_zip_code(zip_code)
    zip_code_textbox.send_keys(zip_code)
  end

  def select_neighbohood(neighborhood)
    option = Selenium::WebDriver::Support::Select.new(neighborhoods_listbox)
    option.select_by(:text, neighborhood)
  end

  def select_borough(borough)
    option = Selenium::WebDriver::Support::Select.new(borough_listbox)
    option.select_by(:text, borough)
  end

  def select_venue_type(venue_type)
    option = Selenium::WebDriver::Support::Select.new(venue_type_listbox)
    option.select_by(:text, venue_type)
  end

  def click_clear_button
    clear_button.click
  end

  def click_search_button
    search_button.click
  end

  def click_schedule_button
    schedule_button.click
  end

  def select_start_date_day(start_day)
    option = Selenium::WebDriver::Support::Select.new(start_date_day_dropdown_list)
    option.select_by(:text, start_day)
  end

  def select_start_date_month(start_month)
    option = Selenium::WebDriver::Support::Select.new(start_date_month_dropdown_list)
    option.select_by(:text, start_month)
  end

  def select_start_date_year(start_year)
    option = Selenium::WebDriver::Support::Select.new(start_date_year_dropdown_list)
    option.select_by(:text, start_year)
  end

  def select_end_date_day(end_day)
    option = Selenium::WebDriver::Support::Select.new(end_date_day_dropdown_list)
    option.select_by(:text, end_day)
  end

  def select_end_date_month(end_month)
    option = Selenium::WebDriver::Support::Select.new(end_date_month_dropdown_list)
    option.select_by(:text, end_month)
  end

  def select_end_date_year(end_year)
    option = Selenium::WebDriver::Support::Select.new(end_date_year_dropdown_list)
    option.select_by(:text, end_year)
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def atm_radio_button
    self.get_element(@browser, 'device')
  end

  def display_unit_radio_button
    self.get_element(@browser, 'device')
  end

  def point_radius_radio_button
    self.get_element(@browser, 'location')
  end

  def zip_code_radio_button
    self.get_element(@browser, '//form[@id="searchForm"]/div/input[4]')
  end

  def neighborhoods_radio_button
    self.get_element(@browser, '//form[@id="searchForm"]/div/input[5]')
  end

  def boroughs_radio_button
    self.get_element(@browser, '//form[@id="searchForm"]/div/input[6]')
  end

  def point_radius_textbox
    self.get_element(@browser, 'full_address')
  end

  def radius_textbox
    self.get_element(@browser, 'radius')
  end

  def zip_code_textbox
    self.get_element(@browser, 'postal_code')
  end

  def neighborhoods_listbox
    self.get_element(@browser, 'neighborhoods')
  end

  def borough_listbox
    self.get_element(@browser, 'divisions')
  end

  def venue_type_listbox
    self.get_element(@browser, 'venue_type')
  end

  def clear_button
    self.get_element(@browser, '//input[@value="Clear"]')
  end

  def search_button
    self.get_element(@browser, 'search')
  end

  def schedule_button
    self.get_element(@browser, 'schedule')
  end

  def start_date_day_dropdown_list
    self.get_element(@browser,' start_date_day')
  end

  def start_date_month_dropdown_list
    self.get_element(@browser, 'start_date_month')
  end

  def start_date_year_dropdown_list
    self.get_element(@browser, 'start_date_year')
  end

  def end_date_day_dropdown_list
    self.get_element(@browser, 'end_date_day')
  end

  def end_date_month_dropdown_list
    self.get_element(@browser, 'end_date_month')
  end

  def end_date_year_dropdown_list
    self.get_element(@browser, 'end_date_year')
  end

  def impressions_textbox
    self.get_element(@browser, 'impressions')
  end

  def ad_time_textbox
    self.get_element(@browser, 'ad_time')
  end

end