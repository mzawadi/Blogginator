require 'watir-webdriver'
require 'page-object'

include PageObject::PageFactory

Given(/^I visit the blog for my favorite blogger$/) do
  visit_page KennyBloggins
end

When(/^I search for a blog post$/) do
  on_page KennyBloggins do |page|
    page.search = 'page objects'
    @browser.send_keys :enter
  end
end

Then(/^I should see posts with that value in the title$/) do
  on_page KennyBlogginsSearchResults do |page|
    results = Array.new
    results.push(page.response)
    results.each do |i|
      puts i
    end
  end
end


=begin
When(/^I choose a blog post$/) do
 pending
end


Then(/^I should see the blog post$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^my favorite blogger has been very active$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^then I should see a summary of my favorite blogger's (\d+) most recent posts in reverse order$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end=end
