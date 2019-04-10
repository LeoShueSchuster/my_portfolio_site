# README

I created this app to get familiar with Ruby on Rails and to present an online resume for anyone interested.

Steps to get the application up and running:

* Ruby version:
    Ruby 2.6.0

* System dependencies:
    Bootstrap,
    See 'Gemfile'

* Configuration:
    In Terminal, 'bundle install'

* Database creation:
    In Terminal, 'db:migrate'

* Database initialization:
    In Terminal, 'db:seed'

* How to run the test suite:
    In Terminal, 'rspec'

* Services:
    "Contact Leo" page's contact form uses Heroku's plugin 'SendGrid'.

* Deployment instructions:
    To deploy locally: In Terminal, 'rails s',
    To deploy to production: I have a pipeline setup where I push the code to GitHub. Then it can be manually deployed to Heroku. https://leoshueschuster.herokuapp.com/
