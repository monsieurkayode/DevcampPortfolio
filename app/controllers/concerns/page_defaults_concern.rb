module PageDefaultsConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    page_subtitle = if pages_controller?
                      params[:action].titleize
                    else
                      params[:controller].split('/').last.titleize
                    end

    @page_title = "Devcamp Portfolio | #{page_subtitle}"
    @seo_keywords = 'Devcamp Portfolio'
  end

  def pages_controller?
    params[:controller] == 'pages'
  end
end
