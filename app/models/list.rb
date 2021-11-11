class List < ApplicationRecord
  validates :name, presence: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true
end
