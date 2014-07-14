When(/^I click the new persons button$/) do
  @persons_page.click_new_persons_button
end

Then(/^I should be notified that first name is required$/) do
  @persons_page.get_first_name_required_error_text.should == 'Property [first_name] of class [class cms.Persons] cannot be null'
end

Then(/^I should be notified that last name is required$/) do
  @persons_page.get_last_name_required_error_text.should == 'Property [last_name] of class [class cms.Persons] cannot be null'
end

Then(/^I should be notified that title is required$/) do
  @persons_page.get_title_required_error_text.should == 'Property [title] of class [class cms.Persons] cannot be null'
end

When(/^I select the newly created communication value$/) do
  @persons_page.select_communications($NEW_COMMUNICATIONS_VALUE)
end

When(/^I enter the first name (.*)$/) do |first_name|
  @persons_page.enter_first_name(first_name)
end

When(/^I enter the last name (.*)$/) do |last_name|
  @persons_page.enter_last_name(last_name)
end

When(/^I enter the title (.*)$/) do |title|
  @persons_page.enter_title(title)
end

Then(/^I should see the first name is (.*)$/) do |first_name|
  @persons_page.get_first_name_text.should == first_name
end

Then(/^I should see the last name is (.*)$/) do |last_name|
  @persons_page.get_last_name_text.should == last_name
end

Then(/^I should see the title is (.*)$/) do |title|
  @persons_page.get_title_text.should == title
end