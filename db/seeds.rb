# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Song.destroy_all

rap = Genre.create(name: 'rap', description: 'inspirational')
rap.songs.create([
	{name: '8mile'},
	{name: 'doctor'},
	{name: 'bully'},
	{name: 'wassup'}
])

hiphop = Genre.create(name: 'hiphop', description: 'mood uplifter')
hiphop.songs.create([
	{name: 'sorrynotsorry'},
	{name: 'myname'},
	{name: 'play'},
	{name: 'hahafunny'}
])

melody = Genre.create(name: 'melody', description: 'peaceful')
melody.songs.create([
	{name: 'getpeace'},
	{name: 'breathe'},
	{name: 'meditate'},
	{name: 'livelife'}
])



