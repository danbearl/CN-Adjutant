Given /^I am on that client's page$/ do
  visit client_path(@client)
end

When /^I follow "(.*?)"$/ do |link_name|
  click_link(link_name)
end

Given /^I am on the clients index page$/ do
  visit clients_path
end

Given /^I am on that project's page$/ do
  visit project_path(@project)
end

When /^I fill in the following:$/ do |form|
  data = form.raw

  data.each do |f|
    fill_in f[0], :with => f[1]
  end
end

When /^I press "(.*?)"$/ do |action|
  click_button action
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content text
end

Then "show me the page" do
  save_and_open_page
end
