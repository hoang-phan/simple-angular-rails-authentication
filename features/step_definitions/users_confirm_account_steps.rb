Given(/^I am a user$/) do
  @user = create(:user)
end

When(/^I click on the link in my confirmation email$/) do
  host = Capybara.current_session.server.host
  port = Capybara.current_session.server.port
  visit user_confirmation_path(
    confirmation_token: @user.confirmation_token,
    redirect_url: "http://#{host}:#{port}/login"
  )
end

Then(/^I should be confirmed$/) do
  expect(@user.reload).to be_confirmed
end
