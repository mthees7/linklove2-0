Given(/^I am on the sign up page$/) do
  visit('/users/sign_up')
end

When(/^I sign up as a user with email "(.*?)"$/) do |arg1|
  @user = FactoryGirl.create(:user)
end

Then(/^I should have an account$/) do
  assert_equal 1, User.count
end

Given(/^I am on the login page$/) do
  visit('/users/sign_in')
end

Given(/^I have already registered as "(.*?)"$/) do |arg1|
  @user = FactoryGirl.create(:user)
end

When(/^I login with correct email address "(.*?)"$/) do |arg1|
end

Then(/^I should see "(.*?)"$/) do |text|
  assert page.has_content?(text)
end
