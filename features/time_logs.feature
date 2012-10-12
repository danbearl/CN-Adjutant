Feature: TimeLogs

  # Scenario: new timelog
  #   Given the following client:
  #     | name    | Dan Bearl |
  #     | company | Oak Burl  |
  #   And that client has the following project:
  #     | name | test | project |
  #   And I am on that project's page

  #   When I follow "New Time Log"
  #   And I fill in the following:
  #     | time_log_start_time | 2012-10-22 09:00 |
  #   And I press "Create Time log"

  #   Then I should see "Time Log successfully created."
  #   And I should see "2012-10-22 09:00"
  #
  Scenario: Use view timelog
    Given the following client:
      | name    | Dan Bearl |
      | company | Oak Burl  |
    And that client has the following project:
      | name | test_project |
    And that project has the following time log:
      | start time | 2012-12-12 00:00 |
      | end time   | 2012-12-12 09:00 |
    When I am on that project's page
    And show me the page
    Then I should see "12/12/2012 @ 00:00"
    Then I should see "12/12/2012 @ 09:00"
    And I should see "9:00 worked"
