class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job
      t.string :type
      t.integer :level

      t.timestamps
    end
  end
end
