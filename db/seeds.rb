# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Player.all != []
	Player.destroy_all
end

players = [
	["Stephen Curry", 1988, 23.1, 4.4, 6.8, 0.2],
	["Giannis Antetokounmpo", 1994, 17.2, 7.5, 3.8, 1.3],
	["Carmelo Anthony", 1984, 24.1, 6.5, 3.0, 0.5],
	["Lonzo Ball", 1997, 10.2, 6.9, 7.2, 0.8],
	["Devin Booker", 1996, 19.8, 3.3, 3.5, 0.3],
	["Jaylen Brown", 1996, 10.4, 3.8, 1.2, 0.3],
	["Jimmy Butler", 1989, 16.4, 4.9, 3.4, 0.4],
	["DeMarcus Cousins", 1990, 21.5, 11.0, 3.2, 1.2],
	["LaMarcus Aldridge", 1985, 19.4, 8.3, 1.9, 1.1],
	["Anthony Davis", 1993, 23.4, 10.3, 1.9, 2.4]
]

players.each do |name, b_year, ppg, rpg, apg, bpg|
	Player.create(name: name, b_year: b_year, ppg: ppg, rpg: rpg, apg: apg, bpg: bpg)
end
