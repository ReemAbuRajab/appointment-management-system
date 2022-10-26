Feature: Appointment Convert To Visit

Background: 
Given user the Patient appointments page
When user enters one of the following patient detailes
|Patient Name|Patient ID|Doctor Name|Doctor ID|Perferred Data| Perferred Time Slot|
|Marah|P1||Dr.Aadam|D000|11-11-2022|10:30am-11:30am|
When user click on Convert button
Then The appointment of patient stored as Visit
And  user should see "Convert is Done" Message

Scenario: empty field
Given user enters the detailes 
When user click at Convert button
And  the user forgot to fill in a field "Patient Name" or "Patient ID" or "Doctor Name" or "Doctor ID" or "Perferred Data" or "Perferred Time Slot" is empty
Then the appointment will not be Convert
And user should see "You Forgot File Some Filed " Massage
Scenario: The patient came to the appointment

Scenario: The patient canceled the appointment
Given user enters the detailes 
When user click at "Search" button
Then the information of  appointment apper
And user click at "delet" button
Then the the appointment delet
And user should see "Appointment canceled " Massage

Scenario: The patient came without an appointment
Given user enters the detailes 
When user click at "Search" button and the patient not exist
Then user enters the detailes another appointment
And click at "Create"
And And  user should see "Done" Message

Scenario: the Doctor not exist 
Given user enters the detailes with new "Doctor Name" and "Doctor ID" or "Perferred Data" and "Perferred Time Slot"
When user click at Convert button
Then the new appointment are store 
And And  user should see "Done" Message