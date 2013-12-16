Given(/^I am logged in$/) do
  @user = FactoryGirl.create(:user)
end

When(/^I go to the edit profile page$/) do
  visit('/users/edit')
end

Then(/^I should see how many streams I am part of$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^how many links I have loved$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^be able to upload a profile picture$/) do
  visit('/users/edit')
  find_field('profile_pic')
end

Then(/^be able to change my password$/) do
   find_field('password')
end
