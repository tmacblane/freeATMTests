When(/^I click the new creatives button$/) do
  @creatives_page.click_new_creatives_button
end

When(/^I enter a new creative$/) do
  @creatives_page.enter_creative_name('Creative' + DateTime.now.strftime('%m%d%Y%H%M%S'))
  @creatives_page.enter_description('Integer dui nisl, vulputate tempor accumsan ac, sodales sed velit.')
  @creatives_page.enter_creative_pointer('http://www.freeATM.com/creativePointerURL')
  @creatives_page.enter_alt_text('test creative')
  @creatives_page.select_creative_type('Video')
  @creatives_page.enter_size('56')
  @creatives_page.enter_click_url('http://www.freeATM.com/clickURL')
  @creatives_page.enter_third_party_url('http://www.google.com')
  @creatives_page.enter_length(15)
  @creatives_page.select_organization($NEW_ORGANIZATION)
end

When(/^I enter a creative name$/) do
  @creatives_page.enter_creative_name('Creative' + DateTime.now.strftime('%m%d%Y%H%M%S'))
end

Then(/^I should see that the creative name field is in error$/) do
  @creatives_page.get_creative_name_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end

And(/^I should see that the creative pointer field is in error$/) do
  @creatives_page.get_creative_pointer_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end

And(/^I should see that the alt text field is in error$/) do
  @creatives_page.get_alt_text_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end

And(/^I should see that the size field is in error$/) do
  @creatives_page.get_size_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end

And(/^I enter an invalid creative pointer url$/) do
  @creatives_page.enter_creative_pointer('invalid')
end

And(/^I enter an invalid click url$/) do
  @creatives_page.enter_click_url('invalid')
end

And(/^I enter an invalid third party url$/) do
  @creatives_page.enter_third_party_url('invalid')
end

Then(/^I should see that click url field is in error$/) do
  @creatives_page.get_click_url_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end

Then(/^I should see that the third party url field is in error$/) do
  @creatives_page.get_third_party_url_field_css_property('background-color').should == 'rgba(255, 243, 243, 1)'
end