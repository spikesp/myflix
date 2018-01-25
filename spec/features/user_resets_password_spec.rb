require 'spec_helper'

feature 'User resets password' do
  scenario 'user successfully resets the password' do
    alice = Fabricate(:user, 'old_password')
    visit sign_in_path
    click_link "Forgot Password?"
    fill_in "Email Address", with: alice.email
    click_button "Send Email"
  end
end