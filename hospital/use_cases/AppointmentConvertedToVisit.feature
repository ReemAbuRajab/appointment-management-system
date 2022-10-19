Feature: Appointment Convert To Visit

Background: 
Given reception the Patient appointments page
When  reception enters one of the following patient detailes
|Name|Pation ID|Doctor Name|Doctor ID|Perferred Data| Perferred Time Slot|
|Marah|P1||Dr.Aadam|D000|11-11-2022|10:30am-11:30am|
When reception click on Convert button
Then The appointment of patient stored as Visit
And the patient