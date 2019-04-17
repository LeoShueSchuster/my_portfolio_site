require "rails_helper"

describe "Viewing Skills" do
    it "lists the programming languages & tools" do
        visit "home"
        expect(page).to have_text("Programming Languages & Tools")

        # Check icons
    end

    it "lists the workflow" do
        visit "home"
        expect(page).to have_text("Skills")
        expect(page).to have_text("Workflow")
        expect(page).to have_text("Cross Browser Testing & Debugging")
        expect(page).to have_text("Mobile-First, Responsive Design")
        expect(page).to have_text("Cross Functional Teams")
        expect(page).to have_text("Agile Development & Scrum")
    end
end