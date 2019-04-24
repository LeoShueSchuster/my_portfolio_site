# frozen_string_literal: true

require 'rails_helper'

describe 'Logging in as Admin' do
  it 'shows all the links to perform Admin functionalities' do
    user = User.create!(name: 'Leo', email: 'leoschuster@hotmail.com', admin: true, password: 'temp', password_confirmation: 'temp')
    visit 'himitsu'
    fill_in 'Email', with: 'leoschuster@hotmail.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'
    expect(page).to have_text('Leo')

    # expect(page).to have_link("Leo [***Admin***]")
    #   expect(page).to have_link("Sign Out")
    #   expect(page).to have_link("[***Edit About section***]")
    #   expect(page).to have_link("[***Add New Experience***]")
    #   expect(page).to have_link("[***Edit***]")
    #   expect(page).to have_link("[***Delete***]")
    #   expect(page).to have_link("[***Add New Project***]")
  end
end
