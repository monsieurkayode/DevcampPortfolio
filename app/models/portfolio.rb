class Portfolio < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates_presence_of :subtitle
  validates_presence_of :thumb_image
  validates_presence_of :main_image
  validates_presence_of :body
end
