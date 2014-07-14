When(/^I click the delete button$/) do
  case $PAGE
    when 'show persons'
      @persons_page.click_delete_button
    else
      pending(page + ' page has not been configured')
  end
end