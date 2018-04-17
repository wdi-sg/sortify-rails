class GenresSong < ApplicationRecord
  belongs_to :genre
  belongs_to :song
end
