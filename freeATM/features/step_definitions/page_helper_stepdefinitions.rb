$PAGE = nil

Given(/^I am on the (.*) page$/) do |page|
  set_page(page)
end

Then(/^I should be on the (.*) page$/) do |page|
  set_page(page)
end


private

def set_page(page)
  $PAGE = page

  case page
    when 'communications index', 'show communications', 'create communications'
      @communications_page = CommunicationPage.new(@browser)
    when 'home'
      @home_page = HomePage.new(@browser)
    when 'locations index', 'create locations', 'show locations', 'edit locations'
      @locations_page = LocationsPage.new(@browser)
    when 'organizations index', 'create organizations', 'show organizations'
      @organizations_page = OrganizationsPage.new(@browser)
    when 'organizations locations'
      @organizations_locations_page = OrganizationsLocationsPage.new(@browser)
    when 'passwords index', 'create password'
      @passwords_page = PasswordsPage.new(@browser)
    when 'persons index', 'show persons', 'create persons', 'edit persons'
      @persons_page = PersonsPage.new(@browser)
    when 'user login'
      @login_page = LoginPage.new(@browser)
    else
      pending(page + ' page has not been configured')
  end

end

Given(/^I open the user login page$/) do
  @browser.navigate.to('http://qa.cms.thefreeatm.com/users/login')
end

When(/^I open the home page$/) do
  @browser.navigate.to('http://qa.cms.thefreeatm.com')
end