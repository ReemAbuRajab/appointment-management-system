Feature: Invoice For Each Visit

Background:
Given reception on the Invoice Page
When reception enters the following  detailes
|s\n|Date| Invoice No |Pation ID|Pation Name|Total Amount|Total paid|discount|
|1|11-11-2022|1|P1|Marah|100 NIS|90 Nis|10%|
|1|11-11-2022|1|P1|Marah|120 NIS|96 Nis|5%|
When user click Invoice button
Then The invocke has been stored
And user should see "Done" Massage


Scenario: empty field
Given user enters the detailes 
When user click on  Invoice button
And  the user forgot to fill in a field "s\n" or "Date" or "Invoice No" or " Pation ID" or "Pation Name" or "Total Amount" or "Total paid"or "discoun" is empty
Then the Invoice will not be stored
And user should see "You Forgot File Some Filed " Massage


