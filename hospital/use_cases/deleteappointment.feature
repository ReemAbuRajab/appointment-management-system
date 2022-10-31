Feature: Delete Appointment in Clinic 
Background:
	Given the patient is logged in 
	And user is opening the appointment page 
	And  user has at leaset one appointment 
	And user want to delete this appointment 
	When user click on "delete" button
	
Scenario: the patient want to delete his appointment 
	When click on "Yes" from the assurance message 
	Then this appointment will be deleted 
	And success message appear "Done" 
	
Scenario: the patient dont want to delete his appointment 
    And click on "No" from the assurance message 
	Then this appointment will not be deleted