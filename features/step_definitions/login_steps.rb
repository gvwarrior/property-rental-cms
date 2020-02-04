When /^I an on the login page$/ do
  visit login_path
end

Then /^I should see two empty boxes: "Email" and "Password"$/ do
  expect(page).to have_content("Email")
  expect(page).to have_content("Password")
end

And /^I should see the "Login to my account" button$/ do
  expect(page).to have_content("Login to my account")
end

Then /^I should see a clickable text "(.*?)"$/ do |create_account_text|
  expect(page).to have_content(create_account_text)
end

Then /^I should be redirected to the "Create A New Account" page$/ do
  expect(page).to have_content("Signup")
  expect(page).to have_content("Create my account")
end

When /^I enter valid email and password and click "Log in to my account" button$/ do
  fill_in('email', :with => 'admin@gmail.com')
  fill_in('password', :with => 'password')
  click_button 'Log in to my account'
end

Then /^I should on the admin managing page$/ do
  expect(page).to have_content("Site Administration")
end

When /^I enter invalid email or password and click "Log in to my account" button$/ do
  fill_in('email', :with => 'lx2014@mail.ustc.edu.cn')
  fill_in('password', :with => '000000')
  click_button 'Log in to my account'
end

Then /^I should got the message "(.*?)"$/ do |flash_message|
  expect(flash[:warning]).to eql(flash_message)
end

When /^I am on the "Create A New Account" page$/ do
  visit signup_path
end

Then /^I should see the follwing empty boxes: "Username", "EMail", "Password", "Passwrod Confirmation"$/ do
  expect(page).to have_content("Name")
  expect(page).to have_content("Email")
  expect(page).to have_content("Password")
  expect(page).to have_content("Confirm Password")
end

And /^I should see the "(.*?)" button$/ do |create_account_text|
  expect(page).to have_content(create_account_text)
end

When /^I enter an unregistered and valid email and valid passward$/ do
  fill_in('email', :with => 'new_user@gmail.cn')
  fill_in('password', :with => '000000')
  fill_in('password_confirmation', :with => '000000')
end

Then /^I should on the "Login" page and get a message "Your account has been successfully created"$/ do
  expect(page).to have_content("Login")
  expect(flash[:notice]).to be_present
end