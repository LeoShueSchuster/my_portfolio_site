require "rails_helper"

describe "Viewing Contact Leo" do
    it "submits a message" do
        visit "home"
        expect(page).to have_text("Contact Leo")
        expect(page).to have_text("Name")
        expect(page).to have_text("Email")
        expect(page).to have_text("Message")

        fill_in "Name", with: "Leo Shue"
        fill_in "Email", with: "leoschuster@hotmail.com"
        fill_in "Message", with: "How are you doing? I would like to start a collaboration project with you."

        click_button 'Send Message'

        expect(current_path).to eq(contacts_path)

        expect(page).to have_text('Thank you for your message!')
        expect(page).to have_text('You have contacted Leo. He will get back to you soon.')
    end

    #it "does not send a message if it's invalid" do
end