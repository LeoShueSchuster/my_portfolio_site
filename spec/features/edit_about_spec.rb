require "rails_helper"

describe "Admin can edit the About section" do
    it "checking to see if the name can be edited" do
        user = User.create!(name: "Leo", email: "leoschuster@hotmail.com", admin: true, password: "temp", password_confirmation: "temp")
        visit "himitsu"

        fill_in "Email", with: "leoschuster@hotmail.com"
        fill_in "Password", with: "temp"
        click_button 'Sign In'
        expect(current_path).to eq(user_path(user))
        expect(page).to have_text("#{user.name}")

        visit root_path
        click_link "[***Edit About section***]"
        expect(page).to have_text("Editing About section:")
        fill_in "First name", with: "Kyle"
        fill_in "Last name", with: "Bicknell"
        click_button "Update About"
        expect(page).to have_text("Kyle Bicknell")
    end
end