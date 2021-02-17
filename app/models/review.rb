class Review < ApplicationRecord
  validates :rating, presence: true
  validates :rating, :inclusion => 0..5
  validates :content, presence: true

  belongs_to :restaurant
end
