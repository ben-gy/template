require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Redial
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Turn off asset generators.
    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.test_framework = nil

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Background jobs.
    config.active_job.queue_adapter = :sidekiq

    # Mask IP addresses in logs.
    config.middleware.insert_after ActionDispatch::RemoteIp, IpAnonymizer::MaskIp

    # Host configuration.
    Rails.application.routes.default_url_options[:host] = ENV['DOMAIN_NAME']

    # Cookie config.
    config.session_store :cache_store, key: '_application_session', expire_after: 28.days, domain: :all
  end
end
