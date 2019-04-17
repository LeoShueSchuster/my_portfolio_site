require "rails_helper"

describe "Visiting links that only Admins can access" do
    it "does not let visitors to access a specific admin link and has them login first" do
        visit "projects/1/edit"

        expect(page).to have_text("Please sign in first!")
    end

    it "does not let users without admin priviledges access a specfic admin link" do
        user = User.create!(name: "Nick", email: "nick@careerplug.com", admin: false, password: "testing", password_confirmation: "testing")
        visit "himitsu"
        fill_in "Email", with: "nick@careerplug.com"
        fill_in "Password", with: "testing"
        click_button 'Sign In'
        expect(page).to have_text("Nick")

        visit root_path
        visit "projects/1/edit"
        expect(page).to have_text("Unauthorized access!")
    end
end