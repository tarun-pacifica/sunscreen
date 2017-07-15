source "https://rubygems.org"
ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem rails, github: "rails/rails"
gem "rails", "~> 5.0.1"
# Use PostgreSQL as the database for Active Record
gem "pg", "~> 0.18"
# Use Puma as the app server https://github.com/puma/puma
gem "puma", "~> 3.6"

## ASSET MANAGEMENT
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Use jquery as the JavaScript library
gem "jquery-rails", "~> 4.2.2"
# Speed up web app navigation https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# HTML5 Offline support https://github.com/wycats/rack-offline
gem "rack-offline", "~> 0.6.4"

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'

group :development, :test do
  # Load ENV variables from .env file https://github.com/bkeepers/dotenv
  gem "dotenv-rails", "~> 2.1.1"
  # Call "byebug" in the code to stop execution and get a debugger console
  gem "byebug"
  # Test the code https://github.com/rspec/rspec-rails
  gem "rspec-rails", ">= 3.5"
  # RSpec mocking and stubbing
  gem "rspec-mocks", "~> 3.5"
  # Replace fixtures https://github.com/thoughtbot/factory_girl_rails
  gem "factory_girl_rails", "~> 4.8"
  # User interaction specs
  gem "capybara", "~> 2.11"
  # Assess the app security https://github.com/presidentbeef/brakeman
  gem "brakeman", "~> 3.4.1"
  # NOTE: rainbow is a dependency of rubycritic and rubycop
  #       the version has deliberately been restricted due to
  #       the TravisCI build error:
  #         "can't modify frozen String"
  # TODO: Periodically check to see if an update of "> 2.2.1" has been released,
  #       then remove this entry and try the build again
  #       Read more: https://github.com/sickill/rainbow/issues/40
  gem "rainbow", "< 2.2.0"
  # Check code quality https://github.com/whitesmith/rubycritic
  gem "rubycritic", "~> 3.1.3"
  # Find unused/unreachable route endpoints
  # Read more: https://github.com/amatsuda/traceroute
  gem "traceroute", "~> 0.5"
  # Check code style https://github.com/bbatsov/rubocop
  gem "rubocop", "~> 0.46"
  # Check rails conventions https://github.com/railsbp/rails_best_practices
  gem "rails_best_practices", "~> 1.17"
  # Verify test coverage https://github.com/colszowka/simplecov
  gem "simplecov", "~> 0.12"
  # Find DB query improvements https://github.com/flyerhzm/bullet
  gem "bullet", "~> 5.5"
  # Find gem vulnerabilities https://github.com/rubysec/bundler-audit
  gem "bundler-audit", "~> 0.5"
    gem 'faker'
end
gem 'mechanize'

group :development do
  # Access an IRB console on exception pages or add <%= console %> in the code
  gem "web-console", ">= 3.3"
end
group :development, :test do
  # Spring speeds up development by running application in the background
  # Read more: https://github.com/rails/spring
  gem "spring", "~> 2.0"
  # Notifications for files change https://github.com/guard/listen
  gem "listen", "~> 3.0.5"
  # Watch for filesystem changes instead of polling the filesystem
  # Read more: https://github.com/jonleighton/spring-watcher-listen
  gem "spring-watcher-listen", "~> 2.0"
  # Letter Opener for local email
  gem "letter_opener", "~> 1.4"
  # rspec simplified assertions https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  # Replace transactional fixtures
  gem "database_cleaner", "~> 1.5.3"

end