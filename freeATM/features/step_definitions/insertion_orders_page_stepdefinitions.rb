When(/^I click the new insertion orders button$/) do
  @insertion_orders_page.click_new_insertion_orders_button
end

When(/^I enter the insertion order name (.*)$/) do |insertion_order_name|
  @insertion_orders_page.enter_insertion_order_name(insertion_order_name)
end

And(/^I enter the po number (.*)$/) do |po_number|

  @insertion_orders_page.enter_po_number(po_number + DateTime.now.strftime('%m%d%Y%H%M%S'))
end

And(/^I enter the notes (.*)$/) do |notes|
  @insertion_orders_page.enter_notes(notes)
end