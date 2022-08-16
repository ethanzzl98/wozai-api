class Category < ApplicationRecord
  has_many :venues, through: :venue_categories
end
