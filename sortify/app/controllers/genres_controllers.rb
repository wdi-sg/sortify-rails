class GenresController < ApplicationController
  

    def new
      @songs = Song.all
    end
  
    def create
      @genre = Genre.new(genre_params)
  
      @genre.save
      render json: @genre
    end
  
    def show
      @genre = Genre.find(params[:id])
    end
  
  private
    def genre_params
      params.require(:genre).permit(:name, :park_ids => [])
    end
  end