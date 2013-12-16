Feature: Edit Profile
  In order to keep my information updated
  As an authenticated user
  I want to edit my profile

  Scenario: User Profile
    Given I am logged in
    When I go to the edit profile page
    Then I should see how many streams I am part of
    And how many links I have loved
    And be able to upload a profile picture
    And be able to change my password