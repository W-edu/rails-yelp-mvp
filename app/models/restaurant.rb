class Restaurant < ApplicationRecord
  cuisines = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: cuisines, message: "%{value} is not a valid category" }

  has_many :reviews, dependent: :destroy
end
