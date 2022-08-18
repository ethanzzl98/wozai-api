class Category < ApplicationRecord
  has_many :venue_categories
  has_many :venues, through: :venue_categories
end
