# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
song_list = [
    "Finesse" ,
    "All The Stars" ,
    "Pray For Me" ,
    "Bad At Love" 
    ]

song_list.each do |name|
    Song.create( name: name )
end

genre_list = [
    [ "Funk", "Funk is a music genre that originated in African American communities in the mid-1960s" ],
    [ "Rap", "A style of popular music, developed by disc jockeys and urban blacks in the late 1970s" ],
    [ "Hip-hop", "Also called hip-hop or rap music, is a music genre developed in the United States by inner-city African Americans in the 1970s" ],
    [ "Indie", "Independent music (often referred to as indie music or indie) is music produced independently from commercial record labels or their subsidiaries" ]
]

genre_list.each do |name, description|
    Genre.create( name: name, description: description )
end