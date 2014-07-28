require File.dirname(__FILE__) + '/../support/browser_helper.rb'

class PasswordsPage < BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def click_new_passwords_button
    new_passwords_button.click
  end

  def click_sort_password_link
    sort_password_link.click
  end

  def click_sort_persons_link
    sort_persons_link.click
  end

  def click_passwords_list_button
    passwords_list_button.click
  end

  def enter_password(password)
    password_textbox.clear
    password_textbox.send_keys(password)
  end

  def select_person(person)
    option = Selenium::WebDriver::Support::Select.new(persons_dropdown_list)
    option.select_by(:text, person)
  end

  def click_create_button
    create_button.click
  end

  def get_password_error_text

  end

  ###########################
  ##### Page Properties #####
  ###########################
  private

  def new_passwords_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/passwords/create")]')
  end

  def sort_password_link
    self.get_element(@browser, '//div[@id="list-passwords"]/table/thead/tr/th[1]/a')
  end

  def sort_persons_link
    self.get_element(@browser, '//div[@id="list-passwords"]/table/thead/tr/th[2]/a')
  end

  def passwords_list_button
    self.get_element(@browser, '//div[@role="navigation"]/ul/li[2]/a[contains(@href, "/passwords/index")]')
  end

  def password_textbox
    self.get_element(@browser, 'password')
  end

  def persons_dropdown_list
    self.get_element(@browser, 'persons')
  end

  def create_button
    self.get_element(@browser, 'create')
  end

  def password_error_label
    self.get_element(@browser, '//li[@data-field-id="password"]')
  end

end