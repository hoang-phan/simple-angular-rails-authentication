@javascript
Feature: As a guest
  I want to sign up to be a user

Background:
  Given I am on the home page
  When I click on "Sign up"

Scenario: With invalid information
  When I click on "Sign up now"
  Then I should see the submission error

Scenario: With valid information
  When I fill in as following
  | Field                 | Value                 |
  | Full name             | John Doe              |
  | Email                 | john.doe@customer.com |
  | Password              | abcd1234              |
  | Password Confirmation | abcd1234              |
  And I click on "Sign up now"
  Then I should see "Sign up successfully! A confirmation email has been sent to your email!"
  Then an unconfirmed user should be created successfully with
  | full_name | email                 |
  | John Doe  | john.doe@customer.com |