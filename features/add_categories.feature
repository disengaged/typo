Feature: Add categories
  As an admin
  I want to be able to add categories
  In order to let my readers find content more easily

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: List current categories
    Given I am on the admin content page
    Then I should see "Categories"
    When I follow "Categories"
    Then I should see "Name"
    Then I should see "Keywords"
    Then I should see "Permalink"
    Then I should see "Description"

  #Scenario: Add new category
    #Given I am on the categories page

