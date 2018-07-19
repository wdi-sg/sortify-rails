# Sortify - Rails Associations

For this exercise, we'll create a "Sortify" Rails app which stores songs and genres.

## Deliverables
### Part 1
* Create a model for `genre` with name and description

* Create a model for `songs` with name and genre

* The associations are as follows:
  - Genre has_many Songs
  - Song belongs_to a Genre


* Seed your database with your own sample data of songs and genres from a seed file

* Implement controllers and views for:
  - show all genres `/genres/`
  - show all songs from one genre `/genres/:id/songs/`


### Part 2
* Sometimes songs can be classified into more than one genre, therefore we need to modify our app.

* Change your song model to just have a name

* Create a join table GenresSongs

* The revised associations are as follows:
  - Genre has_and_belongs_to_many Songs
  - Song has_and_belongs_to_many Genres

* Seed your database  

* Use the command line to add a song to a couple of genres

* Implement a view such that when showing a specific song, display the song name and the list of genres associated with it.


## Further
* Implement full CRUD functionality for songs and genres.
* Implement nested routes for this app.



### Reference material:
* https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-1-M/readme.html

* https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-M-M/readme.html

## Not tired of pokemon yet?
Implement a pokedex app after this json file: [https://github.com/wdi-sg/pokedex-express/blob/master/pokedex.json](https://github.com/wdi-sg/pokedex-express/blob/master/pokedex.json)

```
{
    "id": 1,
    "num": "001",
    "name": "Bulbasaur",
    "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
    "type": [
      "Grass",
      "Poison"
    ],
    "height": "0.71 m",
    "weight": "6.9 kg",
    "candy": "Bulbasaur Candy",
    "candy_count": 25,
    "egg": "2 km",
    "spawn_chance": 0.69,
    "avg_spawns": 69,
    "spawn_time": "20:00",
    "multipliers": [1.58],
    "weaknesses": [
      "Fire",
      "Ice",
      "Flying",
      "Psychic"
    ],
    "next_evolution": [{
      "num": "002",
      "name": "Ivysaur"
    }, {
      "num": "003",
      "name": "Venusaur"
    }]
  }
```

Start with creating a join table for "types". Pokemon has many types, types has many pokemon.

You could also implement one of the other many-to-many relationships in the JSON file- (e.g. weaknesses, next evolution, etc.)

## Further
* Implement full CRUD functionality for songs and genres.
* Implement nested routes for this app.


