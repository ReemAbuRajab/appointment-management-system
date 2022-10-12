Feature: Login 
Background: 

	Given the user on the login page 
	And this is the data table to this management system 
		| user name | password |
		| reem | reem12345 |
		| tasneem | tasneem12345 |
		| marah | marah12345 |
		| ahmed | ahmed12345 |
	When user enters "<username>" in username field
	And user enters "<password>" in password field 
	And user click "log in" button
		
Scenario Outline: Verification of Login Function  
	Then user should see "My Account" 
	
	Examples: 
		|username|password|
		| reem | reem12345 |
		| tasneem | tasneem12345 |
		
Scenario Outline: Unsuccessful login 
	Then error message displayed with wrong password 
	And user returns back on login page 
	Examples: 
		|username|password|
		| marah | 123 |
		| ahme | ahmed12345 |
		| khalid | khalid12345 |
		
		
		
		
		
		
