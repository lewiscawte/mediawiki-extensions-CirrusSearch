@api @update
Feature: Search archive index
  Scenario: Deleted pages are added to archive index
    Given a page named SpecialUndeleteDeleteMeTest exists
      And I api search for SpecialUndeleteDeleteMeTest
     Then SpecialUndeleteDeleteMeTest is the first api search result
     When I delete SpecialUndeleteDeleteMeTest
      And I search deleted pages for specialundeletedeletemetest
     Then deleted page search returns SpecialUndeleteDeleteMeTest as first result
