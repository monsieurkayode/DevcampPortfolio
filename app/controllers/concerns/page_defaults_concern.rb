module PageDefaultsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    page_subtitle = root_path? ? 'Home' : params[:controller].split('/').last.titleize
    @page_title = "Devcamp Portfolio | #{page_subtitle}"
    @seo_keywords = 'Devcamp Portfolio'
  end

  def root_path?
    request.fullpath == root_path
  end
end