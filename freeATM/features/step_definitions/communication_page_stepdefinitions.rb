$NEW_COMMUNICATIONS_VALUE = nil

When(/^I select the (.*) communication$/) do |value|
  @communications_page.select_communication(value)
end

When(/^I click the new communications button$/) do
  @communications_page.click_new_communications_button
end

When(/^I select the (.*) communication type$/) do |type|
  @communications_page.select_communication_type(type)
end

Then(/^I should be alerted that communication value cannot be blank$/) do
  @communications_page.get_communication_error_text.should == 'Property [communication_Value] of class [class cms.Communications] cannot be null'
end

Then(/^I should be alerted that my email is not in the corect format$/) do
  pending
  @communications_page.get_communication_error_text.should == 'TBD'
end

Then(/^I should be alerted that the email entered already exists$/) do
  pending
  @communications_page.get_communication_error_text.should == 'TBD'
end

When(/^I enter the communication value (.*)/) do |communication_value|
  @communications_page.enter_communication_value(communication_value)
end

And(/^I enter a new (.*) communication value$/) do | communication_type|
  current_date = DateTime.now

  case communication_type
    when 'email'
      $NEW_COMMUNICATIONS_VALUE = 'newEmail' + current_date.strftime('%m%d%Y%H%M%S') + '@test.freeatm.com'
    when 'IM'
      $NEW_COMMUNICATIONS_VALUE = 'IMTest' + current_date.strftime('%m%d%Y%H%M%S')
    when 'Phone'
      $NEW_COMMUNICATIONS_VALUE = current_date.strftime('%Y%m%M%S')
    else
      pending(page + ' page has not been configured')
  end

  @communications_page.enter_communication_value($NEW_COMMUNICATIONS_VALUE)
end

And(/^I enter a new email communication value (.*)$/) do |email_address|
  current_date = DateTime.now
  @communications_page.enter_communication_value(email_address + current_date.strftime('%m%d%Y%H%M%S') + '@test.freeatm.com')
end