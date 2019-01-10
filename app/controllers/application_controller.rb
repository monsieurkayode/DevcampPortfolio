class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include NotFound
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include TrackUserSession

  before_action :page_defaults

  def page_defaults
    @page_content = 'Devcamp Portfolio | My Portfolio Website'
    @set_keywords = 'Devcamp Portfolio'
  end
end
