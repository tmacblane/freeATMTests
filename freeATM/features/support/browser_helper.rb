require 'selenium-webdriver'

class BrowserHelper

  def initialize(browser)
    @browser = browser
  end

  def get_element(driver, locator, additional_locator)

    _element = if locator.start_with?('//')
      get_element_by_xpath(driver, locator, additional_locator)
    elsif locator.start_with?('css')
      get_element_by_css(driver, locator, additional_locator)
    else
      get_element_by_id(driver, locator, additional_locator)
    end

    return _element

  end

  def get_elements(driver, locator, additional_locator)

    if locator.start_with?('//')
      get_elements_by_xpath(driver, locator, additional_locator)
    elsif locator.start_with?('css')
      get_elements_by_css(driver, locator, additional_locator)
    else
      get_elements_by_id(driver, locator, additional_locator)
    end

  end

  private

  def get_element_by_css(driver, locator, additional_locator)
    locator.sub('css=', '')

    driver.find_element(:css => locator % additional_locator)
  end

  def get_elements_by_css(driver, locator, additional_locator)
    locator.sub('css=', '')

    driver.find_elements(:css => locator % additional_locator)
  end

  def get_element_by_id(driver, locator, additional_locator)
    driver.find_element(:id => locator % additional_locator)
  end

  def get_elements_by_id(driver, locator, additional_locator)
    driver.find_elements(:id => locator % additional_locator)
  end

  def get_element_by_xpath(driver, locator, additional_locator)
    driver.find_element(:xpath => locator % additional_locator)
  end

  def get_elements_by_xpath(driver, locator, additional_locator)
    driver.find_elements(:xpath => locator % additional_locator)
  end

end