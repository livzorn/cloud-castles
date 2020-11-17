class User < ApplicationRecord
  has_many :bookings
  has_many :castles
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
