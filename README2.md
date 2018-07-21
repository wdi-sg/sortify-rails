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






