require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class TargeteerPage < BrowserHelper

  def initialize(browser)
    @browser = browser
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