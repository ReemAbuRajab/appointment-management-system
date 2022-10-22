Feature: Report

Background:
Given user on the Report Page
When user enters the following  detailes
|Patient Name|Patient ID|National ID|BirthDate|Gender|Review Date|Release Date|Time|Doctor Name|Doctor ID|Departmant|
|Service|Description of the situation|
|Payment method|Total Amount|Total paid|discount|
|Marah|P1|948789377|9-8-2000|female|9-10-2022|21-10-2022|10:02 öam|Dr.Aadam|D000|Internal Departmen|
|Eye diagnosis|22 years old , not Smoke, She had a . ......................................................|
|cash|100 NIS|90 Nis|10%|
When user click at Display button
Then The Report has been stored
And the Report will display

Scenario: empty field
Given user enters the detailes 
When user click at Displsy button
And  the user forgot to fill one of field is empty  
Then the Report will not be stored
And user should see "You Forgot File Some Filed " Massage 

Scenario: Pation not found 
Given user enters the detailes 
When user click at Display button 
Then The system searches for the patient depending on the information entered
And not found the pation
Then the user should see the message "the patient does not exist try again"
And the user enter the detailes one more time

Scenario: The Date incorrect
Given user enters the detailes 
When user click at Display button 
Then the Date "Review Date" or "Release Dateis" or "BirthDate" incorrect on the calendar
And the user should see "the date is incorrect " Massage 