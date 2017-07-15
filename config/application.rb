require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TurbolinksApp
  class Application < Rails::Application
    # config/environments/* settings take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Enable UUID primary keys when generating database migrations.
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end
  end
end
