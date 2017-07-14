# Configure Bullet monitor every test for N+1 DB queries
# Check log/bullet.log for reports
# Read more: https://github.com/flyerhzm/bullet
RSpec.configure do |config|
  if Bullet.enable?
    puts "Check log/bullet.log for N+1 queries detected in the test suite"

    config.before(:each) do
      Bullet.start_request
    end

    config.after(:each) do
      Bullet.perform_out_of_channel_notifications if Bullet.notification?
      Bullet.end_request
    end
  end
end
