Feature: Book an appointment

Background: 
 Given user on the Booking Appointment page
 When user enters one of the following user detailes
 |Name|Pation ID|Doctor Name|Doctor ID|Perferred Data| Perferred Time Slot|
 |Marah|P1||Dr.Aadam|D000|11-11-2022|10:30am-11:30am|
 |Marry|p2|Dr.Ali|D111|11-11-2022|12:00pm-1:00pm|
 When user click on Reservation button
 Then The appointment has been stored
 And user should see "Done" Massage
 
 
Scenario: empty field
Given user enters the detailes 
When user click on Reservation button
And  the user forgot to fill in a field "Name" or "Pation ID" or "Doctor Name" or "Doctor ID" or "Perferred Data" or "Perferred Time Slot" is empty
Then the appointment will not be booked
And user should see "You Forgot File Some Filed " Massage

Scenario: Appointment available
Given user enters the detailes
When user click on Reservation button
And the appointment is available "Perferred Data" or "Perferred Time Slot" is correct
Then the appointment will  be booked
And user should see "Done" Massage


Scenario: Appointment not available
Given user enters the details 
When user click on Reservation button
And the appointment is not available "Perferred Data" or "Perferred Time Slot" is already previously entered
Then user should see "Soory the appointment not available plese choose another date" Massage
And the user choose another appointment 

Scenario: Doctor available
Given user enters the detailes
When user click on Reservation button
And the Doctore is available "Doctor Name" or "Doctor ID" is correct
Then the appointment will  be booked
And user should see "Done" Massage

Scenario: Doctor not available
Given user enters the details 
When user click on Reservation button
And the Doctor is not available "Doctor Name" or "Doctor ID" is uncorrect
Then user should see "Soory the doctor not available plese choose another doctor" Massage
And the user choose another doctor 

