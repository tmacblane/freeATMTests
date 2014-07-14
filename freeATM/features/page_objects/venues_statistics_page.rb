require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class VenuesStatisticsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_venues_statistics_button
    new_venues_statistics_button.click
  end

  def select_venue_type(venue_type)
    option = Selenium::WebDriver::Support::Select.new(venue_type_dropdown_list)
    option.select_by(:text, venue_type)
  end

  def enter_gvt_entered(gvt_entered)
    gvt_entered_textbox.send_keys(gvt_entered)
  end

  def select_gvt_entered_type(gvt_entered_type)
    option = Selenium::WebDriver::Support::Select.new(gvt_entered_type_dropdown_list)
    option.select_by(:text, gvt_entered_type)
  end

  def select_location(location)
    option = Selenium::WebDriver::Support::Select.new(locations_dropdown_list)
    option.select_by(:text, location)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_venues_statistics_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/venues_statistics/create")]')
  end

  def venue_type_dropdown_list
    self.get_element(@browser, 'venue_type')
  end

  def gvt_entered_textbox
    self.get_element(@browser, 'gvt_entered')
  end

  def gvt_entered_type_dropdown_list
    self.get_element(@browser, 'gvt_enter_type')
  end

  def locations_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end