Feature: Projects
	Scenario: new project
		Given the following client:
			|name	|Dan Bearl|
			|company|Oak Burl |
		And I am on that client's page

		When I follow "New Project"
		And I fill in the following:
			|project_name|test project|
		And I press "Create Project"

		Then I should see "Project successfully created."
		And I should see "test project"
	
	Scenario: edit project
		Given the following client:
			|name	|Dan Bearl|
			|company|Oak Burl |
		And that client has the following project:
			|name	|test project|
		And I am on that project's page

		When I follow "Edit"
		And I fill in the following:
			|project_name|edited name|
		And I press "Update Project"

		Then I should see "Project successfully updated."
		And I should see "edited name"

	Scenario: destroy project
		Given the following client:
			|name	|Dan Bearl|
			|company|Oak Burl |
		And that client has the following project:
			|name	|test project|
		And I am on that client's page

		When I follow "Delete"

		Then I should see "Project successfully deleted."
		And I should see "Showing Client"
