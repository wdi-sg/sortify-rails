# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Song.destroy_all

# Create and save new Genre
romance = Genre.create(name: "Romance", description: "Love Songs")
pop = Genre.create(name: "Pop", description: "Hit Songs")

# Create and save new songs
Song.create([
    {name: "Love Song"},
    {name: "My Love"},
    {name: "Bang Bang Bang"},
    {name: "Gangnam Style"}
  ])
