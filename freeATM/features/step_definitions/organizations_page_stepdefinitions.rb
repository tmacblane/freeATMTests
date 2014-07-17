$NEW_ORGANIZATION = nil

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

When(/^I click the new organizations location button$/) do
  @organizations_locations_page.click_new_organizations_locations_button
end

And(/^I select the organization (.*)$/) do |organization|
  @organizations_locations_page.select_organization(organization)
end

And(/^I select the type (.*)$/) do |type|
  @organizations_locations_page.select_type(type)
end

When(/^I create a new organization$/) do
  $NEW_ORGANIZATION = 'Random Organization' + DateTime.now.strftime('%m%d%Y%H%M%S')
  @organizations_page.enter_organization_name($NEW_ORGANIZATION)
  @organizations_page.enter_alias('Random Alias' + DateTime.now.strftime('%m%d%Y%H%M%S'))
  @organizations_page.select_classification('Host')
end