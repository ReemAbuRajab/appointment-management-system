Feature: Manage The Services

Background:
Given user on the Services Page
When user enters the following  detailes
|Name|Patient ID|Departmant|Service|Doctor Name|Doctor ID|Payment method|
|Marah|P1|Internal Departmen|Eye diagnosis|Dr.Aadam|D000|cash|
|Marry|p2|ECG|Cardiology and catheterization department|Dr.Ali|D111|credit card|
When user click at Medical Services button
Then The Services has been stored
And user should see "Done" Massage

Scenario: empty field
Given user enters the detailes 
When user click on  Medical Services button
And  the user forgot to fill in a field "Name" or "Patient ID" or "Departmant" or "Service" or "Doctor Name" or "Doctor ID" or "Payment method" is empty
Then the Services  will not be stored
And user should see "You Forgot File Some Filed " Massage

Scenario: Doctor available
Given user enters "Doctor Name" or "Doctor ID"
When user click on Medical Services button
And the Doctore is available "Doctor Name" or "Doctor ID" is correct
Then he Services  will not be stored
And user should see "Done" Massage

Scenario: Doctor not available
Given user enters the "Doctor Name" or "Doctor ID"
When user click on Medical Servicesbutton
And the Doctor is not available "Doctor Name" or "Doctor ID" is incorrect
Then user should see "Sorry the doctor not available plese choose another doctor" Massage
And the user choose another doctor 

Scenario: Services not available
Given user enters the "Service"
When user click on Medical Services button
And the Services  is not available "Service" is incorrect
Then user should see "Sorry the Service is not avilable" Massage

Scenario: Payment method un correct
Given user enters the "Payment method"
When user click on Medical Services button
And the Payment method is not available "Payment method" is incorrect
Then user should see "Sorry this incorrect Payment method " Massage
And the user choose another method


