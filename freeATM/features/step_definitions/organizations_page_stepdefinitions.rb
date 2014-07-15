When(/^I click the new organizations button$/) do
  @organizations_page.click_new_organizations_button
end

When(/^I enter the organzation name (.*)$/) do |organization_name|
  @organizations_page.enter_organization_name(organization_name)
end

When(/^I enter the alias (.*)$/) do |alias_name|
  @organizations_page.enter_alias(alias_name)
end

And(/^I select the classification (.*)$/) do |classification_type|
  @organizations_page.select_classification(classification_type)
end

And(/^I enter a random alias$/) do
  @organizations_page.enter_alias('Random Alias' + DateTime.now.strftime('%m%d%Y%H%M%S'))
end