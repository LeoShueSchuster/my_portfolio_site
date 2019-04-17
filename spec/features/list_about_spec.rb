require "rails_helper"

describe "Viewing About" do
    it "shows information about Leo" do
        about = About.create(first_name: "Leo Shue",
            last_name: "Schuster",
            address: "1901 Crossing Place",
            location_zip: "Austin, TX 78741",
            phone: "(512) 241-9041",
            email: "leoshueschuster@gmail.com",
            description: "Hey there! I’ve been living in Austin for 17 years. I recently graduated from Texas State University with a bachelor’s degree in Computer Science. I enjoy spending my free time playing board games, going on hikes, and recording podcasts."
        )

        visit "home"

        expect(page).to have_text(about.first_name)
        expect(page).to have_text(about.last_name)
        expect(page).to have_text(about.address)
        expect(page).to have_text(about.location_zip)
        expect(page).to have_text(about.phone)
        expect(page).to have_text(about.email)
        expect(page).to have_text(about.description)
    end

    # it "shows the social media icons"
end
