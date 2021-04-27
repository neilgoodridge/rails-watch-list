class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  has_one :comment
  validates :comment, presence: true
  validates :list, :movie, uniqueness: true
end
