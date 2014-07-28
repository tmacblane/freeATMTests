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
    when 'creatives index', 'create creatives', 'edit creatives', 'show creatives'
      @creatives_page = CreativePage.new(@browser)
    when 'devices index', 'show devices', 'create devices', 'edit devices'
      @devices_page = DevicePage.new(@browser)
    when 'home'
      @home_page = HomePage.new(@browser)
    when 'hours index', 'create hours', 'edit hours', 'show hours'
      @hours_page = HoursPage.new(@browser)
    when 'insertion orders index', 'create insertion orders', 'show insertion orders', 'edit insertion orders'
      @insertion_orders_page = InsertionOrderPage.new(@browser)
    when 'locations index', 'create locations', 'show locations', 'edit locations'
      @locations_page = LocationsPage.new(@browser)
    when 'locations neighborhoods index', 'create locations neighborhoods', 'show locations neighborhoods'
      @locations_neighborhoods_page = LocationsNeighborhoodsPage.new(@browser)
    when 'organizations index', 'create organizations', 'show organizations'
      @organizations_page = OrganizationsPage.new(@browser)
    when 'organizations locations index', 'create organizations locations', 'show organizations locations', 'edit organizations locations'
      @organizations_locations_page = OrganizationsLocationsPage.new(@browser)
    when 'passwords index', 'create password', 'show passwords'
      @passwords_page = PasswordsPage.new(@browser)
    when 'persons index', 'show persons', 'create persons', 'edit persons'
      @persons_page = PersonsPage.new(@browser)
    when 'user login'
      @login_page = LoginPage.new(@browser)
    when 'users index'
      @users_page = UsersPage.new(@browser)
    when 'venue statistics index', 'create venue statistics', 'edit venue statistics', 'show venue statistics'
      @venue_statistics_page = VenuesStatisticsPage.new(@browser)
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

Then(/^I should see the page title (.*)$/) do | title |
  @browser.title.should == title
end