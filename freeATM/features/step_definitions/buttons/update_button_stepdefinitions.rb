When(/^I click the update button$/) do
  case $PAGE
    when 'edit communications'
      @communications_page.click_update_button
    when 'edit persons'
      @persons_page.click_update_button
    else
      pending(page + ' page has not been configured')
  end
end