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
    config.generators do |generators|
      generators.test_framework :rspec
    end

    # This is a testing project, so disable this security configuration.
    # Read more:
    #   - https://medium.com/rubyinside/whats-coming-to-rails-6-0-8ec79eea66da#831a
    #   - https://danielmiessler.com/blog/dns-rebinding-explained/
    config.hosts.clear
  end
end
