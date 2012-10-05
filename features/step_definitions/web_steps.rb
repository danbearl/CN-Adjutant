Given /^I am on that client's page$/ do
  visit client_path(@client)
end

When /^I follow "(.*?)"$/ do |link_name|
  click_link(link_name)
end
