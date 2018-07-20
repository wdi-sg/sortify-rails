# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GenresSongs.destroy_all
Genre.destroy_all
Song.destroy_all

g1 = Genre.new(name: 'Rock')
g1.save
g2 = Genre.new(name: 'Bunny music')
g2.save
g3 = Genre.new(name: 'Booger trash')
g3.save

m1 = Song.new(name: 'Bunny rock hop')
m1.save
m2 = Song.new(name: 'Booger techno rave')
m2.save

g1m1 = GenresSongs.new
g1m1.song_id = m1.id
g1m1.genre_id = g2.id
g1m1.save