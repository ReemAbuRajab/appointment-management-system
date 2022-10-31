Feature: Edit Appointment in Clinic 
Background:
	Given the patient is logged in 
	And user is on the appointment page 
	And  user has one appointment at leaset
	And user want to edit this appointment to another time 
	When he/she click on "edit" button 
	
Scenario: the patient edit his appointment successfully 

	When user should  choose another avaliable appointment to book 
	Then this appointment will be booked for this patient 
	And success message appear "edition Done !" 
	
	
Scenario: the patient cant edit his appointment 

	When user choose unavailable time 
	Then error message will appear " time is booked please choose another time to book"