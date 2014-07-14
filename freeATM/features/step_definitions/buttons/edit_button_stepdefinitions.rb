When(/^I click the edit button$/) do
  case $PAGE
    when 'show persons'
      @persons_page.click_edit_button
    else
      pending(page + ' page has not been configured')
  end
end