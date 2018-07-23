class SongsController < ApplicationController

    def index
        if params.has_key?(:genre_id)
            @songs = Song.where(genre_id: params[:genre_id])
            @genre = Genre.find(params[:genre_id])
        else
            @songs = Song.all.order("id ASC")
        end
    end

    def show
        @song = Song.find(params[:id])
        @genre = Genre.find(@song.genre_id).name
    end


end