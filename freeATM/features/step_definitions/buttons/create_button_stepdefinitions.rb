When(/^I click the create button$/) do
  case $PAGE
    when 'create communications'
      @communications_page.click_create_button
    when 'create locations'
      @locations_page.click_create_button
    when 'create organizations'
      @organizations_page.click_create_button
    when 'create password'
      @passwords_page.click_create_button
    when 'create persons'
      @persons_page.click_create_button
    else
      pending(page + ' page has not been configured')
  end
end