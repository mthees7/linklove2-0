When(/^I go to my streams$/) do
 visit('/streams/:id')
end

Then(/^be able to access one named "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end