class User < ApplicationRecord
  has_many :checkins
  has_many :venues
end
