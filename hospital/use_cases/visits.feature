Feature: visit 
Background:
	Given the Secretary is logged in 
	When a Patient arrived to clinic 
Scenario: the Patinet arrived to the clinic on the time 

	When the Patient has an appointment 
	Then the Secretary will record a visit 
	
Scenario: the Patinet arrived to the clinic not on the time but the Doctor is available 

	Given the Patient does not have an appointment 
	And the Doctor is available 
	Then the Secretary will record a visit 
	
Scenario: the Patinet arrived to the clinic not on the time and the Doctor is busy 

	Given the Patient does not have an appointment 
	And the Doctor is busy 
	Then the Secretary will add an appointment for the Patient in another time 
