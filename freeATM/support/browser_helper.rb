require 'selenium-webdriver'

class BrowserHelper

  def get_element(locator, additional_locator)

    _element = if locator.start_with?('//')
      get_element_by_xpath(locator, additional_locator)
    elsif locator.start_with?('css')
      get_element_by_css(locator, additional_locator)
    else
      get_element_by_id(locator, additional_locator)
    end

    return _element

  end

  def get_elements(locator, additional_locator)

    _element = null;

    if locator.start_with?('//')
      _element = self.get_elements_by_xpath(locator, additional_locator)
    elsif locator.start_with?('css')
      _element = self.get_elements_by_css(locator, additional_locator)
    else
      _element = self.get_elements_by_id(locator, additional_locator)
    end

    return _element

  end

  private

  def get_element_by_css(locator, additional_locator)
    locator.sub('css=', '')

    return Selenium::WebDriver.find_element(:css => locator % additional_locator)
  end

  def get_elements_by_css(locator, additional_locator)
    locator.sub('css=', '')

    return Selenium::WebDriver.find_elements(:css => locator % additional_locator)
  end

  def get_element_by_id(locator, additional_locator)
    return Selenium::WebDriver.find_element(:d => locator % additional_locator)
  end

  def get_elements_by_id(locator, additional_locator)
    return Selenium::WebDriver.find_elements(:id => locator % additional_locator)
  end

  def get_element_by_xpath(locator, additional_locator)
    return Selenium::WebDriver.find_element(:xpath => locator % additional_locator)
  end

  def get_elements_by_xpath(locator, additional_locator)
    return Selenium::WebDriver.find_elements(:xpath => locator % additional_locator)
  end

end