# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OneBitExchange
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Generators...
    config.generators do |generators|
      generators.test_framework :rspec
      generators.orm :active_record
    end

    # This is a testing project...
    config.hosts.clear
  end
end
