Feature: Merge Articles
  As a blog administrator
  In order to avoid similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | title     | body         |
      | Primary   | LoremIpsum   |
      | Duplicate | DolorSitAmet |

  Scenario: Successfully merge articles
    Given I am on the article edit page for "Primary"
    And I fill in "merge_with" with the id of the article with title "Duplicate"
    And I press "Merge"
    Then the article "Primary" should have body "LoremIpsumDolorSitAmet"

