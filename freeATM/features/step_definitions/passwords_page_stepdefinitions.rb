When(/^I click the new passwords button$/) do
  @passwords_page.click_new_passwords_button
end

Then(/^I should be alerted that password cannot be blank$/) do
  @passwords_page.get_password_error_text.should == 'Property [password] of class [class cms.Passwords] cannot be null'
end

And(/^I select the newly created person value$/) do
  @passwords_page.select_person($FIRST_NAME_VALUE + ' ' + $LAST_NAME_VALUE)
end