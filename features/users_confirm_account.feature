@javascript
Feature: As a user
  I want to confirm my account using the link in email

Scenario:
  Given I am a user
  When I click on the link in my confirmation email
  Then I should be confirmed
  And I should see "Welcome back, please sign in"
