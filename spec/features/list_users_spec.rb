# frozen_string_literal: true

require 'rails_helper'

describe 'The Users page' do
  it 'lists users' do
    user = User.create!(name: 'Leo', email: 'leoschuster@hotmail.com', admin: false, password: 'temp', password_confirmation: 'temp')
    visit 'himitsu'

    fill_in 'Email', with: 'leoschuster@hotmail.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'
    expect(page).to have_text(user.name.to_s)

    visit users_path
    expect(page).to have_text(user.name.to_s)
    visit 'users/1'
    click_link '[***Delete User***]'
    # click_button "OK"
    # expect(page).not_to have_text("#{user.name}")
  end
end
