module AcceptanceMacros
  def log_in_and_visit(path, user: nil)
    log_in(user: user)
    visit path
  end

  def log_in(user: nil)
    user ||= create :user

    visit new_user_session_path

    fill_in :user_email,    with: user.email
    fill_in :user_password, with: attributes_for(:user)[:password]
    submit_form

    user
  end

  def submit_form
    first("input[name='commit']").click
  end

  def set_user_agent(type)
    return if type.nil?

    driver = Capybara.current_session.driver

    if driver.respond_to?(:header)
      driver.header("User-Agent", type)
    else
      Capybara.current_driver = type
    end
  end
end
