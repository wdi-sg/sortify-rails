# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 pop = Genre.create(:name => "Pop", :description => "Strong beat and simple tunes")
 jazz = Genre.create(:name => "Jazz", :description => "Improvisation, strong")

 sitnexttome = Songs.create(:name => "Sit Next To me", :genre_id => 1)
 taketheatrain = Songs.create(:name => "Take the A Tain", :genre_id => 2)