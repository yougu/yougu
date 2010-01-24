Given /^I'm a ([^\"]*)$/ do |role|
  @role = role
end

Given /^I'm logged in$/ do
  pending
end

Then /^I should see a link "([^\"]*)"$/ do |link|
  response.should have_selector("a", :content => link )
end