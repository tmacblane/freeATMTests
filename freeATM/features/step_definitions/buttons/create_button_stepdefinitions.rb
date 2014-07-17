When(/^I click the create button$/) do
  case $PAGE
    when 'create communications'
      @communications_page.click_create_button
    when 'create creatives'
      @creatives_page.click_create_button
    when 'create devices'
      @devices_page.click_create_button
    when 'create hours'
      @hours_page.click_create_button
    when 'create insertion orders'
      @insertion_orders_page.click_create_button
    when 'create locations'
      @locations_page.click_create_button
    when 'create locations neighborhoods'
      @locations_neighborhoods_page.click_create_button
    when 'create organizations'
      @organizations_page.click_create_button
    when 'create organizations locations'
      @organizations_locations_page.click_create_button
    when 'create password'
      @passwords_page.click_create_button
    when 'create persons'
      @persons_page.click_create_button
    when 'create venue statistics'
      @venue_statistics_page.click_create_button
    else
      pending(page + ' page has not been configured')
  end
end