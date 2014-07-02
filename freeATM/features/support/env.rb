require 'cucumber'
require 'selenium-webdriver'

Before do

  if ENV['FIREFOX'] then
    ffp = Selenium::WebDriver::Firefox::Profile.new
    #ffp.alwaysLoadNoFocusLibrary = true; #figure out how to do this one
    ffp.native_events = false;
    ffp.assume_untrusted_certificate_issuer = true
    ffp['app.update.auto'] = false
    ffp['app.update.enabled'] = false
    ffp['browser.search.update'] = false
    ffp['browser.shell.checkDefaultBrowser'] = false
    ffp['browser.startup.page'] = 0
    ffp['browser.tabs.warnOnClose'] = false
    ffp['browser.tabs.warnOnOpen;false'] = false
    ffp['layout.spellcheckDefault'] = 0
    ffp['extensions.checkCompatibility'] = false

    browser = Selenium::WebDriver.for(:firefox, :profile => ffp)
  elsif ENV['CHROME'] then
    browser = Selenium::WebDriver.for(:chrome)
  elsif ENV['INTERNETEXPLORER'] then
    browser = Selenium::WebDriver.for(:explorer)
  elsif ENV['SAFARI'] then
    browser = Selenium::WebDriver.for(:safari)
  elsif ENV['REMOTE'] then
    browser = Selenium::WebDriver.for(:remote, :url => '')
  else
    ffp = Selenium::WebDriver::Firefox::Profile.new
    #ffp.alwaysLoadNoFocusLibrary = true; #figure out how to do this one
    ffp.native_events = false;
    ffp.assume_untrusted_certificate_issuer = true
    ffp['app.update.auto'] = false
    ffp['app.update.enabled'] = false
    ffp['browser.search.update'] = false
    ffp['browser.shell.checkDefaultBrowser'] = false
    ffp['browser.startup.page'] = 0
    ffp['browser.tabs.warnOnClose'] = false
    ffp['browser.tabs.warnOnOpen;false'] = false
    ffp['layout.spellcheckDefault'] = 0
    ffp['extensions.checkCompatibility'] = false

    browser = Selenium::WebDriver.for(:firefox, :profile => ffp)
  end

  browser.manage.timeouts.implicit_wait = 3 #seconds
  browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(:timeout => 5)


  @BASE_URL = 'http://qa.cms.thefreeatm.com/users/login'

  @browser = browser

  begin
    @browser.navigate.to(@BASE_URL)
  rescue

  end

end

After do
  @browser.close
  @browser.quit
end