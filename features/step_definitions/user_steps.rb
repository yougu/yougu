Given /^I'm a ([^\"]*)$/ do |role|
  @role = role
end

Then /^I should see a link "([^\"]*)"$/ do |link|
  response.should have_selector("a", :content => link )
end