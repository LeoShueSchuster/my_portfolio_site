# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use ActiveModel has_secure_password, which let's me use password_digest
gem 'bcrypt', '~> 3.1.7'
# Use for Contact Leo page, tied to my Gmail
gem 'mail_form', '~> 1.5', '>= 1.5.1'
# Use for web design
gem 'bootstrap', '~> 4.3.1'
# Use jquery
gem 'jquery-rails'
# Keeps track of positioning of items
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
# This item on the page is sortable and makes AJAX requests
gem 'acts_as_list'
# For easy renaming of Controllers
gem 'rails_refactor'
# PostgreSQL DB
gem 'pg'
# Static security analyzer
gem 'brakeman'
# Outputs HTML that shows ways to improve app performance and readability
gem 'rails_best_practices'
# To clean up code using RuboCop
gem 'rubocop-performance'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Use sqlite3 as the database for Active Record
  gem 'rspec-rails', '3.8.0'
  gem 'sqlite3', '~> 1.3.13'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.7.1'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov', require: false
end
