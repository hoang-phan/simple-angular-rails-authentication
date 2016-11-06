Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on "([^"]*)"$/) do |target|
  click_on target
end

When(/^I fill in as following$/) do |table|
  table.hashes.each do |row|
    fill_in row['Field'], with: row['Value']
  end
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^an unconfirmed user should be created successfully with$/) do |table|
  # check if the unconfirmed user existed
  user = User.find_by(table.hashes.first.merge(confirmed_at: nil))
  expect(user).to be_present

  # check if the confirmation email generated correctly and sent to user's email  
  confirmation_email = ActionMailer::Base.deliveries.last
  expect(confirmation_email.to).to eq [user.email]
  expect(confirmation_email.body.to_s).to include(
    'You can confirm your account email through the link below'
  )
end

Then(/^I should see the submission error$/) do
  step 'I should see "Cannot submit, please re-check your form for errors!"'
end