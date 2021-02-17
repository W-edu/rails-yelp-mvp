class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  cuisines = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: cuisines, message: "%{value} is not a valid category" }
end
