class SongsController < ApplicationController
    def index
        @songs = Song.all

    end

    def new 
        @genres = Genre.all
    
    end

    def create
        @song = Song.new(song_params)
        
        @song.save
        redirect_to songs_path
    
    end

    def show
        @song =Song.find(params[:id])
    
    end
    
    def edit
    
    end

    def put
    
    end

    def song_params
        params.require(:song).permit(:name, :genre_ids => [])
    end
end