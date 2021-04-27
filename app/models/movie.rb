class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { minimum: 6 }
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
