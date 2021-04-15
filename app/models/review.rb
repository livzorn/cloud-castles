class Review < ApplicationRecord
  belongs_to :user
  belongs_to :castle
  validates :rating, presence: true
  validates :rating, inclusion: { in: 1..5,
                                  message: "must be between 1 and 5" }
  validates :content, presence: true
end

# { :in => %w(SA LA RB CB SB Date),
#   :message => "The value: %{value} is not included in Field Type." }
