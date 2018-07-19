class RemoveGenreFromSongs < ActiveRecord::Migration[5.2]
  def change
    remove_reference :songs, :genre, foreign_key: true
  end
end
