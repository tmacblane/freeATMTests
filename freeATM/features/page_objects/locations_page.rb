require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class LocationsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_locations_button
    new_locations_button.click
  end

  def click_sort_status_link
    sort_status_link.click
  end

  def click_sort_address_link
    sort_address_link.click
  end

  def click_sort_address2_link
    sort_address2_link.click
  end

  def click_sort_city_link
    sort_city_link.click
  end

  def click_sort_state_link
    sort_state_link.click
  end

  def click_sort_postal_code_link
    sort_postal_code_link.click
  end

  def select_location_status(location_status)
    option = Selenium::WebDriver::Support::Select.new(status_dropdown_list)
    option.select_by(:text, location_status)
  end

  def enter_address(address)
    address_textbox.send_keys(address)
  end

  def enter_address2(address2)
    address2_textbox.send_keys(address2)
  end

  def enter_city(city)
    city_textbox.send_keys(city)
  end

  def select_state(state)
    option = Selenium::WebDriver::Support::Select.new(state_dropdown_list)
    option.select_by(:text, state)
  end

  def enter_postal_code(postal_code)
    postal_code_textbox.send_keys(postal_code)
  end

  def enter_latitude(latitude)
    latitude_textbox.send_keys(latitude)
  end

  def enter_longitude(longitude)
    longitude_textbox.send_keys(longitude)
  end

  def click_get_lat_long_button
    get_lat_long_button.click
  end

  def enter_new_location
    self.enter_address(DateTime.now.strftime('%H%M NE %S Street'))
    self.enter_address2('')
    self.enter_city('Ocala')
    self.select_state('Florida')
    self.enter_postal_code('34479')
    self.click_get_lat_long_button
  end

  #####add neighborhoods
  def click_add_neighborhoods_link
    add_neighborhoods_link.click
  end

  def select_neighborhood_location(neighborhood_location)
    option = Selenium::WebDriver::Support::Select.new(neighborhood_location_dropdown_list)
    option.select_by(:text, neighborhood_location)
  end

  def select_neighborhood(neighborhood)
    option = Selenium::WebDriver::Support::Select.new(neighborhood_dropdown_list)
    option.select_by(:text, neighborhood)
  end

  def click_create_neighborhood_button
    create_neighborhood_button.click
  end
  #####end add neighborhood

  #####add organizations
  def click_add_organizations_link
    add_organizations_link.click
  end

  def select_organization_location(organization_location)
    option = Selenium::WebDriver::Support::Select.new(organizaion_dropdown_list)
    option.select_by(:text, organization_location)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organizaion_dropdown_list)
    option.select_by(:text, organization)
  end

  def select_organization_type(organization_type)
    option = Selenium::WebDriver::Support::Select.new(organization_type_dropdown_list)
    option.select_by(:text, organization_type)
  end

  def click_create_organization_button
    create_organization_button.click
  end
  #####end add organization

  #####add venue statistics
  def click_add_venue_statistics_link
    add_venue_statistics_link.click
  end

  def select_venue_type(venue_type)
    option = Selenium::WebDriver::Support::Select.new(venue_type_dropdown_list)
    option.select_by(:text, venue_type)
  end

  def enter_gvt_entered(gvt_entered)
    gvt_entered_textbox.send_keys(gvt_entered)
  end

  def select_gvt_type(gvt_type)
    option = Selenium::WebDriver::Support::Select.new(gvt_enter_type_dropdown_list)
    option.select_by(:text, gvt_type)
  end

  def select_venue_location(venue_location)
    option = Selenium::WebDriver::Support::Select.new(venue_location_dropdown_list)
    option.select_by(:text, venue_location)
  end

  def click_create_venue_statistics_button
    create_venue_statistics_button.click
  end
  #####end add venue statistics

  #####add hours
  def click_add_hours_link
    add_hours_link.click
  end

  def select_hours_location(hours_location)
    option = Selenium::WebDriver::Support::Select.new(hours_location_dropdown_list)
    option.select_by(:text, hours_location)
  end

  def select_weekday(weekday)
    option = Selenium::WebDriver::Support::Select.new(weekday_dropdown_list)
    option.select_by(:text, weekday)
  end

  def select_opentime(open_time)
    option = Selenium::WebDriver::Support::Select.new(opentime_dropdown_list)
    option.select_by(:text, open_time)
  end

  def select_closetime(close_time)
    option = Selenium::WebDriver::Support::Select.new(closetime_dropdown_list)
    option.select_by(:text, close_time)
  end

  def click_create_hours_button
    create_hours_button.click
  end
  #####end add hours

  #####add devices
  def click_add_devices_link
    add_devices_link.click
  end

  def click_create_button
    create_button.click
  end


  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_locations_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/locations/create")]')
  end

  def sort_status_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[1]/a')
  end

  def sort_address_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[2]/a')
  end

  def sort_address2_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[3]/a')
  end

  def sort_city_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[4]/a')
  end

  def sort_state_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[5]/a')
  end

  def sort_postal_code_link
    self.get_element(@browser, '//div[@id="list-locations"]/table/thead/tr/th[6]/a')
  end

  def locations_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/locations/index")]')
  end

  def neighborhoods_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[4]/a[contains(@href, "/locations_neighborhoods/index")]')
  end

  def status_dropdown_list
    self.get_element(@browser, 'status')
  end

  def address_textbox
    self.get_element(@browser, 'address')
  end

  def address2_textbox
    self.get_element(@browser, 'address2')
  end

  def city_textbox
    self.get_element(@browser, 'city')
  end

  def state_dropdown_list
    self.get_element(@browser, 'state')
  end

  def postal_code_textbox
    self.get_element(@browser, 'postal_code')
  end

  def latitude_textbox
    self.get_element(@browser, 'latitude')
  end

  def longitude_textbox
    self.get_element(@browser, 'longitude')
  end

  def get_lat_long_button
    self.get_element(@browser, '//input[@value="Get Lat & Long"]')
  end

  #####add neighborhoods
  def add_neighborhoods_link
    self.get_element(@browser, '//a[contains(@href, "/locations_neighborhoods/create?locations.id=")]')
  end

  def neighborhood_location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def neighborhood_dropdown_list
    self.get_element(@browser, 'neighborhood')
  end

  def create_neighborhood_button
    self.get_element(@browser, 'create')
  end
  #####end add neighborhoods

  #####add organizations
  def add_organizations_link
    self.get_element(@browser, '//a[contains(@href, "/organizations_locations%20/create?locations.id=")]')
  end

  def organization_location_dropdown_list
    self.get_element(@browser, 'location')
  end

  def organizaion_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def organization_type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def create_organization_button
    self.get_element(@browser, 'create')
  end
  #####end add organization

  #####add venue statistics
  def add_venue_statistics_link
    self.get_element(@browser, '//a[contains(@href, "/venues_statistics/create?locations.id=")]')
  end

  def venue_type_dropdown_list
    self.get_element(@browser, 'venue_type')
  end

  def gvt_entered_textbox
    self.get_element(@browser, 'gvt_entered')
  end

  def gvt_enter_type_dropdown_list
    self.get_element(@browser, 'gvt_enter_type')
  end

  def venue_location_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def create_venue_statistics_button
    self.get_element(@browser, 'create')
  end
  #####end add venue statistics

  #####add hours
  def add_hours_link
    self.get_element(@browser, '//a[contains(@href, "/hours/create?locations.id=")]')
  end

  def hours_location_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def weekday_dropdown_list
    self.get_element(@browser, 'weekday')
  end

  def opentime_dropdown_list
    self.get_element(@browser, 'open_time')
  end

  def closetime_dropdown_list
    self.get_element(@browser, 'close_time')
  end

  def create_hours_button
    self.get_element(@browser, 'create')
  end
  #####end add hours

  #####add devices
  def add_devices_link
    self.get_element(@browser, '//a[contains(@href, "/devices/create?locations.id=")]')
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

  def device_status_dropdown_list
    self.get_element(@browser, 'status')
  end

  def external_id_textbox
    self.get_element(@browser, 'external_id')
  end

  def device_locations_dropdown_list
    self.get_element(@browser, 'locations')
  end

  def create_device_button
    self.get_element(@browser, 'create')
  end
  #####end add devices

  def create_button
    self.get_element(@browser, 'create')
  end

end