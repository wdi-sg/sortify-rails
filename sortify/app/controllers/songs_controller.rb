class SongsController < ApplicationController
    def index
        if !params[:genre_id].nil?
            @genre = Genre.find(params[:genre_id])
            @songs = Song.where(id: @genre.song_ids)
        else
            @songs = Song.all
        end
    end

    def show
        @song = Song.find(params[:id])
        @genres = Genre.where(id: @song.genre_ids)
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def song_params
    end
end
