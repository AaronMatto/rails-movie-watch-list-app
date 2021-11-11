class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
