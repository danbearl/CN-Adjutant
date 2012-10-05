Feature: Invoices
  Scenario: new invoice
  Given the following client:
    | name    | Micah      |
    | company | hashrocket |
  And that company has the following project:
    | name | adjutant |
  And I am on that client's page

  When I follow "create new invoice"
  And I fill in the following:"
    | amount due | 100.00     |
    | date due   | 2012-12-12 |
  And I press "create invoice"

  Then I should see "Invoice has been created"
  And I should see "12/12/2012"
