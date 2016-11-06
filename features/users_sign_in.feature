@javascript
Feature: As a user
  I want to sign in

Background:
  Given I am a confirmed user
  And I am on the home page
  When I click on "Login"

Scenario: With invalid information
  When I click on "Sign in"
  Then I should see the login error

Scenario: With valid information
  When I fill in correct email and password
  And I click on "Sign in"
  Then I should see "Login successfully!"
