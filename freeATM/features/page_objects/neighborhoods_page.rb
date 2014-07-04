require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class NeighborhoodsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_locations_neighborhood_button
    click_new_locations_neighborhood_button.click
  end

  def click_locations_neighborhoods_list_button
    location_neighborhoods_list_button.click
  end

  def select_location(location)
    option = Selenium::WebDriver::Support::Select.new(location_dropdown_list)
    option.select_by(:text, location)
  end

  def select_neighborhood(neighborhood)
    option = Selenium::WebDriver::Support::Select.new(neighborhood_dropdown_list)
    option.select_by(:text, neighborhood)
  end

  def click_create_neighborhood_button
    create_neighborhood_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_neighborhoods_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/locations_neighborhoods/create")]')
  end

  def location_neighborhoods_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/locations_neighborhoods/index")]')
  end

  def location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def neighborhood_dropdown_list
    self.get_element(@browser, 'neighborhood')
  end

  def create_neighborhood_button
    self.get_element(@browser, 'create')
  end

end