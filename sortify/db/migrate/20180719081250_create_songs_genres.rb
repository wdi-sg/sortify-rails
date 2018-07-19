class CreateSongsGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :songs_genres do |t|
      t.references :song, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
