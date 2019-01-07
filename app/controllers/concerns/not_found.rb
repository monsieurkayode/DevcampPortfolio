module NotFound
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
  end

  def not_found
    render file: 'public/404.html', layout: false, status: :not_found
  end
end