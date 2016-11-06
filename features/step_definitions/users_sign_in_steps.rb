Given(/^I am a confirmed user$/) do
  @user = create(:user, :confirmed)
end

Then(/^I should see the login error$/) do
  step 'I should see "Invalid credentials!"'
end

When(/^I fill in correct email and password$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
end

Then(/^I should be not logged in$/) do
  step 'I should see "Sign up"'
  step 'I should see "Login"'
end
