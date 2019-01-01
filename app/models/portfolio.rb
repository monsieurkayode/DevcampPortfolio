class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, length: { minimum: 3, maximum: 100 }
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body
  default_scope { friendly }
end
