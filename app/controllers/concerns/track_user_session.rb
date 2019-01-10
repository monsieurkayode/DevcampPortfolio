module TrackUserSession
  extend ActiveSupport::Concern

  included do
    after_action :set_user_session, if: :devise_sign_up? && :create_or_update?
  end

  def devise_sign_up?
    params[:controller] == 'devise/registrations'
  end

  def create_or_update?
    %w[create update].include?(params[:action])
  end

  def set_user_session
    user_session[:current_user] = current_user
  end
end
