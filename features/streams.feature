Feature: Streams Page
  In order to see all of my information
  As a user with many relationships
  I want to access my streams from a list

  Scenario: User Profile
    Given I am logged in
    When I go to my streams
    Then I should see how many streams I am part of
    And be able to access one named "Nick and Jen"