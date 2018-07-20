class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :title
      t.text :singer
      t.text :genre

      t.timestamps
    end
  end
end
