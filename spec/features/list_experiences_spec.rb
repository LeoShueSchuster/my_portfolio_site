require "rails_helper"

describe "Viewing Experience" do
    it "shows the experiences and job descriptions" do
        experience1 = Experience.create(title: "Software Engineer Intern",
            date: "January 2019 - Present",
            location: "CareerPlug - Austin, TX",
        )

        jd1 = experience1.job_descriptions.create(description: "Collaborate with software development and product team including participation in stand-ups, code reviews, and product engineering meetings")
        jd2 = experience1.job_descriptions.create(description: "Design and develop SaaS applications using Ruby on Rails, PostgreSQL, and Git")
        jd3 = experience1.job_descriptions.create(description: "Implement SaaS applications with AWS infrastructure including Elastic Beanstalk, Docker on Elastic Beanstalk, RDS database, S3 storage, and AWS command line utilities")
        jd4 = experience1.job_descriptions.create(description: "Build and maintain Jenkins CD/CI environment for SaaS applications")
        jd5 = experience1.job_descriptions.create(description: "Create test cases and implement unit and integration tests for SaaS applications")
        
        experience2 = Experience.create(title: "Families Learning Together Workshop Facilitator",
            date: "April 2017 - July 2018",
            location: "Dr. Sean Justice, Texas State University - San Marcos, TX",
        )

        jd6 = experience2.job_descriptions.create(description: "Build sustainable computational fluency in classrooms and communities")
        jd7 = experience2.job_descriptions.create(description: "Interact with children ages 9-12 and their families to teach coding using MIT’s Scratch")
        jd8 = experience2.job_descriptions.create(description: "Facilitate over twenty FLT Scratch workshops at three locations in central Texas area")

        experience3 = Experience.create(title: "Instructional Technologies Support Head Lab Assistant",
            date: "August 2015 - July 2018",
            location: "Learning Spaces division, Texas State University - San Marcos, TX",
        )

        jd9 = experience3.job_descriptions.create(description: "Supervise and train lab assistants in seven computer labs across campus")
        jd10 = experience3.job_descriptions.create(description: "Inventory supplies and equipment in computer labs and storage facilities to update FileMaker Pro inventory platform")
        jd11 = experience3.job_descriptions.create(description: "Serve as liaison between ITS help desk and patrons to assure functioning computers and printers")
        
        visit "home"
        expect(page).to have_text("Experience")
        
        expect(page).to have_text(experience1.title)
        expect(page).to have_text(experience1.date)
        expect(page).to have_text(experience1.location)
        expect(page).to have_text(jd1.description)
        expect(page).to have_text(jd2.description)
        expect(page).to have_text(jd3.description)
        expect(page).to have_text(jd4.description)
        expect(page).to have_text(jd5.description)

        expect(page).to have_text(experience2.title)
        expect(page).to have_text(experience2.date)
        expect(page).to have_text(experience2.location)
        expect(page).to have_text(jd6.description)
        expect(page).to have_text(jd7.description)
        expect(page).to have_text(jd8.description)

        expect(page).to have_text(experience3.title)
        expect(page).to have_text(experience3.date)
        expect(page).to have_text(experience3.location)
        expect(page).to have_text(jd9.description)
        expect(page).to have_text(jd10.description)
        expect(page).to have_text(jd11.description)
    end
end