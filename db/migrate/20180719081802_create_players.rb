class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :b_year
      t.float :ppg
      t.float :rpg
      t.float :apg
      t.float :bpg
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
