class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # All of our DeviseWhitelist code was moved our new Devise Module
  include DeviseWhitelist

end
