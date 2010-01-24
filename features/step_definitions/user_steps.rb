Given /^I'm a ([^\"]*)$/ do |role|
  @role = role
end

Given /^I am the registered user (.+)$/ do |username|
  params = {
    "username"=> username,
    "email"=> "#{username.gsub(' ','.').downcase}@yougu.org",
    "password"=>"password",
    "password_confirmation"=>"password"
  }
  @user = User.create(params)
end

Given /^I'm logged in$/ do
  pending
end

Then /^I should see a link "([^\"]*)"$/ do |link|
  response.should have_selector("a", :content => link )
end

When /^I login with valid credentials$/ do
  fill_in('Username', :with => @user.username)
  fill_in('Password', :with => "password")
  click_button("Login")
end
