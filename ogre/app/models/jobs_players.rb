class JobsPlayers < ApplicationRecord
  belongs_to :job
  belongs_to :player
end
