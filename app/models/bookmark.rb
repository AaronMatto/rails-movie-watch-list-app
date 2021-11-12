class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie, uniqueness: { scope: :list,
                                  message: 'cannot appear in same list more than once' }
end
