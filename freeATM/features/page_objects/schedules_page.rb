require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class SchedulesPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_schedules_button
    new_schedules_button.click
  end

  def click_sort_proof_play_link
    sort_proof_play_link.click
  end

  def click_sort_creative_pointer_link
    sort_creative_pointer_link.click
  end

  def click_sort_block_link
    sort_block_link.click
  end

  def click_sort_device_link
    sort_device_link.click
  end

  def click_sort_line_item_link
    sort_line_item_link.click
  end

  def click_sort_schedule_date_link
    sort_schedule_date_link.click
  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_schedules_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/schedules/create")]')
  end

  def sort_proof_play_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[1]/a')
  end

  def sort_creative_pointer_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[2]/a')
  end

  def sort_block_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[3]/a')
  end

  def sort_device_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[4]/a')
  end

  def sort_line_item_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[5]/a')
  end

  def sort_schedule_date_link
    self.get_element(@browser, '//div[@id="list-schedules"]/table/thead/tr/th[6]/a')
  end

end