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
        descriptions: 'Test 1',
        link: 'https://www.latinxmhpodcast.com/',
        credit: 'Producer, Audio Engineer' 
    },
    { 
        name: 'Enlaces Latinos',
        descriptions: 'Test 2',
        link: 'https://www.facebook.com/Enlaces-Latinos-155778007772062/',
        credit: 'Bass Guitarist' 
    }
])

User.create!([
    {
        name: 'Nick (Admin)',
        password: 'temp',
        password_confirmation: 'temp',
        email: 'nick@careerplug.com',
        admin: true
    }
])
