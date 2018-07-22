class CreatePlayersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :players_users do |t|
      t.references :player, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
