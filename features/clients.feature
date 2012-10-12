Feature: Clients
	Scenario: new client
		Given I am on the clients index page

		When I follow "New Client"
		And I fill in the following:
			|client_name   |Dan Bearl|
			|client_company|Oak Burl |
		And I press "Create Client"

		Then I should see "Client successfully created."
		And I should see "Showing Client Dan Bearl"

	
	Scenario: update client
		Given the following client:
			|name   |Dan Bearl|
			|company|Oak Burl |
		And I am on that client's page

		When I follow "Edit"
		And I fill in the following:
			|client_notes|This note is from cucumber.|
		And I press "Update Client"

		Then I should see "Client successfully updated."
		And I should see "This note is from cucumber."

	Scenario: destroy client
		Given the following client:
			|name	|Dan Bearl|
			|company|Oak Burl |
		And I am on the clients index page

		When I follow "Delete"

		Then I should see "Client successfully deleted."

