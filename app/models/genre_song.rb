class GenreSong < ApplicationRecord
  belongs_to :genre, :song
end
