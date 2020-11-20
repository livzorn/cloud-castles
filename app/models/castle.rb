class Castle < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  pg_search_scope :search_by_description_and_location,
    against: [ :description, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
