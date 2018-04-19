class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }, format: { with: /\w+/,
    message: "only allows letters and numbers" }

  belongs_to :user

  has_and_belongs_to_many :genres
end
