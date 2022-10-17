Feature: Login 
Background: 

	Given the user on the login page 
	And this is the data table to this management system 
		
		| reem | reem12345 | doctor |
		| tasneem | tasneem12345 | admin |
		| marah | marah12345 | secretary |
		| ahmed | ahmed12345 | patient |

		
Scenario Outline: Verification of Login Function 
	When user enters "<username>" in username field
	And user enters "<password>" in password field 
	And user enters "<type>" in type field
	And user click log in button
	Then user should see My Account 
	
	Examples: 
		| username | password | type |
		| reem | reem12345 | doctor |
		| tasneem | tasneem12345 | admin |
		
Scenario Outline: Unsuccessful login
	When user enters "<username>" in username field
	And user enters "<password>" in password field 
	And user enters "<type>" in type field 
	And user click log in button   
	Then user stays at login page 
	Examples: 
		| username | password | type |
		| marah | 123 | doctor |
		| ahme | ahmed12345 | patient |
		| khalid | khalid12345 | patient |
		
		
		
		
		
