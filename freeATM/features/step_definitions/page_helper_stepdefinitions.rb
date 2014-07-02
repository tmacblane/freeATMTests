Given(/^I am on the (.*) page$/) do |page|
  set_page(page)
end

Then(/^I should be on the (.*) page$/) do |page|
  set_page(page)
end


private

def set_page(page)

  case page
    when 'communications list'
    when 'show communications'
      @communications_page = CommunicationPage.new(@browser)
    when 'home'
      @home_page = HomePage.new(@browser)
    when 'user login'
        @login_page = LoginPage.new(@browser)
    else
      pending(page + ' page has not been configured')
  end

end