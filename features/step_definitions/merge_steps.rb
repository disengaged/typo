Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Given /^I fill in "(.*?)" with the id of the article with title "(.*?)"$/ do |field, title|
  fill_in(field, :with => Article.find_by_title(title).id)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end
