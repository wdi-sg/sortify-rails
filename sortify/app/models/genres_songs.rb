class GenresSongs < ApplicationRecord
  belongs_to :genre
  belongs_to :song
  validates :name, presence: true, length: { minimum: 2 }
end

