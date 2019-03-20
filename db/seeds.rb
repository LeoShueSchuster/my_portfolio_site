# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create!([
    { 
        name: 'The Latinx Mental Health Podcast',
        link: 'https://www.latinxmhpodcast.com/',
        credit: 'Producer, Audio Engineer',
        text: 'The Latinx Mental Health Podcast is where we talk to therapists, researchers, artists, activists, and students about their experiences in the intersections of mental health and Latinx identity. In each interview we aim to connect through our voices, our struggles, and our triumphs as we sample a different herbal tea just like abuela used to make.'
    },
    { 
        name: 'Enlaces Latinos',
        link: 'https://www.facebook.com/Enlaces-Latinos-155778007772062/',
        credit: 'Bass Guitarist',
        text: 'I perform with the Hernandez family band with my electric bass guitar. We play music from throughout Latin America.'
    }
])

User.create!([
    {
        name: 'Leo (Admin)',
        password: 'temp',
        password_confirmation: 'temp',
        email: 'leoshueschuster@gmail.com',
        admin: true
    }
])
