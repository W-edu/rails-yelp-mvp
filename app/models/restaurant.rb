class Restaurant < ApplicationRecord
  cuisines = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, inclusion: { in: cuisines, message: "%{value} is not a valid category" }
  validates :rating, :inclusion => 0..5
end
