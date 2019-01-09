# TODO
# Debug to find out why current_user is nil
module TrackUserSession
  extend ActiveSupport::Concern

  included do
    before_action :set_user_session, if: :devise_sign_up?
  end

  def devise_sign_up?
    params[:controller] == 'devise/registrations' && (
      %w[create update].include?(params[:action])
    )
  end

  def set_user_session
    user_session[:current_user] ||= current_user
  end
end
