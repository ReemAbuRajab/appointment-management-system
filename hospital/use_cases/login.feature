#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Login
checkout login feature

 
 @tag1
 Scenario: successful login
 Given user on the Login Page
 And user enters registered "username"
 And user enters correct "password"
 And user clicks "login" button 
Then user should see "my account"
 
 
 @tag2
  Scenario: Unsuccessful login first case
 Given user on the Login Page
 And user enters registered "username" 
 And user enters wrong "password"
And user clicks "login" button 
Then error message displayed with wrong email address
 And user returns back on login page
 
  @tag3
  Scenario: Unsuccessful login second case
 Given user on the Login Page
 And user enters unregistered "username" 
 And user clicks "login" button 
Then error message displayed with wrong email address
 And user returns back on login page

 
