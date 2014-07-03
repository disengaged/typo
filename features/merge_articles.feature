Feature: Merge Articles
  As a blog administrator
  In order to avoid similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id | title      | body         |
      | 2  | Primary   | LoremIpsum   |
      | 3  | Duplicate | DolorSitAmet |

  Scenario: Successfully merge articles
    Given I am on the article edit page for "Primary"
    And show me the page
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then the article "Primary" should have body "LoremIpsum DolorSitAmet"
    And show me the page
