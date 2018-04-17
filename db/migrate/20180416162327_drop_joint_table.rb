class DropJointTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :genres_songs
  end
end
