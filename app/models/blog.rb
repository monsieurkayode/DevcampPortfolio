class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  default_scope { friendly }
end
