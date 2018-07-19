class CreateJobsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs_players do |t|
      t.references :job, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
