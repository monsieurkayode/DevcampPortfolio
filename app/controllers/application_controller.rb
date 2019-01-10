class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include ApplicationHelper
  include NotFound
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include TrackUserSession
  include PageDefaultsConcern
end
