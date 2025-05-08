class Movie < ApplicationRecord
  has_many :bookmarks

  before_destroy :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
