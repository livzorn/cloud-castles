class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :castle
  validates :check_in_date, presence: true
  validates :check_out_date, presence: true
end
