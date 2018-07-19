class CreateJoinTableCharactersJobs < ActiveRecord::Migration[5.2]
  def change
    create_join_table :characters, :jobs do |t|
      # t.index [:character_id, :job_id]
      # t.index [:job_id, :character_id]
    end
  end
end
