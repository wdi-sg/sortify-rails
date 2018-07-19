class SongsController < ApplicationController

    def new 
      @genres = Genre.all
    end
  
    def create
      @song = Song.new(song_params)
  
      @song.save
      redirect_to @park
    end
  
  
  private
    def song_params
      params.require(:song).permit(:name, :artist, :genre_ids => [])
    end
  
  end