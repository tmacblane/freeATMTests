require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class CreativePage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_creatives_button
    new_creatives_button.click
  end

  def click_sort_creative_name_link
    sort_creative_name_link.click
  end

  def click_description_sort_link
    sort_description_link.click
  end

  def click_creative_pointed_link
    sort_creative_name_link.click
  end

  def click_sort_alt_text_link
    sort_alt_text_link.click
  end

  def click_sort_type_link
    sort_type_link.click
  end

  def click_sort_size_link
    sort_size_link.click
  end

  def click_creatives_list_button
    creatives_list_button.click
  end

  def enter_creative_name(creative_name)
    creative_name_textbox.send_keys(creative_name)
  end

  def enter_description(description)
    description_textbox.send_keys(description)
  end

  def enter_creative_pointer(creative_pointer)
    creative_pointer_textbox.send_keys(creative_pointer)
  end

  def enter_alt_text(alt_text)
    alt_text_textbox.send_keys(alt_text)
  end

  def select_creative_type(type)
    option = Selenium::WebDriver::Support::Select.new(type_dropdown_list)
    option.select_by(:text, type)
  end

  def enter_size(size)
    size_textbox.send_keys(size)
  end

  def enter_click_url(click_url)
    click_url_textbox.send_keys(click_url)
  end

  def enter_third_party_url(third_party_url)
    thirdparty_url_textbox.send_keys(third_party_url)
  end

  def enter_length(length)
    length_textbox.send_keys(length)
  end

  def select_organization(organization)
    option = Selenium::WebDriver::Support::Select.new(organization_dropdown_list)
    option.select_by(:text, organization)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################

  private

  def new_creatives_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/creatives/create"]')
  end

  def sort_creative_name_link
    self.get_element(@browser, '//div[@id="list-creatives"]/table/thead/tr/th[1]/a')
  end

  def sort_description_link
    self.get_element(@browser, '//div[@id="list-creatives"]/table/thead/tr/th[2]/a')
  end

  def sort_creative_pointer_link
    self.get_element(@browser, '//div[@id="list-creatives"]/table/thead/tr/th[3]/a')
  end

  def sort_alt_text_link
    self.get_element(@browser, '//div[@id="list-creatives"/table/thead/tr/th[4]/a')
  end

  def sort_type_link
    self.get_element(@browser, '//div[@id="list-creatives"]/table/thead/tr/th[5]/a')
  end

  def sort_size_link
    self.get_element(@browser, '//div[@id="list-creatives"]/table/thead/tr/th[6]/a')
  end

  def creatives_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[@href="/creatives/index"]')
  end

  def creative_name_textbox
    self.get_element(@browser, 'creative_name')
  end

  def description_textbox
    self.get_element(@browser, 'description')
  end

  def creative_pointer_textbox
    self.get_element(@browser, 'creative_pointer')
  end

  def alt_text_textbox
    self.get_element(@browser, 'alt_text')
  end

  def type_dropdown_list
    self.get_element(@browser, 'type')
  end

  def size_textbox
    self.get_element(@browser, 'size')
  end

  def click_url_textbox
    self.get_element(@browser, 'click_URL')
  end

  def thirdparty_url_textbox
    self.get_element(@browser, 'third_party_URL')
  end

  def length_textbox
    self.get_element(@browser, 'length')
  end

  def add_line_items_link
    self.get_element(@browser, '//div[@id="create-creatives"]/form/fieldset/div[10]/ul/li/a')
  end

  def organization_dropdown_list
    self.get_element(@browser, 'organization')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end