# Track all files and their test coverage, view report: app/coverage/index.html
require "simplecov"
SimpleCov.start "rails" do
  add_filter "config/initializers"
  add_filter "app/mailers/application_mailer.rb"
  add_filter "app/channels/application_cable/channel.rb"
  add_filter "app/channels/application_cable/connection.rb"
  add_filter "app/jobs/application_job.rb"
end
# This file is copied to spec/ when you run "rails generate rspec:install"
ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)

# Prevent database truncation if the environment is production
abort("Rails is running in production mode!") if Rails.env.production?
require "spec_helper"
require "rspec/rails"
# Capybara suppports feature specs
require "capybara/rspec"
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Expose the build and create factory_girl methods for use in RSpec examples
  config.include FactoryGirl::Syntax::Methods
  config.include AcceptanceMacros, type: :feature
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::ControllerHelpers, type: :view
  config.include Devise::Test::IntegrationHelpers, type: :feature
  config.include Rails.application.routes.url_helpers


  # DatabaseCleaner is being used instead of using transactional fixtures
  config.use_transactional_fixtures = false
  config.use_instantiated_fixtures = false

  config.before(type: :feature) do
    set_user_agent(ENV["TURBOLINKS_IOS_APP_USER_AGENT"])
  end

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
end
