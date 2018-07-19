class Genre < ApplicationRecord
    has_and_belongs_to_many :songs
    validates :name, presence: true, length: { minimum: 2 }
end
