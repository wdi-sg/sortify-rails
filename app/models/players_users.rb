class PlayersUsers < ApplicationRecord
  belongs_to :player
  belongs_to :user
end
