class GenresController < ApplicationController

    def new
      @songs = Song.all
    end
  
    def create
      @genre = Genre.new(genre_params)
  
      @genre.save
      redirect_to @genre
    end
  
    def show
      # deal with the case that we are trying to get a ranger for a park that doesn't exist
  
      @genre = Genre.find(params[:id])
  
      # if params[:song_id].to_i != @genre.song.id
      #   # do something
      # end
    end
  
  private
  
    def genre_params
      params.require(:genre).permit(:genre, :song_id, :song_ids => [])
    end
  end