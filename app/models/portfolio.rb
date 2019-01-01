class Portfolio < ApplicationRecord
  has_many :technologies

  include Placeholder
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, length: { minimum: 3, maximum: 100 }
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
  scope :angular, -> { where(subtitle: 'Angular') }
  default_scope { friendly }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(width: 600, height: 400)
    self.thumb_image ||= Placeholder.image_generator(width: 350, height: 200)
  end
end
