require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class HomePage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def navigate_to_communications_controller
    communications_controller_link.click
  end

  def navigate_to_creatives_controller
    creatives_controller_link.click
  end

  def navigate_to_devices_controller
    devices_controller_link.click
  end

  def navigate_to_hours_controller
    hours_controller_link.click
  end

  def navigate_to_insertion_orders_controller
    insertion_orders_controller_link.click
  end

  def navigate_to_insertion_orders_organizations_advertisers_controller
    insertion_orders_organizations_advertisers_controller_link.click
  end

  def navigate_to_insertion_orders_organizations_agencies_controller
    insertion_orders_organizations_agencies_controller_link.click
  end

  def navigate_to_insertion_orders_persons_advertisers_controller
    insertion_orders_persons_advertisers_controller_link.click
  end

  def navigate_to_insertion_orders_persons_agencies_controllers
    insertion_orders_persons_agencies_controller_link.click
  end

  def navigate_to_insertion_orders_persons_salespersons_controller
    insertion_orders_persons_salespersons_controller_link.click
  end

  def navigate_to_insertion_orders_persons_traffickers_controller
    insertion_orders_persons_traffickers_controller_link.click
  end

  def navigate_to_line_items_controller
    line_items_controller_link.click
  end

  def navigate_to_lines_items_creatives_controller
    line_items_creatives_controller_link.click
  end

  def navigate_to_locations_controller
    locations_controller_link.click
  end

  def navigate_to_locations_neighborhood_controller
    locations_neighborhoods_controller_link.click
  end

  def navigate_to_organizations_controller
    organizations_controller_link.click
  end

  def navigate_to_organizations_locations_controller
    organizations_locations_controller_link.click
  end

  def navigate_to_passwords_controller
    passwords_controller_link.click
  end

  def navigate_to_persons_controller
    persons_controller_link.click
  end

  def navigate_to_persons_locations_controller
    persons_locations_controller_link.click
  end

  def navigate_to_schedules_controller
    schedules_controller_link.click
  end

  def navigate_to_states_controller
    states_controller_link.click
  end

  def navigates_to_targeteer_controller
    targeteer_controller_link.click
  end

  def navigate_to_users_controller
    users_controller_link.click
  end

  def navigate_to_venues_statistics_controller
    venue_statistics_controller_link.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def communications_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.CommunicationsController"]')
  end

  def creatives_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.CreativesController"]')
  end

  def devices_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.DevicesController"]')
  end

  def hours_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.HoursController"]')
  end

  def insertion_orders_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_ordersController"]')
  end

  def insertion_orders_organizations_advertisers_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_organizations_advertisersController"]')
  end

  def insertion_orders_organizations_agencies_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_organizations_agenciesController"]')
  end

  def insertion_orders_persons_advertisers_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_persons_advertisersController"]')
  end

  def insertion_orders_persons_agencies_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_persons_agenciesController"]')
  end

  def insertion_orders_persons_salespersons_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_persons_salespersonsController"]')
  end

  def insertion_orders_persons_traffickers_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Insertion_orders_persons_traffickersController"]')
  end

  def line_items_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Line_itemsController"]')
  end

  def line_items_creatives_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Line_items_creativesController"]')
  end

  def locations_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.LocationsController"]')
  end

  def locations_neighborhoods_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Locations_neighborhoodsController"]')
  end

  def organizations_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.OrganizationsController"]')
  end

  def organizations_locations_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Organizations_locationsController"]')
  end

  def passwords_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.PasswordsController"]')
  end

  def persons_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.PersonsController"]')
  end

  def persons_locations_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Persons_locationsController"]')
  end

  def schedules_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.SchedulesController"]')
  end

  def states_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.StatesController"]')
  end

  def targeteer_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.TargeteerController"]')
  end

  def users_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.UsersController"]')
  end

  def venue_statistics_controller_link
    self.get_element(@browser, '//div[@id="controller-list"]/ul/li/a[text() = "cms.Venues_statisticsController"]')
  end

end