Feature: Invoice For Each Visit

Background:
Given user on the the Services Page
When user click on Invoice button
Then The invocke window (GUI) open
And the user enters the following  detailes
|s\n|Date| Invoice No |patient ID|patient Name|Total Amount|Total paid|discount|
|1|11-11-2022|1|P1|Marah|100 NIS|90 Nis|10%|
|1|11-11-2022|1|P1|Marah|120 NIS|96 Nis|5%|
When user click at one of the button like "New" or "Delet" or "Restore" or "Search"
Then The invocke has been stored
And user should see "Done" Massage


Scenario: Empty field (Click on the new button)
Given user enters the detailes 
When user click at one of the button
And  the user forgot to fill in a field "s\n" or "Date" or "Invoice No" or "Patient ID" or "Patient Name" or "Total Amount" or "Total paid"or "discoun" is empty
Then the Invoice will not be stored
And user should see "You Forgot File Some Filed " Massage

Scenario: Create a invoic (Click on the new button)
Given user enters the detailes
When user click at "New" button
Then the invoic will be stored
And user should see "Done" Massage  

Scenario: Pation not found (Click on the delet button)
Given user enters the detailes 
When user click at "Delet" button 
Then The system searches for the patient depending on the information entered
And not found the pation
Then the user should see the message "the patient does not exist try again"
And the user enter the detailes one more time

Scenario: Update (Click on the restore button)
Given user enters the detailes
And user enters the new data he wants to modify in a specific field
When user click at "restore" button 
Then the data is modified
And user should see "Done" Massage

Scenario: Searching for a patient (Click on the Search button)
Given the user one of the patient information like "Pation ID" or "Pation Name"
When user click at "Search" button 
Then the information of the patient appear
And the information display





