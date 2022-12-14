class Venue < ApplicationRecord
  # has_many :photos
  has_one_attached :photo
  has_many :venue_categories, dependent: :destroy
  has_many :categories, through: :venue_categories
  has_many :checkins, dependent: :destroy
  has_many :users, through: :checkins
end
