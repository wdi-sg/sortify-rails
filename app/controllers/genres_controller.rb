class GenresController < ApplicationController

    def index
        @genres = Genre.all
        
    end

    def new 
        @songs = Song.all
    
    end

    def create
        @genre = Genre.new(genre_params)
        
        @genre.save
        redirect_to genres_path
    
    end

    def show
        @genre =Genre.find(params[:id])
    end
    
    def edit
    
    end

    def put
    
    end

    def genre_params
        params.require(:genre).permit(:name, :description, :song_ids => [])
    end

end
