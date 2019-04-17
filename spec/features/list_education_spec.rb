require "rails_helper"

describe "Viewing Education" do
    it "lists the degrees" do
        visit "home"
        expect(page).to have_text("Education")

        expect(page).to have_text("Texas State University - San Marcos, TX")
        expect(page).to have_text("August 2018")
        expect(page).to have_text("Bachelor of Science - Computer Science")
        expect(page).to have_text("Minor in Applied Mathematics")
        expect(page).to have_text("Relevant Coursework: Software Engineering, Unix Systems Programming, Computer System Security")

        expect(page).to have_text("Austin Community College - Austin, TX")
        expect(page).to have_text("August 2016")
        expect(page).to have_text("Associate of Applied Science - Music Business, Performance and Technology")
    end

    it "lists the professional developments" do
        visit "home"
        expect(page).to have_text("Professional Development")

        expect(page).to have_text("Linux Academy")
        expect(page).to have_text("Completed AWS Essentials, LPI Linux Essentials, Docker Quick Start, AWS Concepts")
        expect(page).to have_text("The Pragmatic Studio")
        expect(page).to have_text("Completed Ruby on Rails: Level I and II")
        expect(page).to have_text("Udemy")
        expect(page).to have_text("Completed Java Programming Masterclass for Software Developers")
    end
end