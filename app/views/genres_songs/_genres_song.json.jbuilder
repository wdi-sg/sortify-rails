json.extract! genres_song, :id, :genre_id, :song_id, :created_at, :updated_at
json.url genres_song_url(genres_song, format: :json)
