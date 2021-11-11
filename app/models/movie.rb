class Movie < ApplicationRecord
  validates :title, :overview, :poster_url, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :title, uniqueness: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
