Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    # :rails option implies the use of:
    #   :active_record
    #   :active_model
    #   :action_controller
    with.library :rails
  end
end
