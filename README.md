# "Sortify" - Rails Associations (with Postgres SQL)

For this exercise, we'll create a "Sortify" Rails app which stores songs.

## Deliverables
### Part 1
* Create a model for `genre` with name and description

* Create a model for `songs` with name and genre

* The associations are as follows:
  - Genre has_many Songs
  - Song belongs_to a Genre


* Seed your database with your own sample data of songs and genres from a seed file

* Implement controllers and return views for:
  - show all genres `/genres/`
  - show all songs of one genre `/genres/:id/songs/`
  - show a particular song `/genres/:id/songs/:id/`


### Part 2
* Sometimes songs can be classified into more than one genre, therefore we need to modify our app.

* To reset your database and rollback migrations:
```
rails db:reset
```
* Change your song model to just have a name

* Create a join table GenresSongs

* The revised associations are as follows:
  - Genre has_and_belongs_to_many Songs
  - Song has_and_belongs_to_many Genres

* Seed your database  

* Use the command line to add a song to a genre

* Implement a view such that when showing a specific song, display the song name and the list of genres associated with it.


## Further
* Implement full CRUD functionality for songs and genres



### Reference material:
* https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-1-M/readme.html

* https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-M-M/readme.html
