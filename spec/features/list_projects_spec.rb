require "rails_helper"

describe "Viewing the list of projects" do
    it "shows the projects" do
        project1 = Project.create(name: "The Latinx Mental Health Podcast",
            link: "https://www.latinxmhpodcast.com/",
            credit: "Producer, Audio Engineer",
            text: "The Latinx Mental Health Podcast is where we talk to therapists, researchers, artists, activists, and students about their experiences in the intersections of mental health and Latinx identity. In each interview we aim to connect through our voices, our struggles, and our triumphs as we sample a different herbal tea just like abuela used to make."
        )
        
        project2 = Project.create(name: "Enlaces Latinos",
            link: "https://www.facebook.com/Enlaces-Latinos-155778007772062/",
            credit: "Bass Guitarist",
            text: "I perform with the Hernandez family band with my electric bass guitar. We play music from throughout Latin America."
        )

        visit "home"

        expect(page).to have_text("Audio Visual Production Projects")
        
        expect(page).to have_text(project1.name)
        expect(page).to have_text(project1.link)
        expect(page).to have_text(project1.credit)
        expect(page).to have_text(project1.text)

        expect(page).to have_text(project2.name)
        expect(page).to have_text(project2.link)
        expect(page).to have_text(project2.credit)
        expect(page).to have_text(project2.text)
    end
end