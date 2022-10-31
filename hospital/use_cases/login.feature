Feature: Login 
Background: 

	Given the user on the login page 
	When the user enter one of the following details
		
		| haneen | haneen | doctor |
		| heba | heba | admin |
		| raghad | raghad | secretary |
		| ahmed | ahmed | patient |
	
		
Scenario Outline: Verification of Login Function 
	Given user enters "<username>" in username field and "<password>" in password field and "<type>" in type field 
	When user click log in button
	Then user should see My Account 
	
	Examples: 
		| username | password | type |
	    | haneen | haneen | doctor |
		| heba | heba | admin |
		
Scenario Outline: Unsuccessful login
	Given user enters "<username>" in username field and "<password>" in password field and "<type>" in type field 
    When user click log in button   
	Then user stays at login page 
	Examples: 
		| username | password | type |
		| marah | marah | doctor |
		| ahme | ahmed | patient |
		| khalid | khalid | patient |
		
		
		
		
		
