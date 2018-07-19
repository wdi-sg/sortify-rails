# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clear the table before we seed
Song.destroy_all
Genre.destroy_all

json = ActiveSupport::JSON.decode(File.read('db/seeds.json'))

json['genre'].each do |item|
    new_genre = Genre.new
    new_genre.name = item['name']
    new_genre.description = "The #{item['name']} genre"
    new_genre.save
end

# json['song'].each do |item|
#     new_song = Song.new
#     new_song.name = item['name']
#     new_song.genre_id = Genre.find_by(name: item['genre']).id
#     new_song.save
# end