class List < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :name }
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
