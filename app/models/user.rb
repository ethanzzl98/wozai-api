class User < ApplicationRecord
  has_many :checkins, dependent: :destroy
end
