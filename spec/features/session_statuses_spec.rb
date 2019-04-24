# frozen_string_literal: true

require 'rails_helper'

describe 'Alert flash messages show up' do
  it 'when an invalid email or password is submitted' do
    user = User.create!(name: 'Leo', email: 'leoschuster@hotmail.com', admin: false, password: 'temp', password_confirmation: 'temp')

    visit 'himitsu'

    fill_in 'Email', with: 'leo@hotmail.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'

    expect(page).to have_text('Invalid email/password combination!')

    fill_in 'Email', with: 'leoschuster@hotmail.com'
    fill_in 'Password', with: 'howdyYall'
    click_button 'Sign In'

    expect(page).to have_text('Invalid email/password combination!')

    fill_in 'Email', with: 'leoschuster@hotmail.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'
    expect(page).to have_text('Leo')
  end

  it 'when a user signs in for the first time (located on main page) and when they sign out' do
    user = User.create!(name: 'Nick', email: 'nick@careerplug.com', admin: false, password: 'temp', password_confirmation: 'temp')
    visit 'himitsu'

    fill_in 'Email', with: 'nick@careerplug.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'
    expect(page).to have_text('Nick')

    visit root_path
    expect(page).to have_text("Welcome back, #{user.name}!")

    click_link 'Sign Out'
    expect(page).to have_text("You're now signed out!")
  end
end
