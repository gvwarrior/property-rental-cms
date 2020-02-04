Given /^I am on the properties page$/ do
  visit properties_path
end

Given /the following properties have been added to homepage:/ do |properties_table|
  properties_table.hashes.each do |property|
    Property.create(property)
  end
end

Then /^I should see the property with the address: "(.*?)"$/ do |address|
  expect(page).to have_content(address)
end

When /^I click "(.*?)"$/ do |button_text|
  click_on "#{button_text}"
end

Then /^I should see property details$/ do
  expect(page).to have_content('Property Details')
end


When /^I have added a property with address "(.*?)", bedrooms "(.*?)", bathrooms "(.*?)" and price "(.*?)"$/ do |address, bedrooms, bathrooms, price|
  visit rails_admin.new_path(model_name: 'property')
  fill_in('property_address', :with => address)
  fill_in('property_bedrooms', :with => bedrooms)
  fill_in('property_bathrooms', :with => bathrooms)
  fill_in('property_price', :with => price)
  click_button 'Save'
end

And /^I am on the home page$/ do
  visit properties_path
end

And /^I am on admin page$/ do
  visit rails_admin.index_path(model_name: 'property')
end

Then /^I should see the property with the address "(.*?)", bedrooms "(.*?)", bathrooms "(.*?)" and price "(.*?)"$/ do |address, bedrooms, bathrooms, price|
  result = false
  all('tr').each do |tr|
    if tr.has_content?(address) && tr.has_content?(price) && tr.has_content?(bedrooms) && tr.has_content?(bathrooms)
      result = true
      break
    end
  end
  expect(result).to be_truthy
end



When /^I have edited the property with id "(.*?)" to change the price to "(.*?)"$/ do |id, price|
  visit rails_admin.edit_path(model_name: 'property', id: id)
  fill_in('property_price', :with => price)
  click_button 'Save'
end

Then /^I should see a property list entry with address "(.*?)" and price "(.*?)"$/ do |address, price|
  result=false
  visit rails_admin.index_path(model_name: 'property')
  all('tr').each do |tr|
    if tr.has_content?(address) && tr.has_content?(price)
      result = true
      break
    end
  end
  expect(result).to be_truthy

end