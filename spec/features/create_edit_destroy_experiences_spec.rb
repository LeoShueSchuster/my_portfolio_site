require "rails_helper"

describe "Test admin functionalities on Experience" do
    it "to create a new experience" do
        user = User.create!(name: "Leo", email: "leoschuster@hotmail.com", admin: true, password: "temp", password_confirmation: "temp")
        visit "himitsu"
        fill_in "Email", with: "leoschuster@hotmail.com"
        fill_in "Password", with: "temp"
        click_button 'Sign In'
        expect(current_path).to eq(user_path(user))
        expect(page).to have_text("Leo")

        visit root_path
        click_link "[***Add New Experience***]"
        expect(page).to have_text("Create a new Experience")
        fill_in "Title", with: "CareerPlug"
        fill_in "Date", with: "January 2019 - June 2019"
        fill_in "Location", with: "Austin, TX"
        click_button 'Create Experience'
        expect(page).to have_text("CareerPlug")
        expect(page).to have_text("January 2019 - June 2019")
        expect(page).to have_text("Austin, TX")
    end

    it "to edit an experience" do
        user = User.create!(name: "Leo", email: "leoschuster@hotmail.com", admin: true, password: "temp", password_confirmation: "temp")
        visit "himitsu"
        fill_in "Email", with: "leoschuster@hotmail.com"
        fill_in "Password", with: "temp"
        click_button 'Sign In'
        expect(current_path).to eq(user_path(user))
        expect(page).to have_text("Leo")

        visit root_path
        click_link "[***Edit***]"
        expect(page).to have_text("Editing Experience: CareerPlug")
        fill_in "Title", with: "Network Engineer"
        fill_in "Date", with: "June 2019 - December 2019"
        fill_in "Location", with: "Kyle, TX"
        click_button 'Update Experience'
        expect(page).to have_text("Network Engineer")
        expect(page).to have_text("June 2019 - December 2019")
        expect(page).to have_text("Kyle, TX")
    end
end