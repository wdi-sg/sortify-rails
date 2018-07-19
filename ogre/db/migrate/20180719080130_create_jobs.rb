class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :img
      t.string :lvl

      t.timestamps
    end
  end
end
