# frozen_string_literal: true

require 'rails_helper'

describe 'Test admin functionalities on AVP' do
  it 'to create a new project, edit it, and destory it' do
    user = User.create!(name: 'Leo', email: 'leoschuster@hotmail.com', admin: true, password: 'temp', password_confirmation: 'temp')
    visit 'himitsu'
    fill_in 'Email', with: 'leoschuster@hotmail.com'
    fill_in 'Password', with: 'temp'
    click_button 'Sign In'
    expect(page).to have_text('Leo')

    visit root_path
    click_link '[***Add New Project***]'
    expect(page).to have_text('Create a new project')
    fill_in 'Name', with: 'My Portfolio Site'
    fill_in 'Credit', with: 'Software Enginner Intern'
    fill_in 'Description', with: 'Working on a Rails app.'
    click_button 'Create Project'
    expect(page).to have_text('My Portfolio Site')
    expect(page).to have_text('Software Enginner Intern')
    expect(page).to have_text('Working on a Rails app.')

    click_link '[***Edit Project***]'
    expect(page).to have_text('Editing Project: My Portfolio Site')
    fill_in 'Name', with: 'Path of Blood'
    fill_in 'Credit', with: 'Voice Actor'
    fill_in 'Description', with: 'Speaking in Japanese.'
    click_button 'Update Project'
    expect(page).to have_text('Path of Blood')
    expect(page).to have_text('Voice Actor')
    expect(page).to have_text('Speaking in Japanese.')

    click_link '[***Delete Project***]'
    expect(page).not_to have_text('Path of Blood')
    expect(page).not_to have_text('Voice Actor')
    expect(page).not_to have_text('Speaking in Japanese.')
  end
end
