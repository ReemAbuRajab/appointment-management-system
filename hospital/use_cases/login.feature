Feature: Login 
Background: 

	Given the user on the login page 
	And this is the data table to this management system
		| user name | password |
		| reem | reem12345 |
		| tasneem | tasneem12345 |
		| marah | marah12345 |
		| ahmed | ahmed12345 |
	When user enters "username" with "password"   
    And user click "log in" button

Scenario: Verification of Login Function  
Then user should see "My Account" 
	
Scenario: Unsuccessful login
Then error message displayed with wrong password
And user returns back on login page






