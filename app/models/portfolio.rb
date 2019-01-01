class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, length: { minimum: 3, maximum: 100 }
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
  scope :angular, -> { where(subtitle: 'Angular') }
  default_scope { friendly }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'https://via.placeholder.com/600x400'
    self.thumb_image ||= 'https://via.placeholder.com/350x200'
  end
end
