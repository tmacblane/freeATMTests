When(/^I click the new devices button$/) do
  @devices_page.click_new_devices_button
end

When(/^I select the device type (.*)$/) do |device_type|
  @devices_page.select_device_type(device_type)
end

And(/^I enter the model type (.*)$/) do |model_type|
  @devices_page.enter_model_type(model_type)
end

And(/^I enter the serial number (.*)$/) do |serial_number|
  @devices_page.enter_serial_number(serial_number + DateTime.now.strftime('%m%d%Y%H%M%S'))
end

And(/^I select the location (.*)$/) do |location|
  case $PAGE
    when 'create devices', 'edit devices'
      @devices_page.select_location(location)
    when 'create hours', 'edit hours'
      @hours_page.select_location(location)
    when 'create locations neighborhoods', 'edit locations neighborhoods'
      @locations_neighborhoods_page.select_location(location)
    when 'create organizations locations', 'edit organizations locations'
      @organizations_locations_page.select_organization_location(location)
    else
      pending(page + ' page has not been configured')
  end
end