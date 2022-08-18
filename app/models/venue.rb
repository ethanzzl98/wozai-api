class Venue < ApplicationRecord
  has_many :photos
  has_many :venue_categories
  has_many :categories, through: :venue_categories
  has_many :checkins, dependent: :destroy
  has_many :users, through: :checkins
end
