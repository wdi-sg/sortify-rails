class SongsController < ApplicationController

    def new
      @genres = Genre.all
    end
  
    def create
      @song = Song.new(song_params)
  
      @song.save
      redirect_to @song
      # render plain: params[:song].inspect
    end
  
    def show
      # deal with the case that we are trying to get a ranger for a park that doesn't exist
  
      @song = Song.find(params[:id])
  
      # if params[:genre_id].to_i != @song.genre.id
      #   # do something
      # end
    end
  
  private
  
    def song_params
      params.require(:song).permit(:title, :singer, :genre, :genre_id, :genre_ids => [])
    end
  end