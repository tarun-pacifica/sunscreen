class ApplicationController < ActionController::Base
  include TurbolinksHelpers
  protect_from_forgery with: :exception

  before_action do
    request.variant = :app if turbolinks_app?
  end

end