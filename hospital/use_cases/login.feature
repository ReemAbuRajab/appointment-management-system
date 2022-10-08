Feature: login

 Background: 
 Given user on the Login Page
 When user enters one of the following user detailes
 | user name | password |
 | reem | 12345reem |
 | tasneem | 12345tasneem |
 | marah | 12345marah |
 | ahmad | 12345ahmad |
 | khalid | 12345khalid |
When user click on login button
Then user should see "my account" page

Scenario: registered username and password
Given user enters registered "username" 
And user enters registered "password"
Then user should see "my account" page

Scenario: unregistered password
Given user enters registered "username" 
And user enters unregistered "password"
Then user should see error message

Scenario: unregistered username
Given user enters unregistered "username" 
And user enters registered "password"
Then user should see error message




