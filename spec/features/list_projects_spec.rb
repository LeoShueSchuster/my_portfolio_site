require "rails_helper"

describe "Viewing AVP Projects" do
    it "shows the projects" do
        project1 = Project.create(name: "The Latinx Mental Health Podcast",
            link: "https://www.latinxmhpodcast.com/",
            credit: "Producer, Audio Engineer",
            description: "The Latinx Mental Health Podcast is where we talk to therapists, researchers, artists, activists, and students about their experiences in the intersections of mental health and Latinx identity. In each interview we aim to connect through our voices, our struggles, and our triumphs as we sample a different herbal tea just like abuela used to make."
        )
        
        project2 = Project.create(name: "Enlaces Latinos",
            link: "https://www.facebook.com/Enlaces-Latinos-155778007772062/",
            credit: "Bass Guitarist",
            description: "I play electric bass guitar with the Hernandez family. We perform music from throughout Latin America and have gigs at New World Deli."
        )

        visit "home"

        expect(page).to have_text("Audio Visual Production Projects")
        expect(page).to have_text("What's new?")
        expect(page).to have_text("Check out The Latinx Mental Health Podcast Promo release on February 17, 2019!")
        
        # Audio player?
        
        expect(page).to have_text("Projects I have been working on over the years:")
        
        expect(page).to have_text(project1.name)
        expect(page).to have_text(project1.link)
        expect(page).to have_text(project1.credit)
        expect(page).to have_text(project1.description)

        expect(page).to have_text(project2.name)
        expect(page).to have_text(project2.link)
        expect(page).to have_text(project2.credit)
        expect(page).to have_text(project2.description)
    end
end