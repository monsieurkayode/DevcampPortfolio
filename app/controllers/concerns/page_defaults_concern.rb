module PageDefaultsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    page_subtitle = pages_controller? ? params[:action].titleize : params[:controller].split('/').last.titleize
    @page_title = "Devcamp Portfolio | #{page_subtitle}"
    @seo_keywords = 'Devcamp Portfolio'
    @asset_filename = asset_filename_from_controller
  end

  def asset_filename_from_controller
    pages_controller? ? 'application' : params[:controller]
  end

  def pages_controller?
    params[:controller] == 'pages'
  end
end
