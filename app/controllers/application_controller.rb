class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include NotFound
  include DeviseWhitelist
  include SetSource
end
