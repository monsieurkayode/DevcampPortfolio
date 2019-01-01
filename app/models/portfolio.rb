class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, length: { minimum: 3, maximum: 100 }
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
  scope :angular, -> { where(subtitle: 'Angular') }
  default_scope { friendly }
end
