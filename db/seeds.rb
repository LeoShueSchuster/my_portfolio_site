# frozen_string_literal: true

Experience.create!([
                     {
                       title: 'Software Engineer Intern',
                       date: 'January 2019 - Present',
                       location: 'CareerPlug - Austin, TX'
                     },
                     {
                       title: 'Families Learning Together Workshop Facilitator',
                       date: 'April 2017 - July 2018',
                       location: 'Dr. Sean Justice, Texas State University - San Marcos, TX'
                     },
                     {
                       title: 'Instructional Technologies Support Head Lab Assistant',
                       date: 'August 2015 - July 2018',
                       location: 'Learning Spaces division, Texas State University - San Marcos, TX'
                     }
                   ])

e = Experience.find_by(title: 'Software Engineer Intern')
e.job_descriptions.create!(description: "Programming like nobody's business")
e.job_descriptions.create!(description: 'Embodied core values Hiring Easier, Impactful Teaching, Exceptional Experiences, Quality Hires, and Baldridge Excellence')
e.job_descriptions.create!(description: 'Improve app performance upgrading architecture using AWS')

e = Experience.find_by(title: 'Families Learning Together Workshop Facilitator')
e.job_descriptions.create!(description: 'Built sustainable computational fluency in classrooms and communities')
e.job_descriptions.create!(description: 'Interacted with children ages 9-12 and their families to teach coding using MIT’s Scratch')
e.job_descriptions.create!(description: 'Facilitated over twenty FLT Scratch workshops at three locations in central Texas area')

e = Experience.find_by(title: 'Instructional Technologies Support Head Lab Assistant')
e.job_descriptions.create!(description: 'Supervised and trained lab assistants in seven computer labs across campus')
e.job_descriptions.create!(description: 'Inventoried supplies and equipment in computer labs and storage facilities to update FileMaker Pro platform')
e.job_descriptions.create!(description: 'Served as liaison between ITS help desk and patrons to assure functioning computers and printers')

Project.create!([
                  {
                    name: 'The Latinx Mental Health Podcast',
                    link: 'https://www.latinxmhpodcast.com/',
                    credit: 'Producer, Audio Engineer',
                    description: 'The Latinx Mental Health Podcast is where we talk to therapists, researchers, artists, activists, and students about their experiences in the intersections of mental health and Latinx identity. In each interview we aim to connect through our voices, our struggles, and our triumphs as we sample a different herbal tea just like abuela used to make.'
                  },
                  {
                    name: 'Enlaces Latinos',
                    link: 'https://www.facebook.com/Enlaces-Latinos-155778007772062/',
                    credit: 'Bass Guitarist',
                    description: 'I perform with the Hernandez family band with my electric bass guitar. We play music from throughout Latin America.'
                  }
                ])
