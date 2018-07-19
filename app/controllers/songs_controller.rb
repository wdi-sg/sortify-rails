class SongsController < ApplicationController
  def index
    @genre = Genre.find(params[:genre_id])
    @songs = @genre.songs
  end

  def show
    @song = Song.find(params[:id])
    @genres = @song.genres
  end
end
