source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6'
# Use pg as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Transpile app-like JavaScript
gem 'webpacker'
# Turbolinks makes navigating your web application faster
gem 'turbolinks'
# Simpler forms
gem 'simple_form'
# Front-end validation
gem 'client_side_validations'
# Front-end validation (for simple_form)
gem 'client_side_validations-simple_form'
# User authentication
gem 'devise'
# Faster markup language
gem 'slim-rails'
# User tracking
gem 'ahoy_matey'
# Hash the IDs
gem 'hashid-rails'
# Authorisation
gem 'pundit'
# Transactional emails
gem 'postmark-rails'
# Role management
gem 'rolify'
# centralised text
gem 'config'
# Version tracking
gem 'paper_trail'
# Background jobs
gem 'sidekiq'
# Encrypt sensitive data
gem 'lockbox'
# Anonymise IP
gem 'ip_anonymizer'
# Keep PII out of logs
gem 'logstop'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Time difference helpers
gem 'time_difference'
# Catch bad migrations
gem 'strong_migrations'
# Static pages
gem 'high_voltage'

# Charts
# gem 'chartkick'
# Preload counts (to avoid N+1 issues).
# gem 'preload_counts'
# Random word generator
# gem 'spicy-proton'
# Transactional sms
# gem 'twilio-ruby'
# Time/date parsing
# gem 'chronic'
# inviting users
# gem 'devise_invitable'
# Simple search
# gem 'ransack'
# Markdown parser
# gem 'redcarpet'
# Get country information
# gem 'countries'
# Get currency information
# gem 'money'
# Normalize phone numbers
#  gem 'phony_rails'
# Media queries
# gem 'browser'
# Search encrypted data (lockbox gem)
#  gem 'blind_index'
# Geocode/reverse-geocode address/coordinates
# gem 'geocoder'
# Turn coordiantes into timezones
# gem 'timezone'
# Local time
# gem 'local_time'
# Phone number parsing
# gem 'phonelib'
# Receive payments
# gem 'stripe'
# Store files in AWS S3
# gem 'aws-sdk-s3'
# Slack notifications
# gem 'slack-notify', github: 'ben-gy/slack-notify'
# Intercom messenger
# gem 'intercom-rails'
# Intercom API
# gem 'intercom'
# Zipping files
# gem 'rubyzip'
# Streaming zip files
# gem 'zipline'
# URL shortener
# gem 'shortener'
# HTTP requests
# gem 'faraday'

group :staging, :production do
  # Security
  # gem 'sqreen'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background
  gem 'spring'
  gem 'spring-watcher-listen'
  # Catch and show emails
  gem 'letter_opener'
  # HTML to Slim file conversion
  gem 'html2slim'
  # Environment variables
  gem 'figaro'
  # Time travelling
  gem 'timecop'
  # Code quality
  gem 'rubycritic', require: false
  # Sitemap generator
  gem 'sitemap_generator'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
