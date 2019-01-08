class ApplicationController < ActionController::Base
  include NotFound
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
