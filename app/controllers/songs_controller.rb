class SongsController < ApplicationController
  def index
    @genre = Genre.find(params[:genre_id])
    @songs = @genre.songs
  end

  def show
    @song = Song.find(params[:id])
    @genres = @song.genres
  end

  def new
    @genres = Genre.all
  end

  def create
    new_song = Song.new
    new_song.name = params[:song][:name]
    params[:song][:genre_ids].each do |genre_id|
      if !genre_id.blank?
        genre = Genre.find(genre_id)
        new_song.genres << genre
      end
    end
    new_song.save
    redirect_to new_song
  end
end
