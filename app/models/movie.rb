class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :title }
  validates :overview, presence: true
  has_many :bookmarks
end
