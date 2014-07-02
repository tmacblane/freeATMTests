require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class InsertionOrderPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_insertion_orders_button
    new_insertion_order_button.click
  end

  def click_sort_order_name
    sort_order_name_link.click
  end

  def click_sort_po_number_link
    sort_po_number_link.click
  end

  def click_sort_notes_link
    sort_notes_link.click
  end

  def click_insertion_order_list_button
    insertion_order_list_button.click
  end

  def enter_insertion_order_name(order_name)
    order_name_textbox.send_keys(order_name)
  end

  #####add advertisement
  def click_add_advertiser_link
    add_advertiser_link.click
  end

  def select_insertion_order(insertion_order)
    option = Selenium::WebDriver::Support::Select.new(insertion_order_dropdown_list)
    option.select_by(:text, insertion_order)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organization_dropdown_list)
    option.select_by(:text, organization)
  end

  def click_create_advertiser_button
    create_advertiser_button.click
  end
  #####end add advertisement

  #####add trafficker
  def click_add_trafficker_link
    add_trafficker_link.click
  end

  def select_trafficker_insertion_order(trafficker_insertion_order)
    option = Selenium::WebDriver::Support::Select.new(trafficker_insertion_order_dropdown_list)
    option.select_by(:text, trafficker_insertion_order)
  end

  def select_person(person)
    option = Selenium::WebDriver::Support::Select.new(person_dropdown_list)
    option.select_by(:text, person)
  end

  def click_create_trafficker_button
    create_trafficker_button.click
  end
  #####end add trafficking

  #####add advertiser contact
  def click_add_advertiser_contact_link
    add_advertiser_contact_link.click
  end

  def select_advertiser_contact_insertion_order(advertiser_contact_insertion_order)
    option = Selenium::WebDriver::Support::Select.new(advertiser_contact_insertion_order_dropdown_list)
    option.select_by(:text, advertiser_contact_insertion_order)
  end

  def select_advertiser_contact(advertiser_contact)
    option = Selenium::WebDriver::Support::Select.new(advertisement_contact_person_dropdown_list)
    option.select_by(:text, advertiser_contact)
  end

  def click_create_advertiser_contact_button
    create_advertiser_contact_button.click
  end
  #####end advertiser contact

  #####add agency
  def click_add_agency_link
    add_agency_link.click
  end

  def select_agency_insertion_order(agency_insertion_order)
    option = Selenium::WebDriver::Support::Select.new(agency_insertion_order_dropdown_list)
    option.select_by(:text, agency_insertion_order)
  end

  def select_agency_organization(agency_organization)
    option = Selenium::WebDriver::Support::Select.new(agency_organization_dropdown_list)
    option.select_by(:text, agency_organization)
  end

  def click_create_agency_button
    create_agency_button.click
  end
  #####end add agency

  #####add agency contact
  def click_add_agency_contact_link
    add_agency_contact_link.click
  end

  def select_agency_contact_insertion_order(agency_contact_insertion_order)
    option = Selenium::WebDriver::Support::Select.new(agency_contact_insertion_order_dropdown_list)
    option.select_by(:text, agency_contact_insertion_order)
  end

  def select_agency_contact_person(agency_contact_person)
    option = Selenium::WebDriver::Support::Select.new(agency_contact_person_dropdown_list)
    option.select_by(:text, agency_contact_person)
  end

  def click_create_agency_contact_button
    create_agency_contact_button.click
  end
  #####end add agency contact

  #####add salesperson
  def click_add_salesperson_link
    add_salesperson_link.click
  end

  def select_salesperson_insertion_order(salesperson_insertion_order)
    option = Selenium::WebDriver::Support::Select.new(salesperson_insertion_order_dropdown_list)
    option.select_by(:text, salesperson_insertion_order)
  end

  def select_salesperson_person(salesperson)
    option = Seleniu,::Webdriver::Support::Select.new(salesperson_person_dropdown_list)
    option.select_by(:text, salesperson)
  end

  def click_create_salesperson_button
    create_salesperson_button.click
  end
  #####end add salesperson

  #####add line items
  def click_add_line_items_link
    add_line_items_link.click
  end

  def enter_line_item_name(line_item_name)
    line_item_name_textbox.send_keys(line_item_name)
  end

  def enter_comments(comments)
    line_comments_textbox.send_keys(comments)
  end

  def select_line_item_insertion_order(line_insertion_order)
    option = Seleniu,::Webdriver::Support::Select.new(line_item_insertion_order_dropdown_list)
    option.select_by(:text, line_insertion_order)
  end

  def select_line_type(line_type)
    option = Seleniu,::Webdriver::Support::Select.new(type_dropdown_list)
    option.select_by(:text, line_type)
  end

  def select_start_date_day(start_day)
    option = Seleniu,::Webdriver::Support::Select.new(startdate_day_dropdown_list)
    option.select_by(:text, day)
  end

  def select_start_day_month(start_month)
    option = Seleniu,::Webdriver::Support::Select.new(startdate_month_dropdown_listt)
    option.select_by(:text, start_month)
  end

  def select_start_day_year(start_year)
    option = Seleniu,::Webdriver::Support::Select.new(startdate_year_dropdown_list)
    option.select_by(:text, start_year)
  end

  def select_end_day(end_day)
    option = Seleniu,::Webdriver::Support::Select.new(enddate_day_dropdown_list)
    option.select_by(:text, end_day)
  end

  def select_end_month(end_month)
    option = Seleniu,::Webdriver::Support::Select.new(enddate_month_dropdown_list)
    option.select_by(:text, end_month)
  end

  def select_end_year(end_year)
    option = Seleniu,::Webdriver::Support::Select.new(enddate_year_dropdown_list)
    option.select_by(:text, end_year)
  end

  def enter_quantity(quantity)
    quantity_textbox.send_keys(quantity)
  end

  def enter_ad_time(ad_time)
    time_seconds_textbox.send_keys(ad_time)
  end

  def enter_rate(rate)
    rate_textbox.send_keys(rate)
  end

  def select_rate_type(rate_type)
    option = Seleniu,::Webdriver::Support::Select.new(rate_type_dropdown_list)
    option.select_by(:text, rate_type)
  end

  def enter_targeting_info(targeting_info)
    targeting_info_textbox.send_keys(targeting_info)
  end

  def click_add_line_creatives_link
    add_line_items_creatives_link.click
  end

  def click_create_line_item_button
    create_line_item_button.click
  end
  #####end add line items

  def enter_po_number(po_number)
    po_number_textbox.send_keys(po_number)
  end

  def enter_notes(notes)
    notes_textbox.send_keys(notes)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################

  private

  def new_insertion_order_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/insertion_orders/create"]')
  end

  def sort_order_name_link
    self.get_element(@browser, '//div[@id="list-insertion_orders"]/table/thead/tr/th[1]/a')
  end

  def sort_po_number_link
    self.get_element(@browser, '//div[@id="list-insertion_orders"]/table/thead/tr/th[2]/a')
  end

  def sort_notes_link
    self.get_element(@browser, '//div[@id="list-insertion_orders"]/table/thead/tr/th[3]/a')
  end

  def insertion_order_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/insertion_orders/index"]')
  end

  def order_name_textbox
    self.get_element(@browser, 'insertion_order_name')
  end

  #####add advertiser order
  def add_advertiser_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_organizations_advertisers/create?insertion_orders.id=")]')
  end

  def insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def create_advertiser_button
    self.get_element(@browser, 'create')
  end
  #####end advertiser

  #####add trafficker
  def add_trafficker_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_persons_traffickers/create?insertion_orders.id=")]')
  end

  def trafficker_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def create_trafficker_button
    self.get_element(@browser, 'create')
  end
  #####end add trafficker

  #####add advertiser contact
  def add_advertiser_contact_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_persons_advertisers/create?insertion_orders.id=")]')
  end

  def advertiser_contact_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def advertisement_contact_person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def create_advertiser_contact_button
    self.get_element(@browser, 'create')
  end
  #####end add advertiser contact

  #####add agency
  def add_agency_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_organizations_agencies/create?insertion_orders.id=")]')
  end

  def agency_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def agency_organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def create_agency_button
    self.get_element(@browser, 'create')
  end
  #####end add agency

  #####add agency contact
  def add_agency_contact_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_persons_agencies/create?insertion_orders.id=")]')
  end

  def agency_contact_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def agency_contact_person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def create_agency_contact_button
    self.get_element(@browser, 'create')
  end
  #####end add agency contact

  #####add salesperson
  def add_salesperson_link
    self.get_element(@browser, '//a[contains(@href, "/insertion_orders_persons_salespersons/create?insertion_orders.id=")]')
  end

  def salesperson_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def salesperson_person_dropdown_list
    self.get_element(@browser, 'person')
  end

  def create_salesperson_button
    self.get_element(@browser, 'create')
  end
  #####end add salesperson

  #####add_line_items
  def add_line_items_link
    self.get_element(@browser, '//a[contains(@href, "/line_items/create?insertion_orders.id=")]')
  end

  def line_item_name_textbox
    self.get_element(@browser, 'line_item_name')
  end

  def line_comments_textbox
    self.get_element(@browser, 'comments')
  end

  def line_item_insertion_order_dropdown_list
    self.get_element(@browser, 'insertion_order')
  end

  def type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def startdate_day_dropdown_list
    self.get_element(@browser, 'start_date_day')
  end

  def startdate_month_dropdown_list
    self.get_element(@browser, 'start_date_month')
  end

  def startdate_year_dropdown_list
    self.get_element(@browser, 'start_date_year')
  end

  def enddate_day_dropdown_list
    self.get_element(@browser, 'end_date_day')
  end

  def enddate_month_dropdown_list
    self.get_element(@browser, 'end_date_month')
  end

  def enddate_year_dropdown_list
    self.get_element(@browser, 'end_date_year')
  end

  def quantity_textbox
    self.get_element(@browser, 'quantity')
  end

  def time_seconds_textbox
    self.get_element(@browser, 'ad_time')
  end

  def rate_textbox
    self.get_element(@browser, 'rate')
  end

  def rate_type_dropdown_list
    self.get_element(@browser, 'rate_type')
  end

  def targeting_info_textbox
    self.get_element(@browser, 'targeting_info')
  end

  def add_line_items_creatives_link
    self.get_element(@browser, '//a[contains(@href, "/line_items_creatives/create?line_items.id=")]')
  end
  #####end add line item

  def create_line_item_button
    self.get_element(@browser, 'create')
  end

  def po_number_textbox
    self.get_element(@browser, 'po_number')
  end

  def notes_textbox
    self.get_element(@browser, 'notes')
  end

  def create_button
    self.get_element(@browser, 'create')
  end


end