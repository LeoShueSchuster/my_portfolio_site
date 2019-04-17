require "rails_helper"

describe "Viewing the navigation bar" do
    it "shows the links" do
        visit "home"
        expect(page).to have_link("About")
        expect(page).to have_link("Experience")
        expect(page).to have_link("Education")
        expect(page).to have_link("Skill")
        expect(page).to have_link("AVP Projects")
        expect(page).to have_link("Contact Leo")
    end
end