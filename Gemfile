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
gem 'sass-rails'
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

# THIS IS HOW FAR I HAVE MADE IT
# * also, install Jquery
# * copy across initaliser an other /config code
# * copy across the JS packs

# User authentication
gem 'devise'
# Faster markup language
gem 'slim-rails'
# User tracking
gem 'ahoy_matey'
# Hash the IDs
gem 'hashid-rails'
# Flexbox grid
gem 'flexbox_rb', github: 'ben-gy/flexbox_rb'
# Authorisation
gem 'pundit'
# Transactional emails
gem 'postmark-rails'
# Normalise browser style rendering
gem 'normalize-scss'
# Add vendor prefixes to CSS
gem 'autoprefixer-rails'
# Role management
gem 'rolify'
# centralised text
gem 'config'
# Version tracking
gem 'paper_trail'
# Payments
gem 'stripe'
# Slack notifications
gem 'slack-notify', github: 'ben-gy/slack-notify'
# Amazon s3 api
gem 'aws-sdk-s3'
# Background jobs
gem 'sidekiq'
# Sitemap generator
gem 'sitemap_generator'
# Reverse geocode address
gem 'geocoder'
# Turn coordinates into timezone
gem 'timezone'
# Encrypt sensitive data
gem 'lockbox'
# Anonymise IP
gem 'ip_anonymizer'
# Keep PII out of logs
gem 'logstop'
# Markdown parser
gem 'redcarpet'
# Get country information
gem 'countries'
# Get currency information
gem 'money'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Zipping files
gem 'rubyzip'
# Intercom messenger
gem 'intercom-rails'
# Intercom API
gem 'intercom'
# inviting users
gem 'devise_invitable'
# Time difference helpers
gem 'time_difference'
# Time/date parsing
gem 'chronic'
# Transactional sms
gem 'twilio-ruby'
# Random word generator
gem 'spicy-proton'
# Catch bad migrations
gem 'strong_migrations'
# Preload counts (to avoid N+1 issues).
gem 'preload_counts'
# Search
gem 'ransack'

group :staging, :production do
  # Security
  gem 'sqreen'
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
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Time travelling
  gem 'timecop'
  # Code quality
  gem 'rubycritic', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
