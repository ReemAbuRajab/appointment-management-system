Feature: add appointment
Background:
	Given the Patient is logged in 
	When the Patient click add appointment button

Scenario Outline: the Patient has successfully added an appointment 
	When the Patient puts date of the appointment in <day>/<month>/<year> format 
	And the Patient chooses time of the appointment  
   Then appointment will be added and recorded 
	And "Appointment added successfully." message will appear 
	Examples: 
		|day  |month  |year  |Time|
		|31  |10  |2022  |"9-10"|
		
Scenario Outline: the Patient failed to add appointment 
	When the Patient puts date of the appointment in <day>/<month>/<year> format 
	And the Patient chooses time of the appointment 
	But selected date and time already reserved
	Then appointment will not be added 
	And "Selected date and time are reserved." message will appear 
	Examples: 
		|day  |month  |year  |Time|
		|9 |11  |2022  |"1-2"|
