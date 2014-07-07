require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class StatesPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_states_button
    new_states_button.click
  end

  def click_sort_state_name_link
    click_sort_state_name_link.click
  end

  def click_sort_nhid_link
    click_sort_nhid_link.click
  end

  def click_next_link
    next_link.click
  end

  def click_previous_link
    previous_link.click
  end

  def click_states_list_button
    states_list_button.click
  end

  def enter_state_name(state_name)
    state_name_textbox.send_keys(state_name)
  end

  def enter_nhid(nh_id)
    nhid_textbox.send_keys(nh_id)
  end

  def click_create_button
    create_button.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_states_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/states/create")]')
  end

  def sort_state_name_link
    self.get_element(@browser, '//div[@id="list-states"]/table/thead/tr/th[1]/a')
  end

  def sort_nhid_link
    self.get_element(@browser, '//div[@id="list-states"]/table/thead/tr/th[2]/a')
  end

  def next_link
    self.get_element(@browser, '//a[contains(text(),"Next")]')
  end

  def previous_link
    self.get_element(@browser, '//a[contains(text(),"Previous")]')
  end

  def states_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/states/index")]')
  end

  def state_name_textbox
    self.get_element(@browser, 'state_name')
  end

  def nhid_textbox
    self.get_element(@browser, 'nh_id')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

end