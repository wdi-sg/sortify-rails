class Song < ApplicationRecord
  belongs_to :genre
  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
end
