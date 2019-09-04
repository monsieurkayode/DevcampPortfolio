class Technology < ApplicationRecord
  belongs_to :portfolio
  belongs_to :skill, optional: true
end
