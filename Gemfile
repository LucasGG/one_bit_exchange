# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 4.1'

# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
gem 'sprockets', '< 4'

# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# A simple HTTP and REST client for Ruby, inspired by the Sinatra's
# microframework style of specifying actions: get, put, post, delete.
# Read more: https://github.com/rest-client/rest-client
gem 'rest-client', '~> 2.1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console.
  gem 'byebug', '~> 11.1.1', platforms: %i[mri mingw x64_mingw]

  # rspec-rails brings the RSpec testing framework to Ruby on Rails as a drop-in
  # alternative to its default testing framework, Minitest.
  # Read more: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 4.0.0.beta4'

  # Library for stubbing and setting expectations on HTTP requests in Ruby.
  # Read more: https://github.com/bblimke/webmock
  gem 'webmock', '~> 3.8.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console'
  # anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the
  # background.
  # Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # A Ruby static code analyzer and formatter, based on the community Ruby
  # style guide.
  # Read more: https://github.com/rubocop-hq/rubocop
  gem 'rubocop', '~> 0.79', require: false
  gem 'rubocop-performance', '~> 1.5', require: false
  gem 'rubocop-rails', '~> 2.4', require: false
  gem 'rubocop-rspec', '~> 1.37', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver.
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver', '~> 3.142.7'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
